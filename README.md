# Lonely-Burrow
This repo contains the system config for my Primary Computer.

## Usage
Clone this repo and run the following on your terminal

1. Run:
    ```
    cd lonely-burrow
    mkdir hosts/<your-hostname>
    cp hosts/lonely-burroy/* hosts/<your-hostname>
    sudo nixos-generate-config ./
    ```
2. Replace your current `hosts/<your-host>/hardware.nix` with the contents of the new `hardware-configuration.nix`.
3. Commit the changes to git.

4. Build the flake
```
sudo nixos-rebuild build --flake .#intel
```

--- 
### Important!!
This is *heavily inspired* (a lot of part is copy-pasted) from [ZaneyOS](https://gitlab.com/Zaney/zaneyos) by [Tyler](https://gitlab.com/Zaney).
However, unlike Zaneyos, *I do not use Home-manager* to manage dotfiles. My dotfiles can be found in [this repository](https://github.com/arjav0703/dotfiles).
