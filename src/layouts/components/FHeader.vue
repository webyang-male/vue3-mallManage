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
                    <FullScreen v-if="!isFullscreen" />
                    <Aim v-else />
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
    <!-- 抽屉 -->
    <form-drawer ref="formDrawerRef" title="修改密码" destroyOnClose @submit="onSubmit">
        <el-form ref="formRef" :rules="rules" :model="form" label-width="80px" size="small">
            <el-form-item prop="oldpassword" label="旧密码">
                <el-input v-model="form.oldpassword" placeholder="请输入旧密码">
                </el-input>
            </el-form-item>
            <el-form-item prop="password" label="新密码">
                <el-input type="password" v-model="form.password" placeholder="请输入新密码" show-password>
                </el-input>
            </el-form-item>
            <el-form-item prop="repassword" label="确认密码">
                <el-input type="password" v-model="form.repassword" placeholder="请再次输入密码" show-password>
                </el-input>
            </el-form-item>
        </el-form>
    </form-drawer>
</template>

<script setup>
import { useFullscreen } from '@vueuse/core'
import FormDrawer from "~/components/FormDrawer.vue"
import { useRepassword, useLogout } from '~/composables/useManager'


const {
    //是否全屏
    isFullscreen,
    //切换全屏
    toggle
} = useFullscreen()

const {
    form, rules, formRef, onSubmit, formDrawerRef, openRePasswordForm
} = useRepassword()

const { handleLogout } = useLogout()

//下拉菜单事件
const handleCommand = (c) => {
    switch (c) {
        case "logout":
            handleLogout()
            break;

        case "rePassword":
            openRePasswordForm()
            break;
    }
}

//刷新
const handleRefresh = () => location.reload();


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
