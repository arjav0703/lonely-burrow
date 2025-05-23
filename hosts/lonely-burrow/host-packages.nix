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
    pkgs.htop
    pkgs.ripgrep

    # Yubikey support
    pkgs.yubioath-flutter
    pkgs.pcsclite
    pkgs.pcsc-tools
    pkgs.pam_u2f
    pkgs.pcscliteWithPolkit

    # Apps

    # comms
    pkgs.vesktop

    # browsers
    pkgs.librewolf

    # usefull stuff
    pkgs.obs-studio
    pkgs.obs-studio-plugins.wlrobs
    pkgs.krita
    pkgs.wl-screenrec
    pkgs.libsForQt5.kdenlive
    pkgs.gimp
    pkgs.libsForQt5.kgpg
    pkgs.protonvpn-gui
    pkgs.nautilus
    pkgs.spotdl
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

    pkgs.python3
    pkgs.nixd
    pkgs.rust-analyzer
    pkgs.vimPlugins.coc-rust-analyzer   
    pkgs.vimPlugins.CopilotChat-nvim
    pkgs.vimPlugins.rustaceanvim
    pkgs.vimPlugins.copilot-lua
    pkgs.rustc
    pkgs.cargo
    pkgs.rustfmt

    # Web dev tools
    pkgs.eslint
    pkgs.pnpm
    pkgs.nodejs_24
    pkgs.node2nix
    pkgs.nodemon
    pkgs.typescript
    pkgs.firefox-devedition
  ];
}
