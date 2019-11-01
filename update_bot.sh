# Update bot
echo "Updating bot..."
cd /home/pi/blues_bot.py
git fetch
git pull

# Update embed_help
git submodule update --recursive
echo "Updated."

# Restart service
echo "Restarting systemctl service..."
sudo systemctl restart blues_bot.service
