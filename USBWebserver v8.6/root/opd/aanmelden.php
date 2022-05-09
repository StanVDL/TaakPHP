<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Examen kerstmis</title>
</head>

<body>

<FORM METHOD="post" ACTION="">
<TABLE>
<TR>
<TD>Gebruikersnaam</TD><TD><INPUT TYPE="text" NAME="gebruikersnaam"
														value="<?php if(isset($_POST['submit'])){echo ''.$_POST['gebruikersnaam'].'';} ?>"></TD>
</TR>
<TR>
<TD>Wachtwoord</TD><TD><INPUT TYPE="text" NAME="wachtwoord"
												value="<?php if(isset($_POST['submit'])){echo ''.$_POST['wachtwoord'].'';} ?>"></TD>
</TR>
<TR>
<TD><INPUT TYPE="submit" NAME="submit" VALUE="Versturen"></TD><TD></TD>
</TR>
</TABLE>

</FORM>

<?php
session_start();

if(isset($_POST['submit'])){
	$gebruikersnaam = $_POST['gebruikersnaam'];
	$wachtwoord = $_POST['wachtwoord'];
	
	$con = mysql_connect('localhost','root','');
	mysql_select_db('examen',$con);
	$query = "SELECT * FROM gebruikers WHERE gebruikersnaam='$gebruikersnaam' AND wachtwoord='$wachtwoord'";
	$resultaat = mysql_query($query,$con);
	
	if(!empty($gebruikersnaam) && !empty($wachtwoord) && mysql_num_rows($resultaat) >= 1){
		$_SESSION['valid_user'] = $gebruikersnaam;
		echo "Aanmelden gelukt!<br>";
		echo "<a href='stem.php'>Geef je stem in.</a>";
	} else {
		$query_poging = "SELECT userid,pogingen FROM gebruikers WHERE gebruikersnaam='$gebruikersnaam'";
		$resultaat_poging = mysql_query($query_poging,$con);
		$rij = mysql_fetch_array($resultaat_poging);
		
		$poging = $rij['pogingen'];
		$poging++;
		$userid = $rij['userid'];
		$pogingen = "UPDATE gebruikers SET pogingen=$poging WHERE userid=$userid";
		mysql_query($pogingen,$con);
		
		echo "Aanmelden mislukt.<br>";
		
		if($rij['pogingen'] >=3) {
			$delete_user = "DELETE FROM gebruikers WHERE userid=$userid";
			mysql_query($delete_user,$con);
			echo "U heeft het maximaal aantal pogingen overschreden en kan niet meer aanmelden";
		}
	}
}
?>

</body>
</html>
