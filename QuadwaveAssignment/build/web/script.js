var names = {
    1: "ABC",
    2: "DEF",
    3: "GHI",
    4: "JKL",
    5: "MNO",
    6: "PQR",
    7: "STU",
    8: "VWX",
    9: "XYZ",
    10: "NSE"
};

$("#eid").on("change", function () {
    var eid = $("#eid").val();
    if (eid == "")
        $("#name").val("");
    else
        $("#name").val(names[eid]);
})

$(".save_btn").on("click", function () {
    var eid = $("#eid").val();
    var name = $("#name").val();
    var yoe = $("#yoe").val();
    var desg = $("#desg").val();
    if (eid == "" || yoe == "" || desg == "")
        alert("Please Enter All Details");
    else {
        var flag = 0;
        var table = document.getElementById("tab");
        var elements = table.getElementsByTagName("tr");
        for (var i = 1; i < elements.length; i++) {
            var element = elements[i].getElementsByTagName("td")[0].innerText;
            if (element == eid) {
                alert("Employee Already Exist");
                flag = 1;
                break;
            }
        }
        if (flag == 0) {
            const d = new Date();
            var date = d.getDate() + "-" + d.getMonth() + "-" + d.getFullYear();
            $("#tbody").append('<tr><td>' + eid + '</td><td>' + name + '</td><td>' + date + '</td><td>' + yoe + '</td><td>' + desg + '</td></tr>');
            var eid = $("#eid").val("");
            var name = $("#name").val("");
            var yoe = $("#yoe").val("");
            var desg = $("#desg").val("");
            $('#exampleModalCenter').modal('toggle');
        }
    }
})

$("#search").on("keyup", function () {
    var search_name = $("#search").val().toUpperCase();
    var table = document.getElementById("tab");
    var elements = table.getElementsByTagName("tr");
    for (i = 1; i < elements.length; i++) {
        var element = elements[i].getElementsByTagName("td")[1];
        if (element) {
            table_name = element.innerText;
            if (table_name.toUpperCase().indexOf(search_name) > -1) {
                elements[i].style.display = "";
            } else {
                elements[i].style.display = "none";
            }
        }
    }
})


