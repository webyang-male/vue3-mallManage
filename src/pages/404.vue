<template>
    <div class="main">
        <a class="btn" href="#" @click="$router.push('/')">
            返回网站首页
        </a>
        <!-- <el-result
            icon="warning"
            title="404提示"
            sub-title="你找的页面走丢了~"
        >
            <template #extra>
                <el-button type="primary" @click="$router.push('/')">回到首页</el-button>
            </template>
        </el-result> -->
    </div>
</template>
<style>
.main {
    width: 100vw;
    height: 100vh;
    background: url("/public/404.png") center fixed;
    position: relative;
}

.main .btn {
    position: absolute;
    max-width: 138px;
    margin-top: 27%;
    margin-left: 12%;

    border: 2px solid #fff;
    display: flex;
    padding: 12px 19px;

    font-size: 16px;
    font-weight: 700;
    text-decoration: none;
    -webkit-border-radius: 50px;
    -moz-border-radius: 50px;

    color: #fff;
    text-align: center;
    white-space: nowrap;
    vertical-align: middle;
    touch-action: manipulation;
    cursor: pointer;
}
</style>