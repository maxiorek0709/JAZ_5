package service;

import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.WebResource;
import com.sun.jersey.api.client.config.ClientConfig;
import com.sun.jersey.api.client.config.DefaultClientConfig;
import java.io.IOException;
import org.codehaus.jackson.map.ObjectMapper;

import domain.ActualWeather;

public class WeatherService {
	
	  private final String API_KEY = "890e30cdef968cfb0489836144b22ddb";
	    
	    public ActualWeather getActualWeather(String city) throws IOException{
	        ClientConfig clientConfig = new DefaultClientConfig();
	        Client client = Client.create(clientConfig);
	        WebResource webResource = client.resource("http://api.openweathermap.org/data/2.5/weather?q="+city+"&APPID="+API_KEY);
	        
	        String response = webResource.get(String.class);
	        
	        ObjectMapper mapper = new ObjectMapper();
	        ActualWeather wet = mapper.readValue(response, ActualWeather.class);
	        return wet;
	    }

}
