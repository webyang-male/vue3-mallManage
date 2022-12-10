info=$1
if ["$info" = ""];
then info="beta(tag navigation component):synchronous routing and storage"
fi
git add -A
git commit -m "$info"
git push origin main