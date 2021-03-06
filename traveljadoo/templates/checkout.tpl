<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
		<!-- TMPL_INCLUDE NAME="googletracker.tpl" -->
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
		<link rel="stylesheet" href="<!-- TMPL_VAR NAME=BASEPREFIX -->css/screen.css" type="text/css" media="screen, projection">
		<link rel="stylesheet" href="<!-- TMPL_VAR NAME=BASEPREFIX -->css/print.css" type="text/css" media="print"> 
		<!--[if lt IE 8]><link rel="stylesheet" href="<!-- TMPL_VAR NAME=BASEPREFIX -->css/ie.css" type="text/css" media="screen, projection"><![endif]-->
		<link rel="stylesheet" href="<!-- TMPL_VAR NAME=BASEPREFIX -->css/ch_odyssey.css" type="text/css" media="screen, projection"> 
		<script src="http://maps.google.com/maps?file=api&amp;v=2&amp;sensor=false&amp;key=<!-- TMPL_VAR NAME=GOOGLEKEY -->" type="text/javascript"></script>
		<script type="text/javascript" src="<!-- TMPL_VAR NAME=BASEPREFIX -->js/jquery-1.4.4.min.js"></script>
		<script type="text/javascript" src="<!-- TMPL_VAR NAME=BASEPREFIX -->js/jquery.cycle.min.js"></script>
		<script type="text/javascript" src="<!-- TMPL_VAR NAME=BASEPREFIX -->js/odysseyhotels.js"></script>
		<script type="text/javascript" src="<!-- TMPL_VAR NAME=BASEPREFIX -->js/hotelsearch.js"></script>
		<script type="text/javascript" src="<!-- TMPL_VAR NAME=BASEPREFIX -->js/favourites.js"></script>
		<script type="text/javascript" src="<!-- TMPL_VAR NAME=BASEPREFIX -->js/blk.js"></script>
		<meta name="description" content="<!-- TMPL_VAR NAME=METADESCRIPTION -->" />
		<meta name="keywords" content="<!-- TMPL_VAR NAME=METAKEYWORDS -->" />
		<title>Checkout Page</title>
	</head>
	<body baseprefix="<!-- TMPL_VAR NAME=BASEPREFIX -->">
		<div class="container">
			<div class="span-24 last">
				<!-- TMPL_INCLUDE NAME="bannermenu_splaces.tpl" -->					
			</div>
			<div class="prepend-8 span-8 append-8 last">
				<form method="post" action="<!-- TMPL_VAR NAME=BASEPREFIX -->togateway">
					<fieldset>
						<legend>Confirm your Payment</legend>
						<table>
							<tr><th>Party</th><th><!-- TMPL_VAR NAME=lead --></th></tr>
							<tr><td>Amount to be paid:</td><td><!-- TMPL_VAR NAME=balamt --></td></tr>
							<tr><td><strong>Total</strong></td><td><strong><!-- TMPL_VAR NAME=balamt --></strong></td></tr>
						</table>
						<input type="hidden" name="balamt" value="<!-- TMPL_VAR NAME=balamt -->" />
						<p style="text-align: center;">
							<input type="submit" name="checkout" value="I Confirm" />
						</p> 
					</fieldset>
				</form>
			</div>
		</div>
		<div class="container">
			<div class="span-24 last">
				<div id="footer">
					<!-- TMPL_INCLUDE NAME=footer.tpl -->
				</div>
			</div>
        </div>
	</body>
</html>
