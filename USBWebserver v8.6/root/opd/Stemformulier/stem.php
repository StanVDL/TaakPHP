<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Stem formulier</title>
<script type="text/javascript">

	function succes() {
	 location = "succes.php" ;
	}
	function faal() {
	 location = "faal.php" ;
	}
</script>
</head>
<body bgcolor="#EAFFFE">
<img height="164" Width="250" src="logo_sma_secundair.png" alt="sma_logo" align="left" hspace="64">
<h1>Stembiljet beste stand</h1>
<p>Gelieve 3 stemmen uit te brengen.(niet meer of minder) </p>
<form action="" method="POST">
<?php
	//Geef hier het aantal standjes in.
	mysql_connect("localhost","root","") ;
	$db = mysql_select_db("openbedrijvendag") ;
	$query = mysql_query("SELECT * FROM stemmen") ;
	$teller = mysql_num_rows($query) ;
	$aantal_standjes = $teller;
	
	//Variabelen
	$eenkeer = false ;
	$aantal_rows = ceil($aantal_standjes / 10) ;
	//Tabel generatie code
	echo "<table align='center' width='90%' height='500' border='2' cellpadding='0' cellspacing='0'>" ;
	//Kolomen
	for ($i = 1; $i <= 10; $i++) {
		echo "<tr>" ;
			//Rijen
			for ($j = 0; $j < $aantal_rows; $j++) {
				$nummer = $i + $j * 10 ;
				if($nummer <= $aantal_standjes) {
					//De eerste rij is speciaal omdat hij de rowspan velden heeft.
					$query = mysql_query("SELECT * FROM stemmen WHERE Bedrijfje=$nummer") ;
					$array = mysql_fetch_array($query) ;
					if($i == 1){
						echo "<td width = '30' align='center' bgcolor='white'><strong>$nummer</strong></td>\n" ;
						echo "<td align='center' bgcolor='white'>".$array['Naam']."</td>\n" ;
						echo "<td width = '30' align='center' bgcolor='white'><input name='checkbox_".$nummer."' type='checkbox'/></td>\n" ;
						if($j != ($aantal_rows - 1))	
							echo "<td rowspan='10' bgcolor='#CCFFFF' width='50'></td>\n" ;
					}else {				
						echo "<td align='center' bgcolor='white'><strong>$nummer</strong></td>\n" ;
						echo "<td align='center' bgcolor='white'>".$array['Naam']."</td>\n" ;
						echo "<td align='center' bgcolor='white'><input name='checkbox_".$nummer."' type='checkbox'/></td>\n" ;
					}
				}
			}
 		echo "</tr>" ;
	}
	echo "</table>" ;	
?>
<center><input name="Stem" value="Stuur stemmen in" type="submit" /></center>
</form>
<h5>Made by 6 informaticabeheer, (Micheal Schwaenen & Tom Nijs)!</h5>
<?php
	if (isset($_POST['Stem'])) {
		$teller = 0;
		$stem1 ;
		$stem2 ;
		$stem3 ;
		
		for ($i = 1; $i <= $aantal_standjes; $i++) {
			if(isset($_POST['checkbox_'.$i])){
				$teller++ ;
				if(!isset($stem1))
					$stem1 = $i ;
				elseif(!isset($stem2))
					$stem2 = $i ;
				else
					$stem3 = $i ;
			}
		}
		
		if($teller != 3)
			echo "<script>faal()</script>" ;
		else{
			mysql_connect("localhost","root","") ;
			mysql_select_db("openbedrijvendag") ;
		
			$query = mysql_query("SELECT * FROM stemmen WHERE bedrijfje = $stem1 OR bedrijfje = $stem2 OR bedrijfje = $stem3") ;
			
			while($stem = mysql_fetch_array($query)){
				$stem['Aantal']++ ;
				mysql_query("UPDATE stemmen SET Aantal = ".$stem['Aantal']." WHERE Bedrijfje = '".$stem['Bedrijfje']."'") ;
			}
		
			echo "<script>succes()</script>" ;
		}
	}
?>
</body>
</html>

