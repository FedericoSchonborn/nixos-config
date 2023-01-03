@_default:
    just --list

# Build one or more system configurations.
@build +MACHINES:
    for machine in {{ MACHINES }}; do \
        nix build --verbose --print-build-logs ".#nixosConfigurations.${machine}.config.system.build.toplevel"; \
    done

# Switch to a system configuration.
@switch MACHINE:
    sudo nixos-rebuild switch --verbose --print-build-logs --flake ".#{{ MACHINE }}"

# Build virtual machine for a system configuration.
@build-vm MACHINE:
    nix build --verbose --print-build-logs ".#nixosConfigurations.{{ MACHINE }}.config.system.build.vm"
