# UniversalEngines

**UniversalEngines** is a custom planetary-scale 3D engine and editor architecture built around deterministic world coordinates, globe streaming, controlled GPU residency, offline/local runtime capability, procedural world systems, editor tooling, and strict phase-gated validation.

The canonical architecture currently spans **Phases 0–50**.

## Core direction

UniversalEngines is designed around these non-negotiable authorities:

- WGS84 / Float64 ECEF absolute world coordinates
- cube-quadtree planetary spatial indexing
- floating-origin Float32 rendering
- canonical tile contracts and lifecycle states
- asynchronous streaming and worker decode pipelines
- distinct CPU/GPU residency management
- Babylon.js for the primary 3D world
- Three.js / DOM for editor and HUD presentation
- offline/local content providers and persistence
- typed event contracts, module dependency validation, and universal entity lifecycle governance
- controlled Linux host integration and native project I/O

## Architecture groups

| Phases | Capability group |
| --- | --- |
| 0–22 | Foundation, planetary coordinates, quadtree, ingestion, photogrammetry, streaming, residency, rendering, persistence, telemetry, stress validation |
| 23–38 | Prefabs, visual behaviors, procedural population, VFX, audio, clouds, destruction, particles, offline runtime, collision, vehicles, cameras, inventory, voxel content, encounters, settings |
| 39–41 | Typed event contracts, module dependency graph, universal entity lifecycle |
| 42–45 | Biomes, radar, storage tools, auto-rigging, local asset generation, animation inspection, pursuit AI |
| 46–50 | Procedural skeletal runtime, Linux host integration, safe host diagnostics, adaptive quality/telemetry, native workspace I/O |

## Build contract

Implementation follows the approved linkage graph exactly:

1. **Implement one phase** in dependency order.
2. **Static validation** — linting, type checking, dependency checks, security checks.
3. **Unit and contract tests** — module behavior, interfaces, event contracts, deterministic expectations.
4. **Integration tests** — test the phase against every previously accepted dependency.
5. **Contained full-engine test** — run the accumulated engine in isolation.
6. **Result evaluation** — correctness, regressions, performance, stability, and error state.
7. **PASS → rollback checkpoint** — save the exact validated commit as a known-good rollback.
8. **Promote the same commit** to the real build.
9. **FAIL → no promotion** — return to the last known-good state, fix, and repeat the phase gate.

A phase is never considered complete merely because code exists. The tested commit and promoted commit must be identical.

## Branch model

- `main` — validated production/infrastructure state only
- `build/phase-XX-*` — contained implementation and validation branches
- `rollback/phase-XX-*` — known-good rollback refs created only after PASS

## Proof and traceability

Every accepted phase will record:

- machine-readable test evidence under `proof/`
- phase and dependency status under `docs/traceability/`
- the validated commit SHA
- the rollback ref created from that SHA
- the promotion result

This makes the architecture graph and the actual repository state auditable against each other.

## Codespaces

The repository includes a `.devcontainer` configuration for GitHub Codespaces with the development stack used by UniversalEngines:

- Node.js / npm
- TypeScript / JavaScript
- Python
- C/C++ tooling
- Git and GitHub CLI
- VS Code ESLint and Prettier support
- forwarded development ports for Vite and local engine services

After opening the repository in Codespaces, the environment performs a setup verification automatically.

## Current execution state

The repository infrastructure is initialized and **Phase 0 is the first contained implementation gate**. No later phase may be promoted ahead of an unmet dependency.

---

**Project name:** UniversalEngines  
**Canonical repository:** `Ruustrrr/UniversalEngines`  
**Architecture:** Phase 0–50 strict dependency-gated engine build
