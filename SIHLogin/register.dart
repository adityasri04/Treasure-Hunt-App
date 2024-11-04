Future register()async{
    var url = "http://192.168.1.34/sihlogin/signup.php";
    var response = await http.post(url,body: {
        "UNAME" : user.text,
        "UPASS" : pass.text,
    });

    var data = json.decode(response.body);
    if(data=="Error"){
        Fluttertoast.showToast(
        msg: "This user already exists",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
        );
    }

    else {
        if(data=="Error"){
            Fluttertoast.showToast(
            msg: "This is Center Short Toast",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0
            );
        }

    }
}