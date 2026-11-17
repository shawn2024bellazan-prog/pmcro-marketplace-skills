# pmcro-marketplace-skills

Full mirror of [dotnet/skills `plugins/`](https://github.com/dotnet/skills/tree/main/plugins) with **every folder renamed from `dotnet*` → `pmcro*`**.

## Plugins

| Plugin | Analog |
|--------|--------|
| **pmcro** | `dotnet` — core plan/make/check/reflect |
| **pmcro-orchestrator** | `dotnet11` — high_level_goal + decompose-goal |
| pmcro-advanced | dotnet-advanced |
| pmcro-ai | dotnet-ai |
| pmcro-aspnetcore | dotnet-aspnetcore |
| pmcro-blazor | dotnet-blazor |
| pmcro-data | dotnet-data |
| pmcro-diag | dotnet-diag |
| pmcro-experimental | dotnet-experimental |
| pmcro-maui | dotnet-maui (+ sample `create-maui-app`) |
| pmcro-msbuild | dotnet-msbuild |
| pmcro-nuget | dotnet-nuget |
| pmcro-template-engine | dotnet-template-engine |
| pmcro-test | dotnet-test |
| pmcro-test-migration | dotnet-test-migration |
| pmcro-upgrade | dotnet-upgrade |
| pmcro-winforms | dotnet-winforms |

See [docs/PLUGIN-MAP.md](docs/PLUGIN-MAP.md).

Each plugin:

```text
plugin.json · version.json · README.md
.claude-plugin/plugin.json · .codex-plugin/plugin.json
skills/
```

Filled content: **pmcro**, **pmcro-orchestrator**, sample skill under **pmcro-maui**. Others are structural stubs matching the dotnet layout.
