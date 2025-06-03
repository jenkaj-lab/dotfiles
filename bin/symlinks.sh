# Backup dotfiles and create symbolic links to new configs
echo "[*] Installing dotfiles"
dotfiles=(
  ".bashrc"
  ".bash_profile"
  ".config"
)
for file in "${dotfiles[@]}"; do
  if [ -e ~/"$file" ]; then
    if [ ! -e ~/"$file~" ]; then
      # create a backup for a dotfile if a backup doesn't already exist
      echo "backing up $file"
      mv ~/"$file" ~/"$file~"
    fi
  fi

  # this line is purposely outside of the loop because it makes sure that symlinks are 
  # still created even if the files/directories don't exist in the user's home directory
  echo "installing $file"
  ln -sfn "$(pwd)/$file" ~/"$file"
done

