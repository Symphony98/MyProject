let $ = ele => { return document.querySelector(ele) }
let c = ele => { return document.createElement(ele) }

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

window.onload = function () {
    let url = "http://10.0.6.228/week8/api/get_cart.php"
    ajax_get(url).then(function (res) {
        let json = JSON.parse(res)
        // console.log(json);
        creat_table(json)
    })
}
let creat_table = function (arr) {
    $("main").innerHTML = ""
    let num = 0
    for (let item of arr) {
        let div = c("div")
        div.className = "tr1"
        let div1 = c("div")
        div1.className = "content"
        div1.innerHTML = `
            <div class="detail">
                <div class="pic">
                    <img src="http://10.0.6.228/week8/img/${item.product_img_path}" alt="">
                </div>
                <div class="txt">
                    <p>${item.product_name}</p>
                    <p>类别：${item.product_category}</p>
                    <p>数量：${item.product_number}</p>
                </div>
            </div>
        `
        let div2 = c("div")
        div2.className = "price"
        div2.innerHTML = `
            <br/>
            ￥${item.product_price}
        `
        let btn = c("input")
        btn.type = "button"
        btn.value = "删除商品"
        btn.onclick = function () {
            let url = "http://10.0.6.228/week8/api/del_cart.php"
            let str = `product_id=${item.product_id}`
            ajax_post(url, str).then(function (res) {
                let json = JSON.parse(res)
                if (json) {
                    alert("删除成功")
                    let url = "http://10.0.6.228/week8/api/get_cart.php"
                    ajax_get(url).then(function (res) {
                        let json = JSON.parse(res)
                        // console.log(json);
                        creat_table(json)
                    })
                } else {
                    alert("删除失败")
                }
            })
            let data_arr = JSON.parse(localStorage.getItem("shopping_cart"))
            console.log(data_arr);
            data_arr.forEach((items,index) => {
                if(data_arr[index].product_id === item.product_id){
                    data_arr.splice(index,1)
                }
            });
            localStorage.setItem("shopping_cart",JSON.stringify(data_arr))
        }

        div.appendChild(div1)
        div.appendChild(div2)
        div2.appendChild(btn)
        $("main").appendChild(div)

        num += item.product_price * item.product_number

        let input = c("input");
        input.className = "xk";
        input.type = "checkbox"
        div.appendChild(input)
    }
    let div = c("div")
    div.className = "tip"
    div.innerText = `结算：${num}`

    $("main").appendChild(div)

     //创建全选删除按钮
     let button = c("button");
     button.className = "btn btn-danger";
     button.innerText = "删除所选";
     $("main").appendChild(button)
 
 
     let xks = document.querySelectorAll(".xk")
     button.onclick = function(){
         for(let i=0;i<xks.length;i++){
             if(xks[i].checked){
                  xks[i].parentNode.parentNode.removeChild(xks[i].parentNode)
                 // console.log(xks[i].parentNode);
             }
         }
     }
}