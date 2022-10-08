<template>
    <div>
        后台首页
        <el-button @click="handleLogout">退出登录</el-button>
    </div>
</template>
<script setup>
import {logout} from "~/api/manager"
import { showModal } from "~/composables/util"
import { toast } from "../composables/util";
import {useRouter} from "vue-router"
import {useStore} from "vuex"


const router = useRouter()
const store = useStore()

function handleLogout() {
    showModal("是否退出登录？").then(res => {
        logout().finally(res => {
            //清除用户状态
            store.dispatch("logout")
            //跳转回登录页
            router.push("/login")
            //退出提示
            toast("退出登录成功")
        })
    })
}
</script>