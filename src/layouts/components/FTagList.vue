<template>
    <div class="f-tag-list" :style="{ left:$store.state.asideWidth }">

        <el-tabs v-model="activeTab" type="card" class="flex-1" @tab-remove="removeTab" style="min-width:100px;"
        @tab-change="changeTab">
            <el-tab-pane :closable="item.path != '/'" v-for="item in tabList" :key="item.path" :label="item.title" :name="item.path"></el-tab-pane>
        </el-tabs>

        <span class="tag-btn">
            <el-dropdown>
                <span class="el-dropdown-link">
                    <el-icon>
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
        </span>
    </div>
    <div style="height:44px;"></div>
</template>
<script setup>
import { ref } from 'vue'
import { useRoute,onBeforeRouteUpdate } from 'vue-router';
import { useCookies } from '@vueuse/integrations/useCookies'
import { router } from '../../router';
const route = useRoute()
const cookie = useCookies()

const activeTab = ref(route.path)
const tabList = ref([
    {
        title: '后台首页',
        path:"/"
    },
])

// 添加标签导航
function addTab(tab){
    let noTab = tabList.value.findIndex(t=>t.path == tab.path) == -1
    if(noTab){
        tabList.value.push(tab)
    }

    cookie.set("tabList",tabList.value)
}

// 初始化标签导航列表
function initTabList(){
    let tbs = cookie.get("tabList")
    if(tbs){
        tabList.value = tbs
    }
}

initTabList()

onBeforeRouteUpdate((to,from)=>{
    activeTab.value = to.path
    addTab({
        title:to.meta.title,
        path:to.path
    })
})  

const changeTab = (t)=>{
    activeTab.value = t
    router.push(t)
}

const removeTab = (t) => {
    let tabs = tabList.value
    let a = activeTab.value
    if(a == t){
        tabs.forEach((tab,index)=>{
            if(tab.path == t){
                const nextTab = tabs[index+1] || tabs[index-1]
                if(nextTab){
                    a = nextTab.path
                }
            }
        })
    }

    activeTab.value = a
    tabList.value = tabList.value.filter(tab=>tab.path != t)

    cookie.set("tabList",tabList.value)
}
</script>
<style scoped>
.f-tag-list{
    @apply fixed bg-gray-100 flex items-center px-2;
    top: 64px;
    right: 0;
    height: 44px;
    z-index: 100;
}
.tag-btn{
    @apply bg-white rounded ml-auto flex items-center justify-center px-2;
    height: 32px;
}
:deep(.el-tabs__header){
    border: 0!important;
    @apply mb-0;
}
:deep(.el-tabs__nav){
    border: 0!important;
}
:deep(.el-tabs__item){
    border: 0!important;
    height: 32px;
    line-height: 32px;
    @apply bg-white mx-1 rounded;
}
:deep(.el-tabs__nav-next),:deep(.el-tabs__nav-prev){
    line-height: 32px;
    height: 32px;
}
:deep(.is-disabled){
    cursor: not-allowed;
    @apply text-gray-300;
}
</style>