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
        <el-icon class="icon-btn">
            <Refresh />
        </el-icon>
        <div class="ml-auto flex items-center">
            <el-icon class="icon-btn">
                <FullScreen />
            </el-icon>
            <el-dropdown class="dropdown">
                <span class="flex items-center text-light-50">
                    <el-avatar class="mr-2" :size="25" :src="$store.state.user.avatar" />
                    {{ $store.state.user.username }}
                    <el-icon class="el-icon--right">
                        <arrow-down />
                    </el-icon>
                </span>
                <template #dropdown>
                    <el-dropdown-menu>
                        <el-dropdown-item>Action 1</el-dropdown-item>
                        <el-dropdown-item>Action 2</el-dropdown-item>
                        <el-dropdown-item>Action 3</el-dropdown-item>
                        <el-dropdown-item disabled>Action 4</el-dropdown-item>
                        <el-dropdown-item divided>Action 5</el-dropdown-item>
                    </el-dropdown-menu>
                </template>
            </el-dropdown>
        </div>
    </div>
</template>

<script setup></script>

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

.icon-btn:hover {
    @apply bg-indigo-600
}

.f-header .dropdown {
    height: 64px;
    @apply flex items-center justify-center cursor-pointer  mx-5
}
</style>
