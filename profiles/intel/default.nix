{ host, ... }:
{
  imports = [
    ../../hosts/${host}
    ../../modules/drivers
    ../../modules/core
  ];
  # Enable GPU Drivers
  drivers.intel.enable = true;

}
