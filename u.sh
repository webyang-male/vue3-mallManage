info=$1
if ["$info" = ""];
then info="feat(v0.5):Add route dynamically according to menu"
fi
git add -A
git commit -m "$info"
git push origin main