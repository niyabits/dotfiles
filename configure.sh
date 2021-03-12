#!/bin/bash
# Check if a file or folder already exists
# If it exists move it to folder/filename.old
function moveToOld ()
{

}

cd home/

echo Symlinking Configuration files to Home ...
HOME_FILES=($(ls -a))

# Remove the First 2 items from the array
unset HOME_FILES[0]     # Remove "."
unset HOME_FILES[1]     # Remove ".."

for i in "${HOME_FILES[@]}"; do
  echo "$i"
  echo "ln -s $i ~/$i"
done

# Symlink from config folder
echo Symlinking Configuration files to ~/.config ...
cd ../config/

CONFIG_FOLDERS=($(ls -a))
# Remove the First 2 items from the array
unset CONFIG_FOLDERS[0]     # Remove "."
unset CONFIG_FOLDERS[1]     # Remove ".."

for i in "${CONFIG_FOLDERS[@]}"; do
  echo "$i"
  echo "ln -s $i ~/.config/$i"
done
