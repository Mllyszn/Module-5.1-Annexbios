<?php

// //API Connection
$ch = curl_init();
curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, true);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
curl_setopt($ch, CURLOPT_URL, 'https://annexbios-server.onrender.com/api/movies');
$result = curl_exec($ch);
curl_close($ch);

$obj = json_decode($result, true);
//echo '<pre>'; print_r(value: $obj); echo '</pre>';


