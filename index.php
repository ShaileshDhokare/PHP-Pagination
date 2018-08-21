<?php
require_once 'connection.php';

?>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="CSS/bootstrap.css">
    <title>PHP Pagination</title>
</head>
<body>
<header class="rounded bg-dark p-3 text-warning m-3">
    <h2>PHP Pagination</h2>
</header>
<div class="col">
    <div class="row" id="content">
<!--        loading content here using ajax-->

    </div>
    <div class="clearfix"></div>
    <br><br>

    <!-- craeting pagination dynamically using PHP  -->
    <div>
        <ul class="pagination pagination-sm justify-content-center">
            <li class="page-item"><a class="page-link" id="previous" href="#">Previous</a></li>

            <?php

            $sql = "SELECT COUNT(*) AS total FROM `country`";
            $result = $conn->query($sql);
            $row = $result->fetch_array();
            $count = $row['total'];
            $srno = 1;
//            loading total count and setting up 5 items per page
            for ($i = 0; $i < $count; $i += 5) {
                echo '
                <li class="page-item"><a class="page-link" href="#" onclick="getData(' . $i . ',5,this)">' . $srno . '</a></li>
                ';
                $srno++;
            }

            ?>

            <li class="page-item"><a class="page-link" id="next" href="#">Next</a></li>
        </ul>
    </div>
</div>
<script type="text/javascript" src="Script/jquery-3.3.1.min.js"></script>
<script type="text/javascript">

    // loading default first 5 items
    $(document).ready(function () {
        getData(0, 5);
        $('.page-item:nth-child(2)').addClass('active');
        $('.page-item:first').addClass('disabled');

    })

    // loading items dynamically on page link

    function getData(start, limit, id) {
        var pstart = start - 5;
        var nstart = start + 5;
        var item;

        //showing active page

        $('.page-item:first').removeClass('disabled');

        if ($(id).html() == 'Previous') {
            item = $('.pagination').find('.active').prev();
            $('.pagination').find('.active').removeClass('active');
            item.addClass('active');

        } else if ($(id).html() == 'Next') {
            item = $('.pagination').find('.active').next();
            $('.pagination').find('.active').removeClass('active');
            item.addClass('active');
        } else {
            $('.pagination').find('.active').removeClass('active');
            $(id).parent().addClass('active');
        }

        //setting up range for previous and next dynamically

        $('#previous').attr('onclick', 'getData(' + pstart + ', 5,this)');
        $('#next').attr('onclick', 'getData(' + nstart + ', 5,this)');

        // loading items dynamically using ajax

        $.ajax({
            url: 'loaddata.php',
            type: 'POST',
            data: {
                start: start,
                limit: limit,
                getData: 1
            },
            error: function () {
                alert('Error while fetching data');
            },
            success: function (response) {
                $('#content').html('<div class="col-md-1"></div>');
                $('#content').append(response);
            }
        });

        // disable and enable of previous and next after reaching limit

        if ($('.pagination').find('.active').html() == $('.page-item:first').next().html()) {
            $('.page-item:first').addClass('disabled');
        } else {
            $('.page-item:first').removeClass('disabled');
        }

        if ($('.pagination').find('.active').html() == $('.page-item:last').prev().html()) {
            $('.page-item:last').addClass('disabled');

        } else {
            $('.page-item:last').removeClass('disabled');
        }

    }

</script>
</body>
</html>