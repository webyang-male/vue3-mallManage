info=$1
if ["$info" = ""];
then info=":pencil: 登录页响应式处理"
fi
git add -A
git commit -m "$info"
git push origin main