<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    <link rel="stylesheet" href="css/autocomplete/autocomplete.css" >

    <script src="js/vendor/jquery.js"></script>
    <script src="js/vendor/jquery-ui.js"></script>
    <script src="js/core/core.js"></script>
    <script src="js/inputtext/inputtext.js"></script>
    <script src="js/autocomplete/autocomplete.js"></script>

    <script type="text/javascript">
        $(function() {

            $('#remote').puiautocomplete({
                effect: 'fade',
                effectSpeed: 'fast',
                completeSource: function(request, response) {
                    $.ajax({
                        type: "GET",
                        url: './webresources/countries',
                        data: {query: request.query},
                        dataType: "json",
                        context: this,
                        success: function(data) {
                            response.call(this, data);
                        },
                        error: function(jqXHR, textStatus, errorThrown) {
                            console.log(textStatus, errorThrown);
                        }
                    });
                }
            });


        });
    </script>
</head>
<body>
    <h1>Hello Primefaces World!</h1>

    <h3 class="title title-short">Remote</h3>
    <input id="remote" name="remote" type="text"/>

</body>
</html>
