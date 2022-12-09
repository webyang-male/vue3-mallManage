<template>
    <div class="f-tags-list" :style="{ left: $store.state.asideWidth }">
        <el-tabs style="min-width:100px ;" v-model="editableTabsValue" type="card" class="demo-tabs" closable
            @tab-remove="removeTab">
            <el-tab-pane v-for="item in editableTabs" :key="item.name" :label="item.title" :name="item.name">

            </el-tab-pane>
        </el-tabs>

        <!-- 下拉菜单 -->
        <span class="tag-btn">
            <el-dropdown>
                <span class="el-dropdown-link">
                    <el-icon class="el-icon--right" style="margin-right: 5px">
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
</template>

<script  setup>
import { ref } from 'vue'

let tabIndex = 2
const editableTabsValue = ref('2')
const editableTabs = ref([
    {
        title: 'Tab 1',
        name: '1',
        content: 'Tab 1 content',
    },
    {
        title: 'Tab 2',
        name: '2',
        content: 'Tab 2 content',
    },
    {
        title: 'Tab 1',
        name: '33',
        content: 'Tab 1 content',
    }, {
        title: 'Tab 1',
        name: '1',
        content: 'Tab 1 content',
    },
    {
        title: 'Tab 2',
        name: '2',
        content: 'Tab 2 content',
    }
])

const addTab = (targetName) => {
    const newTabName = `${++tabIndex}`
    editableTabs.value.push({
        title: 'New Tab',
        name: newTabName,
        content: 'New Tab content',
    })
    editableTabsValue.value = newTabName
}
const removeTab = (targetName) => {
    const tabs = editableTabs.value
    let activeName = editableTabsValue.value
    if (activeName === targetName) {
        tabs.forEach((tab, index) => {
            if (tab.name === targetName) {
                const nextTab = tabs[index + 1] || tabs[index - 1]
                if (nextTab) {
                    activeName = nextTab.name
                }
            }
        })
    }

    editableTabsValue.value = activeName
    editableTabs.value = tabs.filter((tab) => tab.name !== targetName)
}
</script>
<style scoped>
.f-tags-list {
    @apply fixed bg-gray-100 flex items-center px-2;
    top: 64px;
    right: 0;
    height: 44px;
    z-index: 9;
}

.tag-btn {
    @apply bg-white rounded ml-auto flex items-center justify-center px-2 ml-auto h-[32px]
}

:deep(.el-tabs__header) {
    @apply mb-0
}

:deep(.el-tabs__nav) {
    border: 0 !important;
}

:deep(.el-tabs__item) {
    border: 0 !important;
    line-height: 32px !important;
    @apply mx-1 bg-white h-[32px] rounded;

}

:deep(.el-tabs__nav-next),
:deep(.el-tabs__nav-prev) {
    line-height: 32px;
    height: 32px;
}

:deep(.is-disabled) {
    cursor: not-allowed;
    @apply text-gray-300;
}
</style>