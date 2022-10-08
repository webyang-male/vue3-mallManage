<template>
    <div class="f-header">
        <span class="logo">
            <el-icon class="mr-1">
                <ElemeFilled />
            </el-icon>
            商通后台
        </span>
        <el-icon class="icon-btn">
            <Fold />
        </el-icon>
        <el-tooltip effect="dark" content="刷新" placement="bottom">
            <el-icon class="icon-btn" @click="handleRefresh">
                <Refresh />
            </el-icon>
        </el-tooltip>
        <div class="ml-auto flex items-center">
            <el-tooltip effect="dark" content="全屏" placement="bottom">
                <el-icon class="icon-btn" @click="toggle">
                    <FullScreen v-if="!isFullscreen"/>
                    <Aim v-else/>
                </el-icon>
            </el-tooltip>
            <el-dropdown class="dropdown" @command="handleCommand">
                <span class="flex items-center text-light-50">
                    <el-avatar class="mr-2" :size="25" :src="$store.state.user.avatar" />
                    {{ $store.state.user.username }}
                    <el-icon class="el-icon--right">
                        <arrow-down />
                    </el-icon>
                </span>
                <template #dropdown>
                    <el-dropdown-menu>
                        <el-dropdown-item command="rePassword">修改密码</el-dropdown-item>
                        <el-dropdown-item command="logout">退出登录</el-dropdown-item>
                    </el-dropdown-menu>
                </template>
            </el-dropdown>
        </div>
    </div>
</template>

<script setup>
import { logout } from "~/api/manager"
import { showModal, toast } from "~/composables/util"
import { useRouter } from "vue-router"
import { useStore } from "vuex"
import { useFullscreen } from '@vueuse/core'

const { 
    //是否全屏
    isFullscreen, 
    //切换全屏
    toggle 
} = useFullscreen()


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

//下拉菜单事件
const handleCommand = (c) => {
    switch (c) {
        case "logout":
            handleLogout()
            break;

        case "rePassword":
            console.log(111);
            break;
    }
}

//刷新
const handleRefresh = () => location.reload();

//全屏

</script>

<style scoped>
.f-header {
    @apply flex items-center fixed top-0 left-0 right-0 bg-indigo-700 text-light-50 h-[64px];
}

.logo {
    @apply flex items-center justify-center w-[250px] text-xl font-thin
}

.icon-btn {
    @apply flex items-center justify-center cursor-pointer w-[42px]
}

/* .icon-btn:hover {
    @apply bg-indigo-600
} */

.f-header .dropdown {
    height: 64px;
    @apply flex items-center justify-center cursor-pointer mx-5
}
</style>
