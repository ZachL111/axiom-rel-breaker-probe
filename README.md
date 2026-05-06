# axiom-rel-breaker-probe

`axiom-rel-breaker-probe` keeps a focused Solidity implementation around reliability. The project goal is to develop a Solidity command-oriented project for breaker scenarios with deny and allow fixtures, explainable decision traces, and no network dependency.

## Problem It Tries To Make Smaller

The project exists to keep a narrow engineering decision visible and testable. For this repo, that decision is how budget pressure and recovery gap should influence a review result.

## Axiom Rel Breaker Probe Review Notes

Start with `budget pressure` and `budget pressure`. Those cases create the widest score spread in this repo, so they are the best quick check when the model changes.

## Working Pieces

- `fixtures/domain_review.csv` adds cases for budget pressure and failure width.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/axiom-rel-breaker-walkthrough.md` walks through the case spread.
- The Solidity code includes a review path for `budget pressure` and `budget pressure`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Design Notes

The implementation keeps the scoring rule plain: reward signal and confidence, preserve slack, penalize drag, then classify the result into a review lane.

The Solidity checks add a pure review lens and Foundry coverage.

## Example Run

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Tests

The check exercises the source code and the review fixture. `stale` is the high score at 223; `baseline` is the low score at 113.

## Known Limits

This remains a local project with deterministic fixtures. It does not depend on credentials, hosted services, or live data. Future work should add richer malformed inputs before widening the public API.
