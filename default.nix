{ pkgs ? (import /nix/var/nix/profiles/per-user/root/channels/nixos {}) }:
with pkgs;
{
  myscript = writeShellApplication {
    name = "myscript";
    runtimeInputs = [ bash cowsay fortune ];
    text = ./myscript.sh;
  };
}
