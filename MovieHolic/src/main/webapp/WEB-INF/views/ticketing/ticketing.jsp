<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <title>Ticketing</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        $(document).ready(function() {
            // 지역 목록 최초 출력
            $.ajax({
                url: "/getLocalList",
                type: "GET",
                success: function(data) {
                    var localButtons = "";
                    for (var i = 0; i < data.length; i++) {
                        localButtons += "<button class='localButton' data-local='" + data[i].local + "'>" + data[i].local + "</button>";
                    }
                    $("#localButtonsContainer").html(localButtons);
                },
                error: function(xhr, status, error) {
                    console.log(error);
                }
            });

            // 지역 선택 시 극장 목록 출력
            $(document).on("click", ".localButton", function() {
                var selectedLocal = $(this).data("local");
                $.ajax({
                    url: "/theaterList",
                    type: "GET",
                    data: { local: selectedLocal },
                    success: function(data) {
                        var theaters = "";
                        for (var i = 0; i < data.length; i++) {
                            theaters += "<li>" + data[i].name + "</li>";
                        }
                        $("#theaterList").html(theaters);
                    },
                    error: function(xhr, status, error) {
                        console.log(error);
                    }
                });
            });
        });
    </script>
</head>
<body>
    <h1>Ticketing</h1>

    <div id="localButtonsContainer"></div>

    <ul id="theaterList"></ul>
</body>
</html>
