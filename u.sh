info=$1
if ["$info" = ""];
then info="feat(Side menu development):style layout and route jump"
fi
git add -A
git commit -m "$info"
git push origin main