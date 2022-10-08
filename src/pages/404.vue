<template>
    <!-- <div>
        <el-result
            icon="warning"
            title="404提示"
            sub-title="你找的页面走丢了~"
        >
            <template #extra>
                <el-button type="primary" @click="$router.push('/')">回到首页</el-button>
            </template>
        </el-result>
    </div> -->

    <div class="container">
        <div class="row">
            <div class="col-xs-10 col-xs-offset-1 col-sm-12">
                <div class="content">
                    <a class="logo" href="javascript:;">
                        <img src="../assets/404picture/logo.png">
                    </a>
                    <h1>404</h1>
                    <h2>你要查找的页面不存在。</h2>
                    <a class="btn" href="javascript:history.go(-1);">
                        返回上一页
                    </a>
                </div>
            </div>
        </div>
    </div>


    <div class="fs">
        <div class="hold-illustration w-preserve-3d">
            <div class="background w-clearfix">
                <div class="left-strip"></div>
                <div class="top-bar">
                    <div class="dot"></div>
                    <div class="_2 dot"></div>
                    <div class="_3 dot"></div>
                </div>
                <div class="text-like-box w-clearfix">
                    <div class="text" data-ix="arrow-load">A</div>
                    <div class="straight-line" data-ix="arrow-load"></div>
                    <div class="straight-line-full" data-ix="loading-line-animation"></div>
                    <div class="straight-line-full" data-ix="loading-line-animation-2"></div>
                    <div class="straight-line-full" data-ix="loading-line-animation-3"></div>
                    <div class="straight-line-full" data-ix="loading-line-animation-6-long"></div>
                    <div class="straight-line-full" data-ix="loading-line-animation-5"></div>
                    <div class="shortened straight-line-full" data-ix="loading-line-animation-6shorted"></div>
                </div>
                <div class="mountain-photo-parent">
                    <div class="mountain-photo__real-deal" data-ix="arrow-load">
                        <div class="mountain" data-ix="mountain-slide-in-from-left"></div>
                        <div class="_2 mountain" data-ix="mountain-slide-in"></div>
                    </div>
                    <div class="arrow-line" data-ix="arrow-load">
                        <div class="arrow-line-small"></div>
                        <div class="arrow-line-small v2"></div>
                    </div>
                </div>
                <div class="square-tower" data-ix="arrow-load">
                    <div class="play-box w-preserve-3d" data-ix="tower-hover-animation">
                        <div class="play-box__top-bar"></div>
                        <a class="overflow-hidden w-inline-block w-lightbox" href="#">
                            <div class="play-box__play-icon" data-ix="play-icon-on-load"></div>
                        </a>
                    </div>
                    <div class="play-box__square-1 w-preserve-3d"></div>
                    <div class="play-box__square-2 w-preserve-3d"></div>
                    <div class="play-box__square-bottom"></div>
                </div>
                <div class="tri-parent w-clearfix">
                    <div class="column" data-ix="column-hover">
                        <div class="circle" data-ix="pop-in"></div>
                        <div class="straight-line-full" data-ix="loading-line-animation"></div>
                        <div class="straight-line-full" data-ix="loading-line-animation-2"></div>
                        <div class="straight-line-full" data-ix="loading-line-animation-3"></div>
                    </div>
                    <div class="column" data-ix="column-hover-2">
                        <div class="circle" data-ix="pop-in-2"></div>
                        <div class="straight-line-full" data-ix="loading-line-animation">
                            <div class="straight-line-full"></div>
                        </div>
                        <div class="straight-line-full" data-ix="loading-line-animation-2">
                            <div class="straight-line-full"></div>
                        </div>
                        <div class="straight-line-full" data-ix="loading-line-animation-3">
                            <div class="straight-line-full"></div>
                        </div>
                    </div>
                    <div class="column" data-ix="column-hover-3">
                        <div class="circle" data-ix="pop-in-3"></div>
                        <div class="straight-line-full" data-ix="loading-line-animation">
                            <div class="straight-line-full"></div>
                        </div>
                        <div class="straight-line-full" data-ix="loading-line-animation-2">
                            <div class="straight-line-full"></div>
                        </div>
                        <div class="straight-line-full" data-ix="loading-line-animation-3">
                            <div class="straight-line-full"></div>
                        </div>
                    </div>
                    <div class="string-block" data-ix="hovering-on-load-string-block">
                        <div class="square">
                            <div class="connector-bar"></div>
                        </div>
                        <div class="_2 square"></div>
                        <div class="_3 square">
                            <div class="connector-bar"></div>
                        </div>
                    </div>
                    <div class="bottom text-like-box v2 w-clearfix" data-ix="column-hover">
                        <div class="straight-line-full" data-ix="loading-line-animation"></div>
                        <div class="straight-line-full" data-ix="loading-line-animation-2"></div>
                        <div class="straight-line-full" data-ix="loading-line-animation-3"></div>
                        <div class="straight-line-full" data-ix="loading-line-animation-6-long"></div>
                        <div class="shortened straight-line-full" data-ix="loading-line-animation-4-shortened"></div>
                        <div class="mountain-photo__real-deal small" data-ix="column-hover">
                            <div class="mountain shrunked" data-ix="mountain-slide-in-from-left"></div>
                            <div class="_2 mountain shrunked" data-ix="mountain-slide-in"></div>
                        </div>
                        <div class="mountain-photo__real-deal no-mountains small" data-ix="column-hover"></div>
                    </div>
                </div>
                <div class="bottom text-like-box" data-ix="column-hover">
                    <div class="straight-line-full" data-ix="loading-line-animation"></div>
                    <div class="straight-line-full" data-ix="loading-line-animation-2"></div>
                    <div class="straight-line-full" data-ix="loading-line-animation-3"></div>
                    <div class="shortened straight-line-full" data-ix="loading-line-animation-4-shortened"></div>
                </div>
                <div class="bottom-line-bar" data-ix="column-hover-3"></div>
                <div class="circle-tower" data-ix="column-hover">
                    <div class="circle-top w-preserve-3d"></div>
                    <div class="_2 circle-top w-preserve-3d"></div>
                    <div class="_3 circle-top"></div>
                </div>
            </div>
        </div>
    </div>
</template>
<script setup>

</script>
<style scoped>
@import '~/assets/css/bootstrap.min.css';
@import '~/assets/css/reveal.css';
@import '~/assets/css/style.css';
</style>
