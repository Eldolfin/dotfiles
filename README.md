# dotfiles
My dotfiles

try:
```bash
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply git@github.com:Eldolfin/dotfiles.git
```
except:

if os=="arch":
```bash
sudo pacman -S chezmoi && chezmoi init --apply git@github.com:Eldolfin/dotfiles.git
```
elif os=="ubuntu":
```bash
sudo snap install chezmoi --classic && chezmoi init --apply git@github.com:Eldolfin/dotfiles.git
```
else: # build from source
```
git clone https://github.com/twpayne/chezmoi.git
cd chezmoi
make install-from-git-working-copy
chezmoi init --apply git@github.com:Eldolfin/dotfiles.git
```
