# UniversalEngines Naming Contract

The canonical engine and editor name is **UniversalEngines**.

## Required naming

All new implementation, documentation, test evidence, rollback metadata, build manifests, application titles, package identifiers, terminal prompts, host integration, generated artifacts, and user-facing labels must use `UniversalEngines` unless a lower-level technical identifier is intentionally generic.

## Legacy names

`CosmoForge` and other earlier working names are historical source-reference names only. They are not valid names for this repository's implementation and must not be introduced into production source, tests, UI labels, package metadata, or rollback checkpoints.

## Repository

Canonical repository: `Ruustrrr/UniversalEngines`

## Enforcement

Static validation must fail if a prohibited legacy engine name appears in production-controlled paths, except in explicitly marked migration/reference documentation.
