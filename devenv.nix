{ pkgs, lib, config, inputs, ... }:

{
  packages = [pkgs.libiconv pkgs.postgresql_16] ++ lib.optionals pkgs.stdenv.isDarwin [
    # pkgs.darwin.apple_sdk.frameworks.CoreFoundation
    pkgs.darwin.apple_sdk.frameworks.Security
    pkgs.darwin.apple_sdk.frameworks.SystemConfiguration
  ];
}
