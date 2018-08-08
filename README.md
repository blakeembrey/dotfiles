# Dotfiles

My OS X config.

## Restore

Mackup is stored in iCloud, make sure to log in and sync for a new computer.

```sh
sh bootstrap.sh # Bootstrap packages and configuration.
sh link.sh # Link files to $HOME.
mackup restore # Restore app configuration.
```

### Backup

```sh
brew bundle dump -f # Brew packages, casks and MAS apps.
mackup backup # App configuration.
```

## License

MIT
