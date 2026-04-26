# Skill: score-brief

**Pipeline position:** Stage 1 — before composition  
**Rubric version:** v1.0 — SCORE  
**Produces:** `works/NNNN-slug/brief.md`

---

## Purpose

Define a composition assignment clearly enough that composing can begin. A brief names what is being composed, for whom, in which tradition, to what musical aim, and under what constraints. A well-formed brief is the contract between intent and execution — it prevents the composition from drifting away from its tradition, its audience, and its reason for existing.

The brief is also a diagnostic: if you cannot state the musical aim in one sentence, the commission is not ready to be composed.

## Preconditions

- Composer has a subject, occasion, or prompt in mind
- A tradition has been identified or will be selected during briefing

## Procedure

1. **Assign a work number and slug.** Count existing `works/` directories; next number is N+1. Slug is 2-4 words from the subject or title, kebab-case. Create `works/NNNN-slug/`.

2. **Draft the brief** with these sections:

   ### Subject
   What is this composition about? State the musical subject precisely. Not a topic — a subject: the specific piece, the occasion, the emotional argument, or the structural problem this composition will address. "A piece for piano" is a topic. "A set of variations for piano on a simple folk melody, in which each variation explores a different emotional relationship to the source material while maintaining the original's harmonic simplicity" is a subject.

   ### Audience
   Who is listening? What do they bring — their background in music, their assumed familiarity with the tradition, the context in which they will encounter the work (concert hall, recording, intimate gathering, religious service, dance floor)? The audience shapes every decision about register, complexity, duration, and emotional directness.

   ### Tradition
   Which musical tradition applies? Consult `traditions/` for documented tradition grammars. If the tradition is new to the project, note that a tradition document will be needed. If multiple traditions are candidates, name them and state which is primary. The tradition is not a straitjacket — departures are allowed — but departures from an unacknowledged tradition are mistakes; departures from a known tradition are choices.

   ### Core Musical Aim
   State in one sentence what this composition must accomplish musically. Not what it will contain — what it must do. "Produce in the listener a sense of accumulating inevitability that resolves in a moment of recognition." "Create a conversation between two voices that is productive precisely because the voices never fully agree." "Demonstrate that a single melodic line, sustained and varied, can carry the full weight of a twenty-minute performance." If you cannot write this sentence, the brief is not complete.

   ### Constraints
   - Forces: what instruments, voices, or electronic means are available?
   - Duration: how long should the work be?
   - Key/modal center: if specified, what is the harmonic center?
   - Register and dynamic range: any limitations?
   - What must be included? What is explicitly out of scope?
   - Any performance or publication requirements

   ### Open Questions
   List anything that needs resolution before composition can proceed. An unresolved question about the tradition, the forces, or the musical aim will become a structural problem in the composition. Better to surface it here.

3. **Write frontmatter** and save to `works/NNNN-slug/brief.md`.

## Output Format

```markdown
---
work: NNNN-slug
stage: brief
tradition: tradition-slug
author: human (or persona-slug if AI-generated)
rubric_version: v1.0
created: YYYY-MM-DD
updated: YYYY-MM-DD
sources: []
---

# Brief: [Title]

## Subject
...

## Audience
...

## Tradition
...

## Core Musical Aim
...

## Constraints
...

## Open Questions
...
```

## Example Invocation

`/score-brief` — prompts for subject, audience, tradition; produces brief.md in the next numbered work directory.
