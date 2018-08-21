<?php

require_once 'connection.php';

if (isset($_POST['getData'])) {

    $start = $conn->real_escape_string($_POST['start']);
    $limit = $conn->real_escape_string($_POST['limit']);

    $sql="SELECT * FROM `country` LIMIT $start, $limit";

    $result=$conn->query($sql);
    if ($result->num_rows > 0){
        $response="";
        while ($row=$result->fetch_array()){
            $response.='
            <div class="col-md-2">
                <div class="card border border-dark p-1">
                    <div class="card-header bg-dark text text-white">
                        <h3>'.$row['id'].'</h3>
                    </div>
                    <div class="card-body bg-light text-primary">
                        <p>'.$row['country_name'].'</p>
                        <p><small>'.$row['short_desc'].'</small></p>
                    </div>
                </div>
            </div>
            ';
        }
        exit($response);
    } else {
        exit('reachedMax');
    }

}

?>

