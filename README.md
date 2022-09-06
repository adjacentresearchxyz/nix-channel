# Adjacent Nix Channel

Based on [lucperkins.dev/blog/nix-channel](https://lucperkins.dev/blog/nix-channel/) a way of hosting a personal nix channel 

### Using 
```
nix-channel --add https://github.com/adjacentresearchxyz/nix-channel/archive/main.tar.gz adjacent
nix-channel --update
nix-channel --list
```

You can also specify the channel direct in a `nix-env` commmand 
```
nix-env -f https://github.com/adjacentresearchxyz/nix-channel/archive/main.tar.gz -qa '*'
```

### Updating
```
# clone the channel
git clone https://github.com/adjacentresearchxyz/nix-channel

# install `niv` 
nix-shell -p niv

# update channel to latest commit 
cd nix-channel
niv init 
niv update
```
