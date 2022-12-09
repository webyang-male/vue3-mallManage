info=$1
if ["$info" = ""];
then info="feat:Label navigation component realizes style layout"
fi
git add -A
git commit -m "$info"
git push origin main