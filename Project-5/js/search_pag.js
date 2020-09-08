function $(e) {return document.querySelector(e)}
function c(e) {return document.createElement(e)}

if(!localStorage.getItem("txt")){
    localStorage.setItem("txt","")
}

$("#btn").onclick = function(){
    let txt = $("#text").value
    let s = localStorage.getItem("txt")
    s = txt
    localStorage.setItem("txt",s)
    location.href = "./serach_res.html"
}