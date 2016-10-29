//init the google map in the webpage         
function initMap() {
    var map,
        marker;

    //create the google map
    map = new google.maps.Map(document.getElementById('map'), {
        center: {lat: 39.768597, lng: -86.162682},
        zoom: 8
    });

    //create a marker at the centre
    marker = new google.maps.Marker({
        position: {lat: 39.768597, lng: -86.162682},
        map: map,
        title: 'Indianapolis'
    });
};