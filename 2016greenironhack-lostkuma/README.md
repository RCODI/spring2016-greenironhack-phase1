**Find My Veggies** v1.0.0 - 2016-03-26  
Please visit GitHub for the complete code here: [https://github.com/lostkuma/iron-hack-project/](https://github.com/lostkuma/iron-hack-project/)  

This is a Web App to help people find fresh and cheap vegetables for Indiana.  

The App uses Google Map API combined with open datasets to display features for local food markets regarding to vegetables.
Those features will include but not limited to: freshness, price, open hours, distance, predicted transportation time, parking lot accessibility, customer ratings, service, etc. for a single store. As well as the comparison function over these features for multiple stores.  

**Description**  
* Datasets  
Dataets that will be used are listed. However, at this phase not all details of how they will be used are specified.  
(More datasets will be added later. Existing datasets maybe modified later.)  
	* Climate Data Online (http://catalog.data.gov/dataset/climate-data-online-cdo)  
	  Normals Daily Data for Indiana from 3/24/2012 to 3/24/2016  
	  Columns used: Precipitation, Winds, Daily total sunshine, Maximum temperature, Minimum temperature, Snowfall  
	* FEMA Disaster Declarations Summary (http://catalog.data.gov/dataset/disaster-declaration)  
	  Disaster Declaration summary data for Indiana from 2004 to 2014  
	  Columns used: Incident type, Declared county area, Begin date, End date  
All datasets used are from data.gov  
	
* Map View
	* The initialized Map is located at Indianapolis since it is the capital of Indiana  
	* Major locations sell vegetables will be marked on the map with name tags displayed on top  
	* Market name will shown when mouse is moved to a tag  
	* Upon clicking on a tag, information for the location will be shown on the side bar of the webpage. Information contains the features discussed above for a market  
	* Current weather data will be retrived use OpenWeatherMap API (http://openweathermap.org/api), and be displayed in the information windown with a weather icon at the webpage
	
* Data Visualization
	* Radar chart will be used for data visualization  
	* A comparison button will be displayed on the information window. By clicking it, a pop up window that allows the comparison of  three markets will be displayed. Sortable bar graph is used for the comparison for three markets  
	* By clicking on some features (i.e. price) will display the actualy price range on the chart

* Interation Form:
	* Information output: The weblink of the markets will be provided, and freshness rating will be displayed for each market
	* Operation option: Filters based on features will affect the change of tags on the map, and search on market names will only result to the tags of a certain set of markets (e.g. search "Walmart" will only display tags for Walmart)
	* Information input: Allow area selection by inputing a county/city name on top left texting box on the map
	* Interaction with map: By clicking the comparison button on the information window, a pop up window that allows the comparison of  three markets will be displayed. The market in selection will be automatically added and other two markets can be added to comparison by dragging the tags on the map  
	* Interaction with data visualization: Checkboxes that enable/disable features will be available above the radar chart, which will affect the chart  

**Content**  
* README.txt  --This file.  
* index.html  --Web page for the App  
* style.css  --CSS style file with template from Bootstrap  
* js  --A directory contains all the javescript files  
* image  --A directory contains all images used in the website  
  
**Build up information**  
At this point the project only uses HTML/CSS/Javascript. However, other dependencies might be used in the future. An updated readme file will then be submitted along with later submissions.

**Test**  
The complete version of this App is exptected to be tested on the following broswers: Chrome, Firefox and Safari

**Additional information**  
My interests of study for my Master's program greatly related to Natural Language Processing. So if time allows, I would like to add some NLP stuff to the App as well. For example, information retrival from natural language text that users entered, and other things like text to speech feature using Google or IBM speech to text API. I've made an web app using text to speech API from IBM's Bluemix platform before (http://jsx.mybluemix.net/), but speech to text was a challenge, which remains a difficulty for me who did not have a solid programming background.  

I will thank my boyfriend Jason Macnak, a former Purdue graduate and a software engineer at Google, for all the supports and additional help I got and will be getting on the project.  

**Contact**  
For questions about this project please feel free to contact Xiaonan Jing (jing@purdue.edu)
