/**
 * Created by User on 13.10.2016.
 */

//
//$('#MyTab a').click(function (e) {
//    e.preventDefault();
//    $(this).tab('show');
//});
//
//$('#myTabs a[href="#events"]').tab('show'); // Select tab by name
//$('#myTabs a[href="#bio"]').tab('show'); // Select first tab
////$('#myTabs a:last').tab('show') // Select last tab
////$('#myTabs li:eq(2) a').tab('show') // Select third tab (0-indexed)


$('#eventsNav').on('click', function() {
    document.getElementById("bio").style.display = 'none';
    document.getElementById("events").style.display = 'block';
});

$('#bioNav').on('click', function() {
    document.getElementById("events").style.display = 'none';
    document.getElementById("bio").style.display = 'block';
});