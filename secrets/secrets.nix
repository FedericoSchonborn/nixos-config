let
  federico = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAINYBqBMxcmoTH5CHm6p3veSvH8QDQeyle8B/GkRgxRO7";
  # TODO: casa
  users = [federico];
in {
  "wireless-env.age".publicKeys = users;
  "cargo-credentials.age".publicKeys = [federico];
  "gh-hosts.age".publicKeys = [federico];
}
