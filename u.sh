info=$1
if ["$info" = ""];
then info="feat:update docs"
fi
git add -A
git commit -m "$info"
git push origin main