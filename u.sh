info=$1
if ["$info" = ""];
then info="feat:Tab Navigate and click to jump to the page"
fi
git add -A
git commit -m "$info"
git push origin main