<html>
<head>
<script type="text/javascript"
  src="http://dygraphs.com/1.1.1/dygraph-combined.js"></script>
</head>
<body>


<h1>Temperatura: <?php
$file = fopen("temperatura_actual.log", "r");
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
    "temperatura.log",
    {
      rollPeriod: 7,
      showRangeSelector: true,
      rangeSelectorHeight: 30,
      showRoller: true
    }
  );
  
</script>

<h1>Humedad: <?php
$file = fopen("humedad_actual.log", "r");
while(!feof($file)) {
echo fgets($file);
}
fclose($file);
?>
</h1>
<div id="graphdiv2"
  style="width:1300px; height:500px;"></div>
<script type="text/javascript">
  g3 = new Dygraph(
    document.getElementById("graphdiv2"),
    "humedad.log",
    {
      rollPeriod: 7,
      showRangeSelector: true,
      rangeSelectorHeight: 30,
      showRoller: true
    }
  );
  
</script>

<h1>Temperatura y humedad</h1>
<div id="graphdiv22"
  style="width:1300px; height:500px;"></div>
<script type="text/javascript">
  g3 = new Dygraph(
    document.getElementById("graphdiv22"),
    "temperaturayhumedad.log",
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


</body>
</html>
