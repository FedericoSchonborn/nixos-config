@_default:
    just --list

# Build one or more system configurations.
@build +HOSTS:
    for host in {{ HOSTS }}; do \
        nix build --print-build-logs ".#nixosConfigurations.${host}.config.system.build.toplevel"; \
    done

# Switch to a system configuration.
@switch HOST:
    sudo nixos-rebuild switch --print-build-logs --flake ".#{{ HOST }}"

# Build virtual machine for a system configuration.
@build-vm HOST:
    nix build --print-build-logs ".#nixosConfigurations.{{ HOST }}.config.system.build.vm"
