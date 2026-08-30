param([Parameter(Mandatory)][string]$Path)

try {
    $lines = Get-Content $Path -ErrorAction Stop
} catch {
    Write-Output "ERROR cannot read summary: $Path"
    exit 2
}

$maxima = @{ Structure = 25; Craft = 25; Originality = 15; Resonance = 15; Economy = 20 }
$found = @{}
$scores = @{}
$errors = [System.Collections.Generic.List[string]]::new()
foreach ($line in $lines) {
    if ($line -match '^\|\s*(Structure|Craft|Originality|Resonance|Economy)\s*\|\s*\*\*([0-9]+(?:\.[0-9]+)?)\*\*\s*\|\s*([0-9]+)\s*\|') {
        $dimension = $Matches[1]
        $score = [double]$Matches[2]
        $maximum = [int]$Matches[3]
        $found[$dimension] = $true
        $scores[$dimension] = $score
        if ($maximum -ne $maxima[$dimension] -or $score -lt 0 -or $score -gt $maximum) {
            $errors.Add("invalid weighted dimension: $dimension")
        }
    } elseif ($line -match '^\|\s*(Structure|Craft|Originality|Resonance|Economy)\s*/\s*([0-9]+)\s*\|.*\|\s*\*\*([0-9]+(?:\.[0-9]+)?)\*\*\s*\|') {
        $dimension = $Matches[1]
        $maximum = [int]$Matches[2]
        $score = [double]$Matches[3]
        $found[$dimension] = $true
        $scores[$dimension] = $score
        if ($maximum -ne $maxima[$dimension] -or $score -lt 0 -or $score -gt $maximum) {
            $errors.Add("invalid weighted dimension: $dimension")
        }
    } elseif ($line -match '^\|\s*(Structure|Craft|Originality|Resonance|Economy)\s*\|\s*\*?([0-9]+(?:\.[0-9]+)?)\*?\s*\|\s*([0-9]+)\s*\|') {
        $dimension = $Matches[1]
        $score = [double]$Matches[2]
        $maximum = [int]$Matches[3]
        $found[$dimension] = $true
        $scores[$dimension] = $score
        if ($maximum -ne $maxima[$dimension] -or $score -lt 0 -or $score -gt $maximum) {
            $errors.Add("invalid weighted dimension: $dimension")
        }
    }
}

$text = $lines -join "`n"
if ($text -match '(?im)^\s*Structure:\s*([0-9]+(?:\.[0-9]+)?)\s*\|\s*Craft:\s*([0-9]+(?:\.[0-9]+)?)\s*\|\s*Originality:\s*([0-9]+(?:\.[0-9]+)?)\s*\|\s*Resonance:\s*([0-9]+(?:\.[0-9]+)?)\s*\|\s*Economy:\s*([0-9]+(?:\.[0-9]+)?)') {
    $inlineScores = @{
        Structure = [double]$Matches[1]
        Craft = [double]$Matches[2]
        Originality = [double]$Matches[3]
        Resonance = [double]$Matches[4]
        Economy = [double]$Matches[5]
    }
    foreach ($dimension in $inlineScores.Keys) {
        $score = $inlineScores[$dimension]
        $found[$dimension] = $true
        $scores[$dimension] = $score
        if ($score -lt 0 -or $score -gt $maxima[$dimension]) {
            $errors.Add("invalid weighted dimension: $dimension")
        }
    }
}
foreach ($dimension in $maxima.Keys) {
    if (-not $found[$dimension]) { $errors.Add("missing weighted dimension: $dimension") }
}

$total = $null
if ($text -match '(?m)^\|\s*\*\*Aggregate Total\*\*\s*\|\s*\*\*([0-9]+(?:\.[0-9]+)?)\*\*') {
    $total = [double]$Matches[1]
} elseif ($text -match '(?m)^\|\s*\*\*TOTAL\*\*\s*\|\s*\*\*([0-9]+(?:\.[0-9]+)?)\*\*\s*\|\s*\*\*100\*\*') {
    $total = [double]$Matches[1]
} elseif ($text -match '(?im)^\s*\*\*Final score:\s*([0-9]+(?:\.[0-9]+)?)\s*/\s*100') {
    $total = [double]$Matches[1]
} elseif ($text -match '(?im)^\s*\*\*Final Score:\s*([0-9]+(?:\.[0-9]+)?)\*\*') {
    $total = [double]$Matches[1]
} elseif ($text -match '(?im)^\s*Final score:\s*([0-9]+(?:\.[0-9]+)?)\s*/\s*100') {
    $total = [double]$Matches[1]
} elseif ($text -match '(?im)^\s*\*\*Score:\s*([0-9]+(?:\.[0-9]+)?)\s*/\s*100') {
    $total = [double]$Matches[1]
} elseif ($text -match '(?im)^\s*Score:\s*([0-9]+(?:\.[0-9]+)?)\s*/\s*100') {
    $total = [double]$Matches[1]
}

if ($null -eq $total) {
    $errors.Add("missing aggregate total")
} else {
    if ($total -lt 0 -or $total -gt 100) { $errors.Add("aggregate total must be between 0 and 100") }
    if ($found.Count -eq $maxima.Count) {
        $dimensionTotal = ($scores.Values | Measure-Object -Sum).Sum
        if ([Math]::Abs($dimensionTotal - $total) -gt 0.30) {
            $errors.Add("aggregate total does not match weighted dimensions")
        }
    }
}
$gate = $null
if ($text -match '(?im)^\s*\*\*Gate:\*\*\s*(PASS|ADVISORY)\b') {
    $gate = $Matches[1].ToUpperInvariant()
} elseif ($text -match '(?im)^\s*\*\*Gate:\s*(PASS|ADVISORY)\b') {
    $gate = $Matches[1].ToUpperInvariant()
} elseif ($text -match '(?im)^\s*Gate:\s*(PASS|ADVISORY)\b') {
    $gate = $Matches[1].ToUpperInvariant()
} elseif ($text -match '(?im)^\s*\*\*Final Score:\s*[0-9]+(?:\.[0-9]+)?\*\*\s*.\s*(PASS|ADVISORY)\b') {
    $gate = $Matches[1].ToUpperInvariant()
}

if ($null -eq $gate) {
    $errors.Add("missing structured gate status")
} elseif ($null -ne $total -and (($total -ge 60 -and $gate -ne "PASS") -or ($total -lt 60 -and $gate -ne "ADVISORY"))) {
    $errors.Add("gate status does not match the 60-point threshold")
}

if ($errors.Count) {
    $errors | Sort-Object | ForEach-Object { Write-Output "ERROR $_" }
    exit 2
}
Write-Output "OK $Path"
