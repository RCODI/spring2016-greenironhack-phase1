# 2016greenironhack-sauravn

This is a Readme file for first submission (Phase-1). I have writen a brief description of application below, and list of features I am planning to implement. I have also
included an wireframe diagram of the application that describes the user interface of the application. Currently, this readme file is a high-level document, however, 
I will keep updating this document with fine details as I progress further with my coding, and/or in case of any modification in the feature list. 

1. Name of the App: **FreshVeggie**

2. Keywords: *Freshness Scale, Price Comparison, Map Location, Social, Daliy Recipe* 

3. Description of the datasets and function design
 * [name] [link] [data type] [data columns used] [data amount] Please provide a name+link+basicInfo to each dataset you have used.
 
 **Climate Data Online (CDO)** 
 
 Link: https://catalog.data.gov/dataset/climate-data-online-cdo
 
 **Walmart Product Lookup API - Vegetables Prices**
 
 Link: https://developer.walmartlabs.com/docs
 
 **Farmer’s market**

 Link: http://catalog.data.gov/dataset/farmers-markets-2015
 
 **NOTE**: *I am still working on fetching the data types, data columns and data size*
 
 * [Y/N] Do you use the primary dataset ”online climate data” from data.gov? - **YES**
 * [Y/N] [List] Are all these datasets from data.gov? If not, where are they coming from (links)? **NO, one of the other source is Walmart**

4. Brief Description

    FreshVeggie is an web application to help people living in the state of Indiana to find fresh and cheap vegetables close to their place. The application shows a freshness scale for all the 
    available vegetables, and also makes an price comparison among different vendors such as: Walmart, Payless, Meijer, etc. Also, the application uses Google Maps to help the users to locate 
    the nearest (distance and route) store where they can get these fresh and cheap vegetables.
    
    **Additional Unique Feature**
    I have planned to implement an unique feature to suggest receipe of the day depending upon the fresh vegetables available on that particular day. Generally, people are confused about the 
    question, "what should we cook today?". *Recipe-of-the-Day* feature will help people to cook different variety of dishes using the fresh vegetables available on that particular time. 

    **User Interface Diagram**

    ![Alt text](/images/ironhack-prototype.jpg?raw=true "User Interface")
    
    Fill in the structued description:
    * Map View:
	1. [Y/N] Basic Map with specific location (your map is located in a meaningful place, city of west lafayette for example) - **YES**
	2. [Y/N] Markers for location of markets - **YES**
	3. [Y/N] Labels for markets' names - **YES**
	4. [Y/N] InfoWindow to show detail information of a market - **YES**
	5. [Y/N] [describe] Any other cover on the map (for example, cloud cover to show the weather effect) - **YES**

    * Data Visualization:
	1. [Y/N] [describe] Use Graph? What is the type? (bar chart, pie chart, radar chart ...) - **Bubble Chart or Bullet Chart**
	2. [Y/N] [List] Any interaction available on the graph? List them (enable click on numbers, drag on lines, change time/variables ...) - **YES**
	
    * Interaction Form:
	1. [Y/N] [List] Any information output? list them. (text field, text area, label, plain HTML ...) 
	
	**Comment**: Expected to have text area, HTML tables.
	
    * [Y/N] [List] Any operation option (filters)? List them. (search markets, search vegetables, filter based on price, sort based on convenience ...)
    * [Y/N] [List] Any information input? List them. (comments, markers, user preference ...)
    * [Y/N] [List] Interaction with Map? List them. (filter on price will affect map markers, sort on price will affect map markers, ...)
    * [Y/N] [List] Interaction with data visualization? List them. (filter, sort, set variables ...)

    **Comment**: I am still working on the above features, and will keeping adding these features one by one.

5. Build Case

    How can we build and access your project on a Linux/Unix machine if you use external dependencies besides HTML/CSS/Javascript?
    List the dependencies you used, such as python, node.js, etc.
    List the steps we should follow to build the project.
    Your project will be built on Amazon Web Service, EC2, ubuntu 14.01 instance

    **Comment**: I have planned to prepare a **Docker File** so that the application will run inside a Linux Container, and can be easily installed on any Linux machine.

6. Test Case

    Which browsers did you test your project on? Chrome, IE, Edge, Safari, or Firefox?

    **Comment**: Chrome & Firefox

7. Additional information You Want to Share with Us

    E.g. any problems you faced/fixed, where you reached out to for help, etc.

    **Comment**: I will keep updating this section as I progress through the future phases of the Hack.