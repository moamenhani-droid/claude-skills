# claude-skills

25 Claude skills in one repo. Install them all with one plugin.

## Install in Claude Code (recommended)

Inside Claude Code:

```
/plugin marketplace add moamenhani-droid/claude-skills
/plugin install all-skills@my-skills
```

Or from a terminal:

```
claude plugin marketplace add moamenhani-droid/claude-skills
claude plugin install all-skills@my-skills
```

The repo is private, so the machine needs GitHub access first (`gh auth login`).

Update later with `/plugin marketplace update my-skills`.

## Install as plain skills (no plugin)

```powershell
git clone https://github.com/moamenhani-droid/claude-skills.git
powershell -ExecutionPolicy Bypass -File claude-skills\install.ps1
```

This copies every skill into `%USERPROFILE%\.claude\skills`. Add `-Zips` to also build one zip per skill for upload to claude.ai (Settings → Capabilities → Skills).

## What's inside

| Group | Skills | Source |
|---|---|---|
| UI/UX | `ui-ux-pro-max` | [nextlevelbuilder/ui-ux-pro-max-skill](https://github.com/nextlevelbuilder/ui-ux-pro-max-skill) (MIT) |
| Security | `security-audit` | [cloudflare/security-audit-skill](https://github.com/cloudflare/security-audit-skill) (MIT) |
| Motion graphics | `animated-chart`, `apple-launch-film`, `brand-intake`, `launch-video`, `loop-cover`, `milestone-reveal`, `model-showdown`, `motion-brief-writer`, `motion-effects`, `motion-prompt-writer`, `newsletter-promo`, `reel-export`, `reference-to-motion`, `title-sequence-3d`, `vox-explainer` | [charlie947/motion-graphics-skills](https://github.com/charlie947/motion-graphics-skills) (MIT) |
| 21st.dev | `21st-ai`, `21st-cli-use`, `21st-design-sync`, `21st-registry`, `21st-ui-build`, `21st-ui-explore`, `21st-ui-review`, `21st-video` | Official skills from https://21st.dev/.well-known/skills/index.json (no license stated; kept private) |

The 21st.dev skills need the `@21st-dev/cli` and a 21st account (`npx @21st-dev/cli login` or an `API_KEY_21ST` key from https://21st.dev/mcp).

Upstream licenses are in [`licenses/`](licenses/).
