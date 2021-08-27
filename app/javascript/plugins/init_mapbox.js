import mapboxgl from 'mapbox-gl';
import 'mapbox-gl/dist/mapbox-gl.css';
import MapboxGeocoder from '@mapbox/mapbox-gl-geocoder';


// const initMapbox = () => {
//   const mapElement = document.getElementById('map');

//   const fitMapToMarkers = (map, markers) => {
//     const bounds = new mapboxgl.LngLatBounds();
//     markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
//     map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
//   };

//   if (mapElement) { // only build a map if there's a div#map to inject into
//     mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
//     const map = new mapboxgl.Map({
//       container: 'map',
//       style: 'mapbox://styles/mapbox/light-v10'
//     });

//     // add search on map
//     map.addControl(new MapboxGeocoder({ accessToken: mapboxgl.accessToken, mapboxgl: mapboxgl }));

//     // add markers and popups
//     const markers = JSON.parse(mapElement.dataset.markers);
//     markers.forEach((marker) => {
//       const popup = new mapboxgl.Popup().setHTML(marker.info_window);

//       const element = document.createElement('div');
//       element.className = 'marker';
//       element.style.backgroundImage = `url('${marker.image_url}')`;
//       element.style.backgroundSize = 'contain';
//       element.style.width = '25px';
//       element.style.height = '25px';

//       new mapboxgl.Marker(element)
//         .setLngLat([ marker.lng, marker.lat ])
//         .setPopup(popup)
//         .addTo(map);
//     });

//     fitMapToMarkers(map, markers);
//   }
// };

// export { initMapbox };
const initMapbox = () => {
  const mapElement = document.getElementById('map');

  const fitMapToMarkers = (map, markers) => {
    const bounds = new mapboxgl.LngLatBounds();
    markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
    map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
  };

  const centerMapOnMarker = (map, marker) => {
    const bounds = new mapboxgl.LngLatBounds();
    bounds.extend([ marker.lng, marker.lat ]);
    map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
  }

  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/mapbox/light-v10'
    });

    const setMarker = (marker) => {
      const popup = new mapboxgl.Popup().setHTML(marker.info_window);
  
      const element = document.createElement('div');
      element.className = 'marker';
      element.style.backgroundImage = `url('${marker.image_url}')`;
      element.style.backgroundSize = 'contain';
      element.style.width = '25px';
      element.style.height = '25px';
  
      new mapboxgl.Marker(element)
        .setLngLat([ marker.lng, marker.lat ])
        .setPopup(popup)
        .addTo(map);
    }

    // add search on map
    map.addControl(new MapboxGeocoder({ accessToken: mapboxgl.accessToken, mapboxgl: mapboxgl }));


    // add markers and popups
    const markers = JSON.parse(mapElement.dataset.markers);
    if (markers) {
      if (Array.isArray(markers)) {
        markers.map(setMarker)
        fitMapToMarkers(map, markers);
      } else {
        setMarker(markers)
        centerMapOnMarker(map, markers)
      }
    }
  }
};

export { initMapbox };