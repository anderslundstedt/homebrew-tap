# homebrew-tap

Personal [Homebrew](https://brew.sh) tap for casks not available in
[Homebrew/homebrew-cask](https://github.com/Homebrew/homebrew-cask).

## Usage

### Standard usage

```sh
brew install --cask anderslundstedt/tap/devonthink@3
```

### Nix usage

With [nix-homebrew](https://github.com/zhaofengli/nix-homebrew) and
[nix-darwin](https://github.com/nix-darwin/nix-darwin):

```nix
# flake.nix inputs
homebrew-tap = { url = "github:anderslundstedt/homebrew-tap"; flake = false; };

# configuration
nix-homebrew.taps."anderslundstedt/homebrew-tap" = inputs.homebrew-tap;
homebrew.casks = [ "anderslundstedt/tap/devonthink@3" ];
```

## Casks

| Cask           | App                                | Notes                                                                    |
| -------------- | ---------------------------------- | ------------------------------------------------------------------------ |
| `devonthink@3` | DEVONthink 3 (legacy 3.x releases) | Upstream `devonthink` installs 3.x only on macOS 12 Monterey and older. |

### `devonthink@3`

- DEVONtechnologies advises against having DEVONthink 3 and 4 in the same user
  account on the same Mac.
- There is no `zap` stanza on purpose:
  `~/Library/Application Support/DEVONthink 3` holds the Global Inbox database,
  and DEVONthink 3 and 4 share `~/Library` paths.

## License

[BSD-2-Clause](LICENSE). Portions derived from Homebrew/homebrew-cask.
