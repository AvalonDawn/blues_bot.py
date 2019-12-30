# Start bot
date
echo "Starting bot..."
echo >> bbot.log
echo "NEW LOG :: `whoami`" >> bbot.log
echo `date` >> bbot.log
python3.7 main.py >> bbot.log

#sudo python3.7 /home/pi/blues_bot.py/main.py
