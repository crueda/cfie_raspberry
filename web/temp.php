<html>
<head>
<script type="text/javascript"
  src="dygraph.js"></script>
</head>
<body>


<h1>DHT22: <?php 
$file = fopen("https://raw.githubusercontent.com/crueda/cfie_raspberry/master/web/tempdht22_actual.log", "r");
while(!feof($file)) {
echo fgets($file);
}
fclose($file);
?>
</h1>
<div id="graphdiv1"
  style="width:1300px; height:500px;"></div>
<script type="text/javascript">
  g3 = new Dygraph(
    document.getElementById("graphdiv1"),
    "tempdht22.log",
    {
      rollPeriod: 7,
      showRangeSelector: true,
      rangeSelectorHeight: 30,
      showRoller: true
    }
  );
  
</script>

<h1>DHT11</h1>
<div id="graphdiv2"
  style="width:1300px; height:500px;"></div>
<script type="text/javascript">
  g3 = new Dygraph(
    document.getElementById("graphdiv2"),
    "tempdht11.log",
    {
      rollPeriod: 7,
      showRangeSelector: true,
      rangeSelectorHeight: 30,
      showRoller: true
    }
  );
  
</script>

<h1>USB</h1>
<div id="graphdiv3"
  style="width:1300px; height:500px;"></div>
<script type="text/javascript">
  g3 = new Dygraph(
    document.getElementById("graphdiv3"),
    "tempusb.log",
    {
      rollPeriod: 7,
      showRangeSelector: true,
      rangeSelectorHeight: 30,
      showRoller: true
    }
  );
  
</script>

<h1>CPU</h1>
<div id="graphdiv4"
  style="width:1300px; height:500px;"></div>
<script type="text/javascript">
  g3 = new Dygraph(
    document.getElementById("graphdiv4"),
    "tempcpu.log",
    {
      rollPeriod: 7,
      showRangeSelector: true,
      rangeSelectorHeight: 30,
      showRoller: true
    }
  );
  
</script>


</body>
</html>
