{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    # Utilities
    pkgs.wirelesstools
    pkgs.lshw
    pkgs.nix-prefetch
    pkgs.pciutils
    pkgs.usb-modeswitch
    pkgs.usbutils
    pkgs.wtype
    pkgs.ripgrep
    
    # Yubikey support
    pkgs.yubioath-flutter
    pkgs.pcsclite
    pkgs.pcsc-tools
    pkgs.pam_u2f
    pkgs.pcscliteWithPolkit

    # Apps

    # comms
    pkgs.slack
    pkgs.vesktop

    # browsers
    pkgs.ladybird
    pkgs.librewolf

    # usefull stuff
    pkgs.protonvpn-gui
    pkgs.nautilus
    pkgs.spotdl
    pkgs.obs-studio
    pkgs.obsidian
    pkgs.solaar
    pkgs.kitty
    pkgs.hyfetch
    pkgs.chezmoi
    pkgs.wpsoffice
    pkgs.zoxide
    pkgs.yazi

    # DEV TOOLS

    # CLIs
    pkgs.wakatime-cli
    pkgs.git
    pkgs.gh
    pkgs.lazygit
    pkgs.lazydocker

    # GUIs
    pkgs.zed-editor
    pkgs.vscodium-fhs
    pkgs.neovim
    vim
    pkgs.devtoolbox

    pkgs.python39
    pkgs.nixd

    # Web dev tools
    pkgs.eslint
    pkgs.pnpm
    pkgs.nodejs_23
    pkgs.node2nix
    pkgs.nodemon
    pkgs.typescript
    pkgs.firefox-devedition
  ];
}
