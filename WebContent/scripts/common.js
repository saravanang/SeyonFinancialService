var myCalendar;
function doOnLoad() {
    //var myCalendar = new dhtmlXCalendarObject([{input: "ebdate", button: "calender_icon"}, {input: "ecfdate",
    //    button: "calender_icon"},]);
	myCalendar = new dhtmlXCalendarObject(["ebdate","eedate","ejdate","epcfdate","epctdate"]);	 
	myCalendar.hideTime();
    myCalendar.setDateFormat("%d/%m/%Y");
    var t = new Date();
}
function setSens(id, k) {
    // update range
    if (k == "min") {
        myCalendar.setSensitiveRange(byId(id).value, null);
    } else {
        myCalendar.setSensitiveRange(null, byId(id).value);
    }
}
function byId(id) {
    return document.getElementById(id);
}	


 