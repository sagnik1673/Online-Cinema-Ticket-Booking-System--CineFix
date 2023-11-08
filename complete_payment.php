<?php
session_start();

if (!isset($_SESSION['user'])) {
    header('location: login.php');
    exit(); // Ensure you exit after the header redirection.
}

include('config.php');
extract($_POST);

// Verify the OTP code here and set $_SESSION variables accordingly.
if ($otp == "123456") {
    $bookid = "BKID" . rand(1000000, 9999999);
    mysqli_query($con, "INSERT into tbl_bookings values (NULL, '$bookid', '" . $_SESSION['theatre'] . "', '" . $_SESSION['user'] . "', '" . $_SESSION['show'] . "', '" . $_SESSION['screen'] . "', '" . $_SESSION['seats'] . "', '" . $_SESSION['amount'] . "', '" . $_SESSION['date'] . "', CURDATE(), 1)");
    $_SESSION['success'] = "Booking Done!";
} else {
    $_SESSION['error'] = "Payment Failed";
}

?>
<!DOCTYPE html>
<html>

<head>
    <title>Processing Payment</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body>
    <table align='center'>
        <tr>
            <td><strong>Transaction is being processed,</strong></td>
        </tr>
        <tr>
            <td>
                <font color='blue'>Please Wait <i class="fa fa-spinner fa-pulse fa-fw"></i>
                    <span class="sr-only">
                </font>
            </td>
        </tr>
        <tr>
            <td>(Do not 'RELOAD' this page or 'CLOSE' this page)</td>
        </tr>
    </table>
    <h2>
        <script>
            setTimeout(function () {
                window.location = "profile.php";
            }, 3000);
        </script>
    </h2>
</body>

</html>