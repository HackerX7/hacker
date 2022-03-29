if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/HackerX7/hacker.git /hacker
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /hacker
fi
cd /hacker
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
