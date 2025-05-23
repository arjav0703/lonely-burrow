# 💫 https://github.com/JaKooLit 💫 #
# Packages and Fonts config including the "programs" options

{ pkgs, inputs, ... }:
let

  python-packages = pkgs.python3.withPackages (
    ps: with ps; [
      requests
      pyquery # needed for hyprland-dots Weather script
    ]
  );

in
{

  nixpkgs.config.allowUnfree = true;

  environment.systemPackages =
    (with pkgs; [
      # System Packages
      bc
      baobab
      clang
      curl
      cpufrequtils
      duf
      eza
      bat
      findutils
      ffmpeg
      glib # for gsettings to work
      gsettings-qt
      git
      killall
      libappindicator
      libnotify
      mlocate
      openssl # required by Rainbow borders
      pciutils
      vim
      wget

      fastfetch
      (mpv.override { scripts = [ mpvScripts.mpris ]; }) # with tray
      #ranger

      # Hyprland Stuff
      #(ags.overrideAttrs (oldAttrs: { inherit (oldAttrs) pname; version = "1.8.2"; }))
      ags # desktop overview
      btop
      brightnessctl # for brightness control
      cava
      cliphist
      loupe
      gnome-system-monitor
      grim
      gtk-engine-murrine # for gtk themes
      hypridle
      imagemagick
      inxi
      jq
      kitty
      libsForQt5.qtstyleplugin-kvantum # kvantum
      networkmanagerapplet
      nwg-displays
      nwg-look
      nvtopPackages.full
      pamixer
      pavucontrol
      playerctl
      polkit_gnome
      libsForQt5.qt5ct
      kdePackages.qt6ct
      kdePackages.qtwayland
      kdePackages.qtstyleplugin-kvantum # kvantum
      rofi-wayland
      slurp
      swappy
      swaynotificationcenter
      swww
      unzip
      v4l-utils
      wallust
      wl-clipboard
      wlogout
      xarchiver
      yad
      yt-dlp

      #waybar  # if wanted experimental next line
      #(pkgs.waybar.overrideAttrs (oldAttrs: { mesonFlags = oldAttrs.mesonFlags ++ [ "-Dexperimental=true" ];}))
    ])
    ++ [
      python-packages
    ];

  # FONTS
  fonts.packages = with pkgs; [
    noto-fonts
    fira-code
    noto-fonts-cjk-sans
    jetbrains-mono
    font-awesome
    terminus_font
    victor-mono

    # nerd-fonts.jetbrains-mono # unstable
    # nerd-fonts.fira-code # unstable
    # nerd-fonts.fantasque-sans-mono #unstable
  ];

  programs = {
    hyprland = {
      enable = true;
      # #package = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.hyprland; #hyprland-git
      # #portalPackage = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.xdg-desktop-portal-hyprland; #xdph-git

      # portalPackage = pkgs.xdg-desktop-portal-hyprland; # xdph none git
      # xwayland.enable = true;
    };

    waybar.enable = true;
    hyprlock.enable = true;
    firefox.enable = false;
    git.enable = true;
    nm-applet.indicator = true;
    neovim.enable = true;

    thunar.enable = true;
    thunar.plugins = with pkgs.xfce; [
      exo
      mousepad
      thunar-archive-plugin
      thunar-volman
      tumbler
    ];

    virt-manager.enable = false;

    #steam = {
    #  enable = true;
    #  gamescopeSession.enable = true;
    #  remotePlay.openFirewall = true;
    #  dedicatedServer.openFirewall = true;
    #};

    dconf.enable = true;
    seahorse.enable = true;
    fuse.userAllowOther = true;
    mtr.enable = true;
    gnupg.agent = {
      enable = true;
      enableSSHSupport = true;
    };

  };

}
