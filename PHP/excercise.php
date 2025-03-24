<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Php Exercise</title>
</head>
<body>
<h1>Php Exercise</h1>
<?php
// Exercise 1: Variables and Operators
echo "Exercise 1: Variables and Operators <br>";
$a = 15;
$b = 7;
$sum = $a + $b;
$diff = $a - $b;
$prod = $a * $b;
$quot = $a / $b;

echo "The sum of $a and $b is $sum.<br>";
echo "The difference of $a and $b is $diff.<br>";
echo "The product of $a and $b is $prod.<br>";
echo "The quotient of $a and $b is $quot.<br>";
?>

<br>

<?php
// Exercise 2: Conditional Statements
echo "Exercise 2: Conditional Statements <br>";

$number = 10;
echo "The number is $number <br>";

if ($number % 2 == 0) {
    echo "The number is even ";
} else {
    echo "The number is odd ";
}

if ($number > 0) {
    echo "and the number is positive.<br>";
} elseif ($number < 0) {
    echo "and the number is negative.<br>";
} else {
    echo "and the number is zero.<br>";
}

?>
<br>
<?php
// Exercise 3: Loops
echo "Exercise 3: Loops <br>";
for ($i = 1; $i <= 100; $i++) {
    if ($i % 3 == 0 && $i % 5 == 0) {
        echo " Fizz Buzz ";
    } elseif ($i % 3 == 0) {
        echo " Fizz ";
    } elseif ($i % 5 == 0) {
        echo " Buzz ";
    } else {
        echo " $i ";
    }
}

$fib1 = 0;
$fib2 = 1;
$count = 0;
echo "<br>";
echo "<br>";
echo "Even Fibonacci numbers:<br>";

while ($count < 10) {
    $next = $fib1 + $fib2;
    if ($next % 2 == 0) {
        echo "$next<br>";
    }
    $fib1 = $fib2;
    $fib2 = $next;
    $count++;
}
?>

<br>

<?php
// Exercise 4: Functions
function greet($name) {
    return "Hello, " . $name . "!";
}

function square($num) {
    return $num * $num;
}

// Exercise 5: PHP script to display the submitted text
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $name = $_POST["name"];
    $number = $_POST["number"];

    if (!empty($name)) {
        echo "<p>" . greet($name) . "</p>";
    }

    if (!empty($number)) {
        echo "<p>The square of $number is: " . square($number) . "</p>";
    }
}
?>

<!-- Exercise 5: Form Handling -->
<form method="post">
    <h3>Name:</h3> <input type="text" name="name">
    <h3>Number:</h3> <input type="number" name="number">
    <input type="submit" value="Submit">
</form>

</body>
</html>
