info=$1
if ["$info" = ""];
then info="feat:clear cookie"
fi
git add -A
git commit -m "$info"
git push origin main