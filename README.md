# Dotfiles

My OS X config.

## Restore

```sh
sh bootstrap.sh # Bootstrap packages and configuration.
sh link.sh # Link files to $HOME.
```

### Copying GPG keys

```sh
gpg --list-keys
gpg --export-secret-keys BFFE35E8E29147F63115FBEAE7F0CAD5D0955979 > ~/Downloads/key.secret
gpg --import ~/Downloads/key.secret
```

### Backup

```sh
brew bundle dump -f # Brew packages, casks and MAS apps.
```

## License

MIT
