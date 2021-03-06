<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
		<link rel="stylesheet" href="css/screen.css" type="text/css" media="screen, projection">
		<link rel="stylesheet" href="css/print.css" type="text/css" media="print"> 
		<!--[if IE]><link rel="stylesheet" href="css/ie.css" type="text/css" media="screen, projection"><![endif]-->
		<link rel="stylesheet" href="css/odyssey.css" type="text/css" media="screen, projection"> 
		<script src="http://maps.google.com/maps?file=api&amp;v=2&amp;sensor=true&amp;key=ABQIAAAANNgAl6Yk0J_LHL8ee--iiBRKRT3lEAXbWt9bKSuE5xGrJNjhaBSmYrPob9NYNAyq2W3hgzWgqsVk9g" type="text/javascript">
		</script>
		<script type="text/javascript" src="js/jquery-1.2.6.pack.js"></script>
		<script type="text/javascript" src="js/jquery.cycle.pack.js"></script>
		<script type="text/javascript" src="js/odyssey.js"></script>
		<script type="text/javascript" src="js/otheroptions.js"></script>
		<title>Odyssey: What can you do in <!-- TMPL_VAR NAME=CURRNAME --></title>
	</head>
	<body>
		<div class="container">
			<div class="span-24 last">
				<div class="banner">
					<!-- TMPL_INCLUDE NAME="bannermenu.tpl" -->					
					<p><a href="<!-- TMPL_VAR NAME=OLDLINK -->">Click here to view old template</a></p>
				</div>
			</div>
			<div class="span-24 last city">
				<div class="column span-16 main_consultant">
					<div style="padding-left: 20px;">
						<div class="topcity">
							<h1><!-- TMPL_VAR NAME=CURRNAME --></a></h1>
							<p><img class="status" src="images/city_<!-- TMPL_VAR NAME=CURRID -->_movingon.jpg" width="240" height="150" alt="<!-- TMPL_VAR NAME=NAME -->" /> 
							<!-- TMPL_VAR NAME=CURRWRITEUP --></p>
						</div>
						<!-- TMPL_UNLESS NAME=STARTINGPOINT -->						
						<hr />
						<h1><!-- TMPL_VAR NAME=PAXNAME -->'s Custom Tour Plan</h1>
						<!-- TMPL_VAR NAME=SUMMARY -->
						<!-- /TMPL_UNLESS -->
						&nbsp;
					</div>
					<div class="tooption">
						<h1>Hotels in <!-- TMPL_VAR NAME=CURRNAME --></h1>
						<ul>
							<li><a href="hotel.cgi?mode=describe&id=<!-- TMPL_VAR NAME=DEFAULTHOTELID -->" target="_blank"><!-- TMPL_VAR NAME=DEFAULTHOTELNAME --></a></li>
							<!-- TMPL_LOOP NAME=MODHOTELS -->
							<li><a href="hotel.cgi?mode=describe&id=<!-- TMPL_VAR NAME=HOTELID -->" target="_blank"><!-- TMPL_VAR NAME=HOTELNAME --></a></li>
							<!-- /TMPL_LOOP -->
							<!-- TMPL_LOOP NAME=SUPHOTELS -->
							<li><a href="hotel.cgi?mode=describe&id=<!-- TMPL_VAR NAME=HOTELID -->" target="_blank"><!-- TMPL_VAR NAME=HOTELNAME --></a></li>
							<!-- /TMPL_LOOP -->
							<!-- TMPL_LOOP NAME=LUXHOTELS -->
							<li><a href="hotel.cgi?mode=describe&id=<!-- TMPL_VAR NAME=HOTELID -->" target="_blank"><!-- TMPL_VAR NAME=HOTELNAME --></a></li>
							<!-- /TMPL_LOOP -->
						</ul>
					</div>
				</div>
				<div class="column span-8 last">
					<div class="mapcontainer">
						<!-- TMPL_UNLESS NAME=STARTINGPOINT -->
						<h1>Yes, I want to Stay in <!-- TMPL_VAR NAME=CURRNAME --></h1>
						<p>If you want to visit <!-- TMPL_VAR NAME=CURRNAME --> please enter your preferences here. We have chosen the best options for you. Feel free to change them if you wish
						 and click on "Submit".</p>
						 <!-- TMPL_ELSE -->
						 <h1>Welcome to India!</h1>
						 <p>Hans will say what needs to go here at the starting point since the default text is not relevant</p>
						 <!-- /TMPL_UNLESS -->
						<div class="cityform">
							<form method=post action="travel.cgi">
								<p>I want to stay in <!-- TMPL_VAR NAME=CURRNAME --> for 
									<select class="optdays" name="days" size="1">
										<!-- TMPL_LOOP NAME=DAYSLOOP -->
										<option<!-- TMPL_IF NAME=DAYSELECTED --> selected="selected"<!-- /TMPL_IF -->><!-- TMPL_VAR NAME=DAYVALUE --></option>
										<!-- /TMPL_LOOP --> 
									</select>
									day(s)
								</p>
								<p>I would like to stay at the 
									<select class="opthotel" name="hotel" size="1">
										<option value="<!-- TMPL_VAR NAME=DEFAULTHOTELID -->" selected="selected"><!-- TMPL_VAR NAME=DEFAULTHOTELNAME --></option>
										<!-- TMPL_LOOP NAME=MODHOTELS -->
										<option value="<!-- TMPL_VAR NAME=HOTELID -->"><!-- TMPL_VAR NAME=HOTELNAME --></option>
										<!-- /TMPL_LOOP -->
										<!-- TMPL_LOOP NAME=SUPHOTELS -->
										<option value="<!-- TMPL_VAR NAME=HOTELID -->"><!-- TMPL_VAR NAME=HOTELNAME --></option>
										<!-- /TMPL_LOOP -->
										<!-- TMPL_LOOP NAME=LUXHOTELS -->
										<option value="<!-- TMPL_VAR NAME=HOTELID -->"><!-- TMPL_VAR NAME=HOTELNAME --></option>
										<!-- /TMPL_LOOP -->
									</select>
								</p>
								<!-- TMPL_IF NAME=STARTINGPOINT -->
									<p>You have chosen to start your tour from <!-- TMPL_VAR NAME=CURRNAME -->. We will provide you with transport to reach your Hotel.</p>
									<input type="hidden" name="travelopts" value="1" />
								<!-- TMPL_ELSE -->
									<p>Here is our recommended way to travel <strong>from</strong> <!-- TMPL_VAR NAME=FROMNAME --> <strong>to</strong> <!-- TMPL_VAR NAME=CURRNAME -->:</p>
									<!-- TMPL_VAR NAME=ROUTEOPTIONS -->
								<!-- /TMPL_IF -->
								<input type="hidden" name="mode" value="transit" />
								<input type="hidden" name="city" value="<!-- TMPL_VAR NAME=CURRID -->" />
								<p class="submit"><input type="submit" value="Take me to <!-- TMPL_VAR NAME=CURRNAME -->!" /></p>
							</form>
						</div>
						<!-- TMPL_UNLESS NAME=STARTINGPOINT -->
						<hr />
						<h1>No, Show me other places around <!-- TMPL_VAR NAME=FROMNAME --></h1>
						<ul>
							<!-- TMPL_LOOP NAME=NEARCITIES -->
							<li><a href="travel.cgi?mode=move_to&srcid=<!-- TMPL_VAR NAME=FROMID -->&destid=<!-- TMPL_VAR NAME=PREID -->"><!-- TMPL_VAR NAME=PRENAME --></a></li>
							<!-- /TMPL_LOOP -->
						</ul>
						<h1>No, Show me places farther from <!-- TMPL_VAR NAME=FROMNAME --></h1>
						<form class="nextcity" method="post" action="travel.cgi">
							<p><select id="desturl" name="desturl">
								<!-- TMPL_LOOP NAME=RANDOMDESTINATION -->
									<option value="travel.cgi?mode=move_to&srcid=<!-- TMPL_VAR NAME=FROMID -->&destid=<!-- TMPL_VAR NAME=RANDOMDESTID -->"><!-- TMPL_VAR NAME=RANDOMDESTNAME --></option>
								<!-- /TMPL_LOOP -->
								</select>
								<input type="submit" value="Go!" />
								<input type="hidden" name="mode" value="randomcity" />
							</p>
						</form>
						<h1>Or Use the Map!</h1>
						<div id="map_canvas" lat="<!-- TMPL_VAR NAME=LATITUDE -->" lng="<!-- TMPL_VAR NAME=LONGITUDE -->"></div>
						<h1>Want to end your tour?</h1>
						<p><a href="travel.cgi?mode=end_tour">Yes! End my tour now at <!-- TMPL_VAR NAME=CURRNAME --></a></p>
						<!-- /TMPL_UNLESS -->
					</div>
				</div>
			</div>
		</div>
	</body>
</html>
