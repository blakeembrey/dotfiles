# Dotfiles

My OS X config.

## Restore

Mackup is stored in iCloud, make sure to log in and sync for a new computer.

```sh
sh bootstrap.sh # Bootstrap packages and configuration.
sh link.sh # Link files to $HOME.
mackup restore # Restore app configuration.
```

Guide to setting up [GPG signing keys](https://github.com/pstadler/keybase-gpg-github).

### Copying GPG keys

```sh
gpg --list-keys
gpg --export-secret-keys BFFE35E8E29147F63115FBEAE7F0CAD5D0955979 > ~/Downloads/key.secret
gpg --import ~/Downloads/key.secret
```

### Backup

```sh
brew bundle dump -f # Brew packages, casks and MAS apps.
mackup backup # App configuration.
```

## License

MIT
