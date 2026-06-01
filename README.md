# dotfiles

Personal dotfiles managed with [chezmoi](https://chezmoi.io).

## Install

```sh
chezmoi init baens
chezmoi apply
```

After the initial apply, run the profile installer to add any additional dotfile profiles:

```sh
dotfiles-profiles
```

This will search for `dotfiles.<profile>` repos on GitHub, let you select which to install, and wire them up so `chezmoi-<profile>` aliases are available in your shell.
