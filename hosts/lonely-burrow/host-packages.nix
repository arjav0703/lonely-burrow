{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
  # Utilities
    pkgs.wirelesstools
    pkgs.lshw
    pkgs.nix-prefetch
    pkgs.pciutils
    pkgs.usb-modeswitch
    pkgs.usbutils

    # Yubikey support
    pkgs.pcsclite
    pkgs.pcsc-tools
    pkgs.pam_u2f
    pkgs.pcscliteWithPolkit

# Apps
    # comms
    pkgs.slack
    pkgs.vesktop

    # browsers
    pkgs.brave
    pkgs.librewolf-unwrapped

    # usefull stuff
    pkgs.spotdl
    pkgs.obs-studio
    pkgs.obsidian
    pkgs.solaar
    pkgs.kitty
    pkgs.hyfetch


# DEV TOOLS
    # CLIs
    pkgs.git
    pkgs.gh
    pkgs.lazygit
    # GUIs
    pkgs.zed-editor
    pkgs.neovim
    vim

    pkgs.python39

    # Web dev tools
    pkgs.nodejs_23
    pkgs.node2nix
    pkgs.nodemon
    pkgs.typescript
    pkgs.firefox-devedition
  ];
}
