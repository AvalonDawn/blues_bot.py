# Update bot
echo "Updating bot..."
cd /home/pi/blues_bot.py
git fetch
git pull origin master

# Update embed_help
# git submodule update --recursive
cd cogs/embed_help/
git stash
git fetch
git pull
git stash pop
echo "Updated."

# Restart service
echo "Restarting systemctl service..."
sudo systemctl restart blues_bot.service
