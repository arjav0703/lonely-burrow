{
  pkgs,
  inputs,
  ...
}:
{
  programs = {
    firefox.enable = false;
    hyprland.enable = true;
    dconf.enable = true;
    seahorse.enable = true;
    fuse.userAllowOther = true;
    mtr.enable = true;
    adb.enable = true;
    gnupg.agent = {
      enable = true;
      enableSSHSupport = true;
    };
  };

  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    amfora
    appimage-run
    brave
    brightnessctl
    cliphist
    cmatrix
    cowsay
    docker-compose
    duf
    eza
    ffmpeg
    file-roller
    gedit
    gimp
    glxinfo
    greetd.tuigreet
    htop
    hyprpicker
    eog
    inxi
    killall
    libnotify
    lm_sensors
    lolcat
    lshw
    mpv
    ncdu
    nixfmt-rfc-style
    nwg-displays
    onefetch
    pavucontrol
    pciutils
    picard
    pkg-config
    playerctl
    rofi
    rhythmbox
    ripgrep
    socat
    unrar
    unzip
    usbutils
    v4l-utils
    wget
    yazi
    ytmdl
  ];
  programs.nix-ld.libraries = [
    pkgs.stdenv.cc.cc
    pkgs.zlib
    pkgs.fuse3
    pkgs.icu
    pkgs.nss
    pkgs.openssl
    pkgs.curl
    pkgs.expat
  ];
}
