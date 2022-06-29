info=$1
if ["$info" = ""];
then info=":pencil: 登录页初始效果开发"
fi
git add -A
git commit -m "$info"
git push origin main