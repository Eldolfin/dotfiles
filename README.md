# dotfiles

My dotfiles

deprecated: slowly moving to home manager at
https://github.com/Eldolfin/nixos-config

if os == "arch":

```bash
sudo pacman -S chezmoi && chezmoi init --apply git@github.com:Eldolfin/dotfiles.git
```

elif os == "ubuntu":

```bash
sudo snap install chezmoi --classic && chezmoi init --apply git@github.com:Eldolfin/dotfiles.git
```

elif os == "nixos":

```bash
nix-shell -p chezmoi git --run "chezmoi init --apply git@github.com:Eldolfin/dotfiles.git"
```

else: # build from source

```
git clone https://github.com/twpayne/chezmoi.git
cd chezmoi
make install-from-git-working-copy
chezmoi init --apply git@github.com:Eldolfin/dotfiles.git
```
