info=$1
if ["$info" = ""];
then info="feat:Public Head Development - Refresh and Full Screen"
fi
git add -A
git commit -m "$info"
git push origin main