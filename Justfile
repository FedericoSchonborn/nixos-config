@_default:
    just --list

# Build one or more system configurations.
@build +HOSTS:
    for host in {{ HOSTS }}; do \
        nix build --print-build-logs ".#nixosConfigurations.${host}.config.system.build.toplevel"; \
    done

# Switch to a system configuration.
@switch HOST:
    sudo nixos-rebuild switch --flake ".#{{ HOST }}" --verbose

# Run checks on this Flake.
@check:
    nix flake check --no-build
