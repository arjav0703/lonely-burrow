{
  time.timeZone = "Asia/Kolkata";
  gitUsername = "arjav0703";
  gitEmail = "arjavjain0703@gmail.com";
  programs.git = {
      enable = true;
      userName = "arjav0703";
      userEmail = "arjavjain0703@gmail.com";
    };
  # Hyprland Settings
  extraMonitorSettings = "monitor=HDMI-A-1,1920x1080@99.93,0x0,1.0";

  # Waybar Settings
  clock24h = false;

  # Program Options
  browser = "librewolf";
  terminal = "kitty";
  keyboardLayout = "us";
  consoleKeyMap = "us";

  # For Nvidia Prime support
  intelID = "PCI:1:0:0";
  nvidiaID = "PCI:0:2:0";

  # Enable NFS
  enableNFS = true;

  # Enable Printing Support
  printEnable = false;

  programs.nix-ld.enable = true;

}
