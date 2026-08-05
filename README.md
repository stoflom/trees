# trees

Master repository for the Southern African Trees application. Contains SARTrees, TreesBackend, TreesFrontend, and tree-descriptions as submodules.

## Quick Start

```bash
./start.sh
```

This builds the Angular frontend and starts the Deno backend on port **5002**. The frontend is served statically by the backend.

## Repository Structure

| Directory | Description |
|-----------|-------------|
| `SARTrees` | Perl scripts for parsing and loading tree data into MongoDB |
| `TreesBackend` | Deno/Express/Mongoose REST API (port 5002) |
| `TreesFrontend` | Angular 21 frontend |
| `tree-descriptions` | Tree description utilities |

## Versioning

The application version is managed in the root `VERSION` file (`major.minor.patch`). The backend exposes it at `GET /api/version`.

## Development Workflow

- All changes are made in a `dev` branch (never pushed to `origin`).
- When finished, merge into `main` and push to `origin`.

## Submodules

To clone the repository and all submodules:

> `git clone --recurse-submodules git@github.com:stoflom/trees.git`

To pull with submodules:

> `git pull --recurse-submodules`

Push submodules individually. To check submodule status:

> `git submodule status`

## Testing

Run backend API tests (requires the server to be running):

```bash
cd TreesBackend && deno task test
```


