Future login()async{
    var url = "http://192.168.1.34/sihlogin/login.php";
    var response = await http.post(url,body: {
        "UNAME" : user.text,
        "UPASS" : pass.text,
    });
    var data = json.decode(response.body);
    if(data=="Success"){
        Fluttertoast.showToast(
        msg: "Login Successful",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
        );
        Navigator.push(context, MaterialPageRoute(builder: (context) => Welcome()))
    }
    else {
        Fluttertoast.showToast(
        msg: "Username and/or password incorrect",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
        );
        Navigator.push(context, MaterialPageRoute(builder: (context) => Welcome()))
    }
}