var map;
      function initMap() {
        map = new google.maps.Map(document.getElementById('map'), {
          center: {lat: 40.41798, lng: -86.920298},
          zoom: 12
        });
      }