const base = {
    get() {
        return {
            url : "http://localhost:8080/springboot65276/",
            name: "springboot65276",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/springboot65276/front/h5/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "微信小程序的校园自助打印系统"
        } 
    }
}
export default base
