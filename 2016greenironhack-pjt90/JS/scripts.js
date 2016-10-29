var map, marker, infowindow, urlzip,url, xmlhttp,zip,latitude,longitude;

//initialize map on homepage
function initMap() {

    var geocoder = new google.maps.Geocoder;
    var infowindow = new google.maps.InfoWindow;

    //centers map at given coordinates
    map = new google.maps.Map(document.getElementById('map'), {
        center: { lat: 40.4219, lng: -86.9125 },
        zoom: 16
    });

    //Places current location marker at default location
    marker = new google.maps.Marker({
        position: { lat: 40.4219, lng: -86.9125 },
        map: map,
        title: 'Home'
    });

    //Code to change marker color

    //google.maps.event.addListener(marker, 'click', function () {
    //    infowindow.open(map);
    //    //Change the marker icon
    //    marker.setIcon('https://www.google.com/mapfiles/marker_green.png');
    //});

    //Code for placing current location marker on mouse click

    function placeMarker(location) {
        if (marker) {
            marker.setPosition(location);
        } else {
            marker = new google.maps.Marker({
                position: location,
                map: map
            });
        }
        geocodeLatLng(geocoder, map, infowindow);
    }
    google.maps.event.addListener(map, 'click', function (event) {
        placeMarker(event.latLng);
    });

    //store coordinates of current location
    google.maps.event.addListener(marker, "click", function (event) {
        latitude = this.position.lat();
        longitude = this.position.lng();

    });
    //Code for displaying marker's current latitude and longitude

    infowindow = new google.maps.InfoWindow({
        content: ""
    });
    google.maps.event.addListener(marker, 'click', function () {
        infowindow.setContent('<p> Current Location:' + marker.getPosition() + '</p>');
        infowindow.open(map, marker);
        
    });

    //geocode zipcode from latitude and longitude
    
    function geocodeLatLng(geocoder, map, infowindow) {
        var input = marker.getPosition().toString();
        //console.log(input);
        var latlngStr = input.split(",", 2);
        //console.log(latlngStr);
        vartemplat = parseFloat(latlngStr[0].substring(1));
        //var latlng = { lat: parseFloat(latlngStr[0]), lng: parseFloat(latlngStr[1]) };
        var latlng = { lat: vartemplat, lng: parseFloat(latlngStr[1]) };
        //console.log(latlng);
        geocoder.geocode({ 'location': latlng }, function (results, status) {
            if (status === google.maps.GeocoderStatus.OK) {
                if (results[1]) {
                    //map.setZoom(16);
                    map.setCenter(marker.getPosition());
                    //var marker = new google.maps.Marker({
                    //    position: latlng,
                    //    map: map
                    //});
                    infowindow.setContent(results[1].formatted_address);
                    infowindow.open(map, marker);
                    
                    console.log(results);

                    //extract zipcode from address
                    var address = results[1].formatted_address.toString().split(",");
                    //console.log(address);
                    zip = address[2].toString().substring(4);
                    //console.log(zip);

                    xmlhttp = new XMLHttpRequest();
                    url = "http://search.ams.usda.gov/farmersmarkets/v1/data.svc/zipSearch?zip="+ zip;
                    xmlhttp.open("GET", url, true);
                    xmlhttp.send();

                    //obtain information about markets in given zip code
                    xmlhttp.onreadystatechange = function () {
                        if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                            //get the text content from the page response
                            var myArr,
                                text,
                                json,
                                numberOfMarkets = 0,
                                markers = [],
                                boundBox,
                                southWest,
                                northEast,
                                lngSpan = 0,
                                latSpan = 0,
                                locations = [];

                            myArr = xmlhttp.responseText;
                            text = myArr;
                            //alert(text);
                            //JSON object with information from National Farmers Market Directory
                            json = JSON.parse(text);
                            console.log(json);

                            //var counter = 0;
                            //var marketData[];

                            //for(counter=0; counter<json.length; counter++)
                            //{
                            //    var dataline[];
                            //}
                        }
                    }
                    

                } else {
                    window.alert('No results found');
                }
            } else {
                window.alert('Geocoder failed due to: ' + status);
            }
        });

        

    }
}