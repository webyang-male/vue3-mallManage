info=$1
if ["$info" = ""];
then info="feat:Transition global transition animation"
fi
git add -A
git commit -m "$info"
git push origin main