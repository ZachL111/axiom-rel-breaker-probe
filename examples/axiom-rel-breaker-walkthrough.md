# Axiom Rel Breaker Probe Walkthrough

This note is the quickest way to read the extra review model in `axiom-rel-breaker-probe`.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | budget pressure | 113 | watch |
| stress | failure width | 186 | ship |
| edge | recovery gap | 216 | ship |
| recovery | runbook drift | 209 | ship |
| stale | budget pressure | 223 | ship |

Start with `stale` and `baseline`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

The next useful expansion would be a malformed fixture around failure width and runbook drift.
