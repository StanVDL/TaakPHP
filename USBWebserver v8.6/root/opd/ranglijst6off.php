<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Ranglijst 6OFF</title>
</head>
<body bgcolor="#EAFFFE">
</body>
</html>

<?php
$connect=mysql_connect('localhost', 'root', 'usbw');
mysql_select_db("OpenbedrijvenDag",$connect);

$vraag= "SELECT * FROM stemmen6off ORDER BY Aantal DESC, Naam ";
$resultaat = mysql_query($vraag) or die ("geen res");
$teller = 1;

echo " <table width='50%' bgcolor='white' border='2' align='center'> " ;
echo "	<tr>
		<td width='10%' align='center'><strong>Plaats</strong></td>
		<td width='30%' align='center'><strong>Naam</strong></td>
		<td width='10%' align='center'><strong>Aantal stemmen</strong></td></tr>" ;
while($rij=mysql_fetch_array($resultaat))
	{
		echo "			
		<tr>
		<td width='10%' align='center'>".$teller."</td>
		<td width='30%' align='center'>".$rij['Naam']."</td>
		<td width='10%' align='center'>".$rij['Aantal']."</td>
		</tr>
		" ; 
		$teller++;		
	}
echo "</table>" ;

?>

