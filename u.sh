info=$1
if ["$info" = ""];
then info="feat(v0.5):Front and rear interaction of menu data"
fi
git add -A
git commit -m "$info"
git push origin main