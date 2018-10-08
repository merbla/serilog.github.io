# Serilog Landing Page and Documentation

## Basic Workflow

1. Install [DocFx](https://dotnet.github.io/docfx/tutorial/docfx_getting_started.html).
2. Run Make command `make build-docs`. This will do the following
    * Clean src
    * Shallow clone of repositories (Serilog, Sinks etc.)
    * Build metadata
    * Build documentation, site will be published to `docs`.
4. Run `make serve-docs` to serve content at http://localhost:8080.

