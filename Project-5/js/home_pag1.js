var mySwiper = new Swiper('.swiper-container', {
    // direction: 'vertical', // 垂直切换选项
    loop: true, // 循环模式选项  
    // 如果需要分页器
    pagination: {
        el: '.swiper-pagination',
    },
    // 如果需要前进后退按钮
    navigation: {
        nextEl: '.swiper-button-next',
        prevEl: '.swiper-button-prev',
    }
})
//请求数据
//请求数据
let $ = ele => {
    if (ele[0] === "#") {
        return document.querySelector(ele)
    } else {
        return document.querySelectorAll(ele)
    }
}
let c = ele => { return document.createElement(ele) }
//封装ajax
let ajax_get = function (url, data) {
    return new Promise((resolve, reject) => {
        let xhr = new XMLHttpRequest
        xhr.open("get", `${url}?${data}`, true)
        xhr.send()
        xhr.onreadystatechange = function () {
            if (xhr.readyState === 4 && xhr.status === 200) {
                resolve(xhr.responseText)
            }
        }
    })
}
//当页面加载完成时
window.onload = function () {
    let url = "http://10.0.6.228/week8/api/get_product.php";
    ajax_get(url).then(function (res) {
        let arr = JSON.parse(res)
        // console.log(arr);
        //调用函数渲染页面
        creat_table(arr)
    })
}
let ajax_post = function (url, data) {
    return new Promise((resolve, reject) => {
        let xhr = new XMLHttpRequest
        xhr.open("post", url, true)
        xhr.setRequestHeader("content-type", "application/x-www-form-urlencoded")
        xhr.send(data)
        xhr.onreadystatechange = function () {
            if (xhr.readyState === 4 && xhr.status === 200) {
                resolve(xhr.responseText)
            }
        }
    })
}

if (!localStorage.getItem("shopping_cart")) {
    localStorage.setItem("shopping_cart", "[]")
}
//构建渲染函数
let creat_table = function (arr) {
    let section = document.querySelector("section")
    for (let item of arr) {
        let div = document.createElement("div")
        div.className = "zs";
        div.innerHTML =
            `<div class="zs_shang">
                <img src="http://10.0.6.228/week8/img/${item.product_img_path}" alt="">
            </div>`
        let div1 = c("div")
        div1.className = "zs_xia"
        div1.innerHTML = `
            <div class="zs_xia_top">${item.product_name}</div>
            <div class="zs_xia_mid">
                <em>￥</em>${item.product_price}
            </div>
        `
        let div2 = c("div")
        div2.className = "zs_xia_bot"
        div2.innerHTML = `
            <button>收藏商品</button>
            `
        let btn = c("input")
        btn.type = "button"
        btn.value = "立即购买"
        btn.className = "goumai"


        let url = "http://10.0.6.228/week8/api/get_cart.php"
        let data_arr = JSON.parse(localStorage.getItem("shopping_cart"))
        // 通过ajax请求获取数据库的数据，并添加到data_arr中
        ajax_get(url).then(function (res) {
            let json = JSON.parse(res)
            json.forEach(element => {
                data_arr.push(element)
            });
        })

        btn.onclick = function () {
            // 从localStorage取出shopping_cart
            let arr = JSON.parse(localStorage.getItem("shopping_cart"))
            // 判断data_arr是否包含点击的商品
            let result = arr.some(function (ele) {
                return ele.product_id === item.product_id
            })
            // 如果有，就让她的number+1，如果没有，将number值初始化为1，并加入到data_arr
            if (result) {
                arr.forEach(items => {
                    if (items.product_id === item.product_id) {
                        items.product_number++
                    }
                })
            } else {
                item.product_number = 1
                arr.push(item)
            }
            //将添加好的data_arr存放到localStorage
            localStorage.setItem("shopping_cart", JSON.stringify(arr))
            // 从localStorage取出shopping_cart
            let cart = JSON.parse(localStorage.getItem("shopping_cart"))
            // console.log(cart);
            let url = "http://10.0.6.228/week8/api/add_cart.php"
            // 循环遍历每一个cart
            for (let i in cart) {
                if(cart[i].product_id === item.product_id){
                    let str = `product_id=${cart[i].product_id}&product_name=${cart[i].product_name}&product_price=${cart[i].product_price}&product_num=${cart[i].product_num}&product_img_path=${cart[i].product_img_path}&product_category=${cart[i].product_category}&product_number=${cart[i].product_number}`
                    ajax_post(url, str).then(function (res) {
                        let json = JSON.parse(res)
                        if (json.ok) {
                            console.log("添加到购物车成功");
                        } else {
                            console.log("添加到购物车失败");
                        }
                    })
                }                
            }
        }

        section.appendChild(div);
        div1.appendChild(div2)
        div2.appendChild(btn)
        div.appendChild(div1);
    }
}



var mySwiper = new Swiper('.swiper-container', {
    direction: 'horizontal',
    loop: true,
    autoplay: true,
    speed: 2000,
    autoplayDisableOnInteraction: false,
})





function fun(e) {
    let res = localStorage.getItem("txt")
    res = e.innerText
    localStorage.setItem("txt", res)
    location.href = "./Serach_res_page.html"
}


