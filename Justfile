@_default:
    just --list

# Build one or more system configurations.
@build +HOSTS:
    for host in {{ HOSTS }}; do \
        nix build --verbose --print-build-logs ".#nixosConfigurations.${host}.config.system.build.toplevel"; \
    done

# Switch to a system configuration.
@switch HOST:
    sudo nixos-rebuild switch --verbose --print-build-logs --flake ".#{{ HOST }}"

# Build virtual machine for a system configuration.
@build-vm HOST:
    nix build --verbose --print-build-logs ".#nixosConfigurations.{{ HOST }}.config.system.build.vm"
