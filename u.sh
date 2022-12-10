info=$1
if ["$info" = ""];
then info="feat:turn off all other tag functions"
fi
git add -A
git commit -m "$info"
git push origin main