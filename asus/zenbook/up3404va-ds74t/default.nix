{
  config,
  lib,
  pkgs,
  inputs,
  ...
}:
{
  imports = [
    ../../../common/gpu/intel/raptor-lake
    ../../../common/pc/laptop
    ../../../common/pc/laptop/ssd
    ../../battery.nix
  ];

  boot.kernelParams = lib.mkIf (config.hardware.intelgpu.driver == "xe") [
    "i915.force_probe=!a7a0"
    "xe.force_probe=a7a0"
  ];

  hardware.enableRedistributableFirmware = lib.mkDefault true;
  services.thermald.enable = lib.mkDefault true;
  powerManagement.cpuFreqGovernor = lib.mkDefault "powersave";
}
