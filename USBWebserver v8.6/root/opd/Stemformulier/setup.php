<?php
	session_start() ;
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<script type="text/javascript">
	function show_confirm()	{
		alert("Namen succesvol geupdate!") ;
		location = "setup.php";
	}
	function redirect() {
	 location = "setup.php" ;
	}
	function controle(){
			alert("U heeft een fout aantal ingegegeven!") ;
	}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Stem setup</title>
</head>
<body bgcolor="#EAFFFE">
<?php
	if (isset($_SESSION["validated"]) && $_SESSION["validated"] == true) {
		mysql_connect("localhost","root","") ;
		$db = mysql_select_db("openbedrijvendag") ;
		
		echo "<center><form method='post' action=''>" ;
		echo "<input type='submit' name='afmelden' value='afmelden ):'>" ;
		echo "<table border='0'>" ;
		echo "<tr><td>Nummer</td><td align='center'>Naam</td></tr>" ;
		$teller = 1 ;
		$query = mysql_query("SELECT * FROM Stemmen ORDER BY Bedrijfje") ;
		while ($array = mysql_fetch_array($query)) {
			echo "<tr><td>".$array['Bedrijfje']."</td><td><input size='64' name=$teller type='text' value='".$array['Naam']."'</td></tr>" ;
			$teller++ ;
		}
		echo "<tr> <td colspan='2' align='center'><input type='submit' name='submit' value='Update'></td><td></td></tr>" ;
		echo "</table>" ;
		echo "<p>Als u alles wilt resetten moet u gewoon de pagina herladen.</p>" ;
		echo "<input type='submit' name='nieuw' value='Nieuwe Database'>Aantal bedrijven:<input name='aantal' type='text'><br><br>" ;
		echo "<strong>OPGELET: Als u een niewe database maakt worden alle andere gegevens verwijderd!</strong></form> </center>" ;
		//unset($_SESSION["validated"]) ;	
	}else {
		echo "<br><br><br><center>Geef hier het passwoord in: <form action='' method='post'><input type='password' name=password><input type='submit' value='Log in' name='knop'></form></center>" ;
	}
	
	//Submit knop
	if (isset($_POST['submit'])) {
		while ($teller > 1){
			$teller-- ;
			mysql_query("UPDATE Stemmen SET Naam='".$_POST[$teller]."' WHERE Bedrijfje=$teller") ;
		}
		echo "<script>show_confirm()</script>" ;
	}	
	//Nieuwe database
	if (isset($_POST['nieuw']) && isset($_POST['aantal']) && $_POST['aantal'] != "") {
		$aantal = $_POST['aantal'] ;
		mysql_query("DELETE FROM Stemmen WHERE 1=1") ;
		while ($aantal > 0) {
			mysql_query("INSERT INTO stemmen (Bedrijfje, Naam, Aantal) VALUES ($aantal, '', 0)") ;
			$aantal-- ;
		}
		echo "<script>redirect()</script>" ;
	}
	//Afmelden
	if (isset($_POST['afmelden'])) {
		unset($_SESSION['validated']) ;
		echo "<script>redirect()</script>" ;
	}

	//Passwoord controle
	if (isset($_POST['knop'])) 
		if ($_POST['password'] == "tomnijs") {
			$_SESSION["validated"] = true ;
			echo "<script>redirect()</script>" ;
		}
?>
</body>
</html>