<!-- 通用抽屉组件 -->
<template>
    <el-drawer v-model="showdrawer" :title="title" :size="size" :destroy-on-close="destroyOnClose"
        :close-on-click-modal="false">
        <div class="formDrawer">
            <div class="body">
                <slot />
            </div>
            <div class="actions">
                <el-button type="primary" @click="submit" :loading="loading">{{confirmText}}</el-button>
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

//接收定义父组件数据
const props = defineProps({
    title: String,
    size: {
        type: String,
        default: "45%"
    },
    destroyOnClose: {
        type: Boolean,
        default: false
    },
    confirmText: {
        type: String,
        default: "提交"
    }
})


const emit = defineEmits(['submit'])
const submit = () => {
    emit("submit")
}


const loading = ref(false)
const showLoading = () => loading.value = true
const hideLoading = () => loading.value = false

//向父组件暴露以下方法
defineExpose({
    open,
    close,
    showLoading,
    hideLoading
})

</script>

<style>
.formDrawer {
    @apply w-[100%] h-[100%] relative flex flex-col
}

.body {
    @apply flex-1 absolute top-0 left-0 right-0 bottom-[50px] overflow-y-auto
}

.actions {
    @apply h-[50px] mt-auto flex items-center
}
</style>