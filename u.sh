info=$1
if ["$info" = ""];
then info="feat:update readme and add some unimportant changes"
fi
git add -A
git commit -m "$info"
git push origin main