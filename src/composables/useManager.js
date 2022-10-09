import { ref, reactive } from "vue";
import { logout, updatepassword } from "~/api/manager";
import { showModal, toast } from "~/composables/util";
import { useRouter } from "vue-router";
import { useStore } from "vuex";

//表单修改密码
export function useRepassword() {
  const router = useRouter();
  const store = useStore();
  //抽屉--修改密码
  //抽屉组件状态
  // const showdrawer = ref(false)
  const formDrawerRef = ref(null);
  const form = reactive({
    oldpassword: "",
    username: "",
    repassword: "",
  });

  const rules = {
    oldpassword: [
      {
        required: true,
        message: "旧密码不能为空",
        trigger: "blur",
      },
    ],
    password: [
      {
        required: true,
        message: "新密码不能为空",
        trigger: "blur",
      },
    ],
    repassword: [
      {
        required: true,
        message: "确认密码不能为空",
        trigger: "blur",
      },
    ],
  };

  const formRef = ref(null);
  const onSubmit = () => {
    formRef.value.validate((valid) => {
      if (!valid) {
        return false;
      }
      formDrawerRef.value.showLoading();
      updatepassword(form)
        .then((res) => {
          toast("修改密码成功，请重新登录！");
          //清除用户状态
          store.dispatch("logout");
          //跳转回登录页
          router.push("/login");
        })
        .finally(() => {
          formDrawerRef.value.hideLoading();
        });
    });
  };

  const openRePasswordForm = () => {
    formDrawerRef.value.open();
  };
  return {
    form,
    rules,
    formRef,
    onSubmit,
    formDrawerRef,
    openRePasswordForm,
  };
}

//退出登录
export function useLogout() {
  const router = useRouter();
  const store = useStore();
  function handleLogout() {
    showModal("是否退出登录？").then((res) => {
      logout().finally((res) => {
        //清除用户状态
        store.dispatch("logout");
        //跳转回登录页
        router.push("/login");
        //退出提示
        toast("退出登录成功");
      });
    });
  }

  return { handleLogout };
}
