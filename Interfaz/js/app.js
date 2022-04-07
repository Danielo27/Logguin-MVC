
function changeOption($id,$btn){

    if($id == "loggin"){
        document.getElementById('home').style.display = 'none'; 
        document.getElementById('register').style.display = 'none'; 
        document.getElementById('home_btn').classList.remove("active");
        document.getElementById('register_btn').classList.remove("active");
    }else if($id == "home"){
        document.getElementById('loggin').style.display = 'none'
        document.getElementById('register').style.display = 'none'; 
        document.getElementById('loggin_btn').classList.remove("active");; 
        document.getElementById('register_btn').classList.remove("active");
    }else{
        document.getElementById('loggin').style.display = 'none';
        document.getElementById('home').style.display = 'none'; 
        document.getElementById('loggin_btn').classList.remove("active");; 
        document.getElementById('home_btn').classList.remove("active");
    }
    document.getElementById($id).style.display = 'block'; 
    document.getElementById($btn).classList.add("active");
    
    
}
