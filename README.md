#   My Neovim Config

Exactly what it says. It's my nvim configuration. That means it's specific to how I like *my* nvim to look and behave. 
You can use mine as it is or customize it to your own taste. But it is damn handy to be able to have my whole editor 
config up and running in a few shell commands!

### To build and use...

1. Clone this repo to wherever you keep your repos on the box where you want to configure nvim
2. If you already have a ~/.config/nvim back it up and delete the original like this:
   ```
   mv ~/.config/nvim ~/.config/nvim_backup
   ```
3. Symlink the content of the repo to where nvim configs are normally found 
   ```
   ln -s /path/to/parent/of/nvim/repo/nvim ~/.config/nvim
   ```
   For me that looks like:
   ```
   ln -s ~/Projects/Code/nvim ~/.config/nvim
   ```
4. ENJOY!!





Big thanks to [ThePrimagen](https://github.com/ThePrimeagen/ThePrimeagen) and [craftzdog](https://github.com/craftzdog) for the wisdom and the inspiration!
