<html>
<head>
    <title></title>
    <SCRIPT type="text/javascript" lang="javascript" src="https://cdns.gigya.com/js/gigya.js?apikey=3_gvfdY-lsFNCsQn4rb_8QLOqjmurKt2z38fRkdiCVJCq-7qAcxrBsMipEqKa8UGcZ"></SCRIPT>
</head>
<body>
<div id="runningCodeExample" style="border: 1px solid skyblue; padding: 15px; width: 300px;">
<a href="#" onclick="gigya.accounts.showScreenSet({screenSet:'D'});">hola</a>&nbsp;&nbsp;|&nbsp;&nbsp;
        <a href="#" onclick="gigya.accounts.showScreenSet({screenSet:'Default-ProfileUpdate', startScreen:'gigya-register-screen'});">Register</a>
        </br></br></br>
        <a href="#" onclick="gigya.accounts.showScreenSet({screenSet:'Default-ProfileUpdate'});">Edit Your Profile</a>
        </br></br></br>
        <a href="#" onclick="gigya.accounts.logout({callback:onLogout});">Logout</a>
<script>
    function onLogout(response) {
        if ( response.errorCode == 0 ) {
            alert('You are now logged out');
        }
        else {
            alert('Error :' + response.errorMessage);
        }
    }
</script></div>
</body></html>