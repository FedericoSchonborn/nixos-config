let
  federico = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAINYBqBMxcmoTH5CHm6p3veSvH8QDQeyle8B/GkRgxRO7 fdschonborn@gmail.com";
  all = [federico];
in {
  "wireless.age".publicKeys = all;
}
