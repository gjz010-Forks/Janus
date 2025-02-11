{
  config,
  lib,
  pkgs,
  ...
}:
{
  #pre-commit.default_stages = [
  #  "pre-push"
  #  "manual"
  #];
  git-hooks.hooks = {
    clippy.enable = true;
    rustfmt.enable = true;
    nixfmt-rfc-style.enable = true;
    black.enable = false;
    flake8.enable = false;
    mypy = {
      enable = false;
      entry = "${config.env.VIRTUAL_ENV}/bin/python3 -m mypy";
    };
  };
  packages = [ pkgs.nixfmt-rfc-style ];
}
