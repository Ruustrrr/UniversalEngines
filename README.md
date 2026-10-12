# UniversalEngines

UniversalEngines is the canonical repository for the Phase 0–50 engine build.

## Build contract

The implementation follows the approved linkage graph exactly:

1. Implement one phase in dependency order.
2. Run static validation.
3. Run unit and contract tests.
4. Run integration tests against all previously accepted phases.
5. Run the contained full-engine test suite.
6. Evaluate correctness, regressions, performance, and stability.
7. On PASS, create a versioned rollback checkpoint.
8. Promote the exact validated commit to the real build.
9. On FAIL, do not promote; revert to the last known-good checkpoint, fix, and repeat.

No phase is considered complete because code merely exists. A phase is complete only when its gate evidence is recorded and the tested commit is identical to the promoted commit.

## Branch model

- `main` — validated production build only.
- `build/phase-XX-*` — contained implementation and test branches.
- `rollback/phase-XX-*` — immutable known-good checkpoint refs after PASS.

## Architecture

The master architecture spans Phases 0–50: planetary coordinates and globe quadtree, streaming/residency/rendering, gameplay and procedural systems, persistence/offline runtime, governance, asset/animation tooling, Linux host integration, hardware adaptation/telemetry, and native workspace I/O.

## Proof rule

Every promoted phase must carry machine-readable test evidence under `proof/` and a traceability update under `docs/traceability/`. The production branch must never contain an unvalidated phase.
