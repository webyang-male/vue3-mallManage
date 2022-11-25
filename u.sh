info=$1
if ["$info" = ""];
then info="feat(Side menu development):Function realization of expanding and retracting menu"
fi
git add -A
git commit -m "$info"
git push origin main