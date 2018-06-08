<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pogoda</title>
    </head>
    <body>
  <jsp:useBean id="weatherService" class="service.WeatherService" scope="application" />
        <%   
        	domain.ActualWeather gdansk = weatherService.getActualWeather("Gdansk,pl");  
        	domain.ActualWeather warszawa = weatherService.getActualWeather("Warszawa,pl");	
        	domain.ActualWeather krakow = weatherService.getActualWeather("Krakow,pl"); 
        	domain.ActualWeather wroclaw = weatherService.getActualWeather("Wroclaw,pl");  
            domain.ActualWeather poznan = weatherService.getActualWeather("Poznan,pl"); 
            domain.ActualWeather lodz = weatherService.getActualWeather("Lodz,pl");
            domain.ActualWeather katowice = weatherService.getActualWeather("Katowice,pl");    
       
        %>
         	<h1>Pogoda w Gdańsku: </h1>
            <b>Poziom zachmurzenia:</b> <%= gdansk.getClouds().getAll() +" %" %> <br/>
            <b>Temperatura:</b> <%= Math.round((Double.parseDouble(gdansk.getMain().getTemp()) - 273.15)*100.0)/100.0 +" ºC" %><br/>
            <b>Ciśnienie: </b> <%= gdansk.getMain().getPressure() +" hPa" %><br/>
            <b>Prędkosć wiatru:</b> <%= gdansk.getWind().getSpeed() +" m/s" %><br/>
            
        	<h1>Pogoda w Warszawie: </h1>
            <b>Poziom zachmurzenia:</b> <%= warszawa.getClouds().getAll() +" %" %> <br/>
            <b>Temperatura:</b> <%= Math.round((Double.parseDouble(warszawa.getMain().getTemp()) - 273.15)*100.0)/100.0 +" ºC" %><br/>
           	<b>Ciśnienie: </b> <%= warszawa.getMain().getPressure() +" hPa" %><br/>
            <b>Prędkosć wiatru:</b> <%= warszawa.getWind().getSpeed() +" m/s" %><br/>
            
            <h1>Pogoda w Krakowie: </h1>
            <b>Poziom zachmurzenia:</b> <%= krakow.getClouds().getAll() + " %" %> <br/>
            <b>Temperatura:</b> <%= Math.round((Double.parseDouble(krakow.getMain().getTemp()) - 273.15)*100.0)/100.0 +" ºC" %><br/>
            <b>Ciśnienie:</b> <%= krakow.getMain().getPressure() +" hPa" %><br/>
            <b>Prędkosć wiatru:</b> <%= krakow.getWind().getSpeed() +" m/s" %><br/>
            
            <h1>Pogoda w Wrocławiu </h1>
            <b>Poziom zachmurzenia:</b> <%= wroclaw.getClouds().getAll() +" %" %> <br/>
            <b>Temperatura:</b> <%= Math.round((Double.parseDouble(wroclaw.getMain().getTemp()) - 273.15)*100.0)/100.0 +" ºC" %><br/>
            <b>Ciśnienie:</b> <%= wroclaw.getMain().getPressure() +" hPa" %><br/>
            <b>Prędkosć wiatru:</b> <%= wroclaw.getWind().getSpeed() +" m/s" %><br/>
            
            <h1>Pogoda w Poznaniu: </h1>
            <b>Poziom zachmurzenia:</b> <%= poznan.getClouds().getAll() +" %" %> <br/>
            <b>Temperatura:</b> <%= Math.round((Double.parseDouble(poznan.getMain().getTemp()) - 273.15)*100.0)/100.0 +" ºC" %><br/>
            <b>Ciśnienie:</b> <%= poznan.getMain().getPressure() +" hPa" %><br/>
            <b>Prędkosć wiatru:</b> <%= poznan.getWind().getSpeed() +" m/s" %><br/>
        	
        	<h1>Pogoda w Łodzi: </h1>
            <b>Poziom zachmurzenia:</b> <%= lodz.getClouds().getAll() +" %" %> <br/>
            <b>Temperatura:</b> <%= Math.round((Double.parseDouble(lodz.getMain().getTemp()) - 273.15)*100.0)/100.0 +" ºC" %><br/>
            <b>Ciśnienie:</b> <%= lodz.getMain().getPressure() +" hPa" %><br/>
            <b>Prędkosć wiatru:</b> <%= lodz.getWind().getSpeed() +" m/s" %><br/>
        	
        	
         	<h1>Pogoda w Katowicach: </h1>
            <b>Poziom zachmurzenia:</b> <%= katowice.getClouds().getAll() +" %" %> <br/>
            <b>Temperatura:</b> <%= Math.round((Double.parseDouble(katowice.getMain().getTemp()) - 273.15)*100.0)/100.0 +" ºC" %><br/>
            <b>Ciśnienie:</b> <%= katowice.getMain().getPressure() +" hPa" %><br/>
            <b>Prędkosć wiatru:</b> <%= katowice.getWind().getSpeed() +" m/s" %><br/>
            
            
    </body>
</html>
