# Adjacent Nix Channel

Based on [lucperkins.dev/blog/nix-channel](https://lucperkins.dev/blog/nix-channel/) a way of hosting a personal nix channel 

### Using 
```
nix-channel --add https://github.com/adjacentresearch/nix-channel/archive/main.tar.gz adjacent
nix-channel --update
nix-channel --list
```

### Updating
```
# clone the channel
git clone https://github.com/adjacentresearch/nix-channel

# install `niv` 
nix-shell -p niv

# update channel to latest commit 
cd nix-channel
niv init 
niv update
```
