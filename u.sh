info=$1
if ["$info" = ""];
then info="feat(Public Head Development):Change Password"
fi
git add -A
git commit -m "$info"
git push origin main