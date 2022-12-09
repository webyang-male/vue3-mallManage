info=$1
if ["$info" = ""];
then info="fix:Dropdown arrow icon misplaced"
fi
git add -A
git commit -m "$info"
git push origin main