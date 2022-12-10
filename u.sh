info=$1
if ["$info" = ""];
then info="feat:keep alive page caching"
fi
git add -A
git commit -m "$info"
git push origin main