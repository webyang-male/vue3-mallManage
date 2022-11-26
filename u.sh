info=$1
if ["$info" = ""];
then info="feat:Front and rear interaction of menu data and update 404 page"
fi
git add -A
git commit -m "$info"
git push origin main