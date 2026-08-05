# AGENTS.md — Development Guidelines

## Branching Strategy

- **All changes must be done in a `dev` branch.**
- The `dev` branch is **NEVER** to be pushed to `origin`.
- When development is finished, changes must be **merged into the `main` branch**.
- The `main` branch is then **pushed to `origin`**.

## Application Versioning

The entire application shares a single version file at `VERSION`, consisting of `major.minor.patch`:

- **Major** — breaking changes to the API or data model.
- **Minor** — new features or significant changes that don't break existing functionality.
- **Patch** — bug fixes and small changes.

Update the version in `VERSION` when releasing. The backend exposes it at `/api/version`.

## Tech Stack

- **Backend:** Deno + Express (npm compat) + Mongoose + MongoDB
- **Frontend:** Angular 21 + TypeScript
- **Build:** `./start.sh` builds the Angular frontend and starts the Deno backend (which serves the built files)
- **Database:** MongoDB (configured via `MONGODB_URI` in `.env`)

## Thinking

- Do not loop
- If confused stop and ask for clarity

## Issues

- Issues are managed with the "gh issue" commands.
- They must be logged with appropriate labels e.g. bug,enhancement,frontend,backend.
