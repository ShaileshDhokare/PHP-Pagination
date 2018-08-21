<?php

$conn = new mysqli('localhost', 'root', '', 'learning_php');

if (!conn){
	echo mysqli_connect_error();
}