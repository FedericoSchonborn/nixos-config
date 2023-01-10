@_default:
    just --list

# Build a system configuration.
@build MACHINE *ARGS:
    nix build --verbose --print-build-logs ".#nixosConfigurations.{{ MACHINE }}.config.system.build.toplevel" {{ ARGS }}

# Switch to a system configuration.
@switch MACHINE *ARGS:
    sudo nixos-rebuild switch --verbose --print-build-logs --flake ".#{{ MACHINE }}" {{ ARGS }}

# Build virtual machine for a system configuration.
@build-vm MACHINE *ARGS:
    nix build --verbose --print-build-logs ".#nixosConfigurations.{{ MACHINE }}.config.system.build.vm" {{ ARGS }}
