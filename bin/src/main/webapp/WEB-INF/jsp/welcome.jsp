<html>
<head>
    <title></title>
    <SCRIPT type="text/javascript" lang="javascript" src="https://cdns.gigya.com/js/gigya.js?apikey=3_UTcWh71Xv1cf5UKfsS4OMZ6tGE10fUF0Dw_8c_ufhKC_apXPIJOP6NS4wpJwWgyt"></SCRIPT>
</head>
<body>
<div id="runningCodeExample" style="border: 1px solid skyblue; padding: 15px; width: 300px;">
<a href="#" onclick="gigya.accounts.showScreenSet({screenSet:'Default-RegistrationLogin', startScreen:'gigya-login-screen'});">Login</a>&nbsp;&nbsp;|&nbsp;&nbsp;
        <a href="#" onclick="registrar()">Register</a>
        </br></br></br>
        <a href="#" onclick="gigya.accounts.showScreenSet({screenSet:'Default-ProfileUpdate'});">Edit Your Profile</a>
        </br></br></br>
        <a href="#" onclick="gigya.accounts.logout({callback:onLogout});"><L></L>Logout</a>
<script>
    function onLogout(response) {
        if ( response.errorCode == 0 ) {
            alert('You are now logged out');
        }
        else {
            alert('Error :' + response.errorMessage);
        }
    }

    function logs(response){
        console.log(response);
    }

    function registrar() {
        //gigya.accounts.showScreenSet({screenSet:'POC-RegistrationLogin'},params);
        console.log('registrar');
        var params = {
            "screenSet": "Default-RegistrationLogin",
            "startScreen": "gigya-register-screen",
            "callback":alCerrar
        }
        gigya.accounts.showScreenSet(params);
    }



    function alCerrar(response) {
        console.log('alCerrar');
        gigya.socialize.getUserInfo({callback:
            function(response) {
                if (response.status === "OK" && response.user != null && response.user.isConnected) {
                    console.log(response);
                }
            }
        });
    }



</script></div>
</body></html>