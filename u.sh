info=$1
if ["$info" = ""];
then info="feat(repassword):Combined api encapsulation simplifies code"
fi
git add -A
git commit -m "$info"
git push origin main