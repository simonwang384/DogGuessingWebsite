<!DOCTYPE html>
<html>

<head>
  <title>Dog FlashCard</title>
  <script src="A6.js"></script>
  <link rel="stylesheet" type="text/css" href="style.css">
</head>

<body>
   <?php
    $user = "root";
    $pword = "";
    $dbase = "flashcards";
    $table = "Dogs";
    print ("  <h1>$table</h1>\n");
    print ("  <div>\n");
    $mydb = new mysqli('localhost', $user, $pword, $dbase);
    if ($mydb->connect_error) {
      die( "Failed to connect to MySQL: " . $mydb->connect_error);
    }
    $query = "SELECT name, url FROM $table ORDER BY rand() LIMIT 4;";
    $result = $mydb->query($query);
    $mydb->close();
    $row = $result->fetch_assoc();
    print ("    <img id=\"picture\" src=\"$row[url]\" alt=\"$row[name]\">\n");
    $correct_name = $row["name"];

    print ("<script>\n");
    print ("  answer = \"$correct_name\";\n");
    print ("</script>\n");

    $labels = array();
    array_push($labels, $correct_name);
    while ($row = $result->fetch_assoc()) {
      $labels[] = $row["name"];
    }

    shuffle($labels);

    print ("  </div>\n");
    print ("  <form>\n");
    print ("    <div>\n");
    print ("      <input id =\"button1\" type=\"button\" value=\"$labels[0]\">\n");
    print ("      <input id =\"button2\" type=\"button\" value=\"$labels[1]\">\n");
    print ("      <input id =\"button3\" type=\"button\" value=\"$labels[2]\">\n");
    print ("      <input id =\"button4\" type=\"button\" value=\"$labels[3]\">\n");
  ?>

    </div>
    <div>
      
      <div>
        <span id="display2"></span>
        <span class = "right" id="display3"></span>
      </div>
      <input id="answer" type="button" value="Answer" onClick="correctAns()">
      <input id="next" type="button" value="Next" onClick="location.reload()">
    </div>
  </form>

</body>

</html>

