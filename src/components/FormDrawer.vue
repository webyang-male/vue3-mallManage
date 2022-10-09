<!-- 通用抽屉组件 -->
<template>
    <el-drawer v-model="showdrawer" title="修改密码" size="45%" :close-on-click-modal="false">
        <div class="formDrawer">
            <div class="body">
                <slot/>
            </div>
            <div class="actions">
                <el-button type="primary">提交</el-button>
                <el-button type="default" @click="close">取消</el-button>
            </div>
        </div>
    </el-drawer>
</template>

<script setup>
import { ref } from "vue"

//抽屉组件状态
const showdrawer = ref(false)

//打开抽屉
const open = () => {
    showdrawer.value = true
}
//打开抽屉
const close = () => {
    showdrawer.value = false
}

//向父组件暴露以下方法
defineExpose({
    open,
    close
})
</script>

<style>
.formDrawer {
    @apply w-[100%] h-[100%] relative flex flex-col
}
.body{
    @apply flex-1 absolute top-0 left-0 right-0 bottom-[50px] overflow-y-auto
}
.actions{
    @apply h-[50px] mt-auto flex items-center
}
</style>