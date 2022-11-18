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

# Build virtual machine for a system configuration.
@build-vm HOST:
    nix build --print-build-logs ".#nixosConfigurations.{{ HOST }}.config.system.build.vm"

# Run checks on this Flake.
@check:
    nix flake check --no-build
