# Full plugin map (dotnet → pmcro)

Every folder under `plugins/` in [dotnet/skills](https://github.com/dotnet/skills/tree/main/plugins) is mirrored here with PMCR naming.

| dotnet/skills | pmcro-marketplace-skills | Role |
|---------------|--------------------------|------|
| `dotnet` | `pmcro` | Core lifecycle (plan/make/check/reflect) |
| `dotnet11` | `pmcro-orchestrator` | High-level goal specialist |
| `dotnet-advanced` | `pmcro-advanced` | Advanced / edge scenarios |
| `dotnet-ai` | `pmcro-ai` | AI-related agent skills |
| `dotnet-aspnetcore` | `pmcro-aspnetcore` | ASP.NET Core domain |
| `dotnet-blazor` | `pmcro-blazor` | Blazor domain |
| `dotnet-data` | `pmcro-data` | Data / persistence domain |
| `dotnet-diag` | `pmcro-diag` | Diagnostics / incidents |
| `dotnet-experimental` | `pmcro-experimental` | Experimental skills |
| `dotnet-maui` | `pmcro-maui` | MAUI / mobile domain |
| `dotnet-msbuild` | `pmcro-msbuild` | Build system domain |
| `dotnet-nuget` | `pmcro-nuget` | Package domain |
| `dotnet-template-engine` | `pmcro-template-engine` | Templates / scaffolding |
| `dotnet-test` | `pmcro-test` | Test domain |
| `dotnet-test-migration` | `pmcro-test-migration` | Test migration |
| `dotnet-upgrade` | `pmcro-upgrade` | Upgrade / migration |
| `dotnet-winforms` | `pmcro-winforms` | WinForms domain |

Each plugin folder has the same shape as dotnet/skills:

```text
plugins/<name>/
  plugin.json
  version.json
  README.md
  .claude-plugin/plugin.json
  .codex-plugin/plugin.json
  skills/
    <skill-name>/SKILL.md
```

Core content is filled for `pmcro` and `pmcro-orchestrator`. Other plugins are structural stubs ready for domain skills.
