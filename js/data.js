var now_utc = Date.now()
var timeoff = new Date().getTimezoneOffset()*60000;
var today = new Date(now_utc-timeOff).toISOString().split("T")
[0];
document.getElementById("Date").setAttribute("max", today);