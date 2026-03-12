# infra

Infrastructure as code for personal lab and homelab projects.

## Structure

```
infra/
  nix-builder/    # on-demand Nix remote builders (Hetzner Cloud, Pulumi)
  archive/        # retired infrastructure (k3s notes, etc.)
```

## Getting started

```bash
direnv allow    # enters nix dev shell with pulumi, node, just
just            # list available commands
```

## Tools

- [Pulumi](https://www.pulumi.com/) (TypeScript) for cloud infrastructure
- [Nix Flakes](https://nixos.wiki/wiki/Flakes) for reproducible dev shells
- [just](https://github.com/casey/just) as task runner
- [direnv](https://direnv.net/) for automatic environment setup

## Related repos

- [nixos-config](https://github.com/charemma/nixos-config) -- NixOS system configurations (consumes builder output)
- [nix-home](https://github.com/charemma/nix-home) -- user-level packages via home-manager
