$(document).ready(function () {
    $('#municipios').prop('disabled', 'disabled');
    $(id_).prop('disabled', 'disabled');


    fetch('http://localhost:3000/get_estados/')
    .then(function(response) {
        return response.json();
    })
    .then(function(res) {
        
        var $estados = $("#estados");
        
        $.each(res, function() {
            if (estado_sel_id !== undefined){
                 if (estado_sel_id == this.id) 
                    $estados.append($("<option selected />").val(this.id).text(this.name));
                else
                    $estados.append($("<option />").val(this.id).text(this.name));
            } else
                $estados.append($("<option />").val(this.id).text(this.name));
        });


    });

    if (estado_sel_id !== undefined){
        get_municipios(estado_sel_id);
        $('#municipios').prop('disabled', false);
    }


    if (municipio_sel_id !== undefined){
        get_parroquias(municipio_sel_id);
        $(id_).prop('disabled', false);
    }
    
    if (map_location !== undefined){
        $(id_).prop('disabled', false);
    }

    $( "#estados" ).change(function() {
        var estado_id = $( "#estados option:selected" ).val();
        get_municipios(estado_id);
                
    });

    $( "#municipios" ).change(function() {
        var municipio_id = $( "#municipios option:selected" ).val();
        
        get_parroquias(municipio_id);
        
                
    });

    $( id_ ).change(function() {
        var estado = $( "#estados option:selected" ).text();
        var municipio = $( "#municipios option:selected" ).text();
        var parroquia = $( id_ + " option:selected" ).text();
        
        try {
            fetch('https://api.mapbox.com/geocoding/v5/mapbox.places/\
            '+parroquia+'%20'+municipio+'%20'+estado+'%20venezuela.json?limit=1\
            &access_token='+token_mapbox, {
                method: 'GET'
            })
            .then(function(response) {
                return response.json();
            })
            .then(function(res) {
                console.log(res)
                
                try {
                    geojson.features[0].geometry.coordinates = [res.features[0]['center'][0], res.features[0]['center'][1]];
                    console.log(geojson.features[0].geometry.coordinates);
                    $('#restaurant_map_location').val(res.features[0]['center'][0] + ',' + res.features[0]['center'][1])
                    map.getSource('point').setData(geojson);
                    map.flyTo({center: geojson.features[0].geometry.coordinates});
                } catch (e) {

                }
            });
        } catch (e) {
            console.log('comensal no actualiza mapa')
        }    
    });



    function get_municipios(estado_id) {
        fetch('http://localhost:3000/get_municipios?estado='+estado_id, {
                method: 'GET', // or 'PUT'
                headers:{
                    'Content-Type': 'application/json'
                }
        })
        .then(function(response) {
            return response.json();
        })
        .then(function(res) {
            
            $('#municipios').empty().append('<option value="" >Selecciona un municipio</option>').prop('disabled', false);
            $(id_).empty().append('<option value="" >Selecciona una parroquia</option>').prop('disabled', 'disabled');

            var $municipios = $("#municipios");
                
            $.each(res, function() {
                if (municipio_sel_id !== undefined){
                     if (municipio_sel_id == this.id) 
                        $municipios.append($("<option selected />").val(this.id).text(this.name));
                    else
                        $municipios.append($("<option />").val(this.id).text(this.name));
                }else
                    $municipios.append($("<option />").val(this.id).text(this.name));
            });

        });
    }

    function get_parroquias(municipio_id) {
        fetch('http://localhost:3000/get_parroquias?municipio='+municipio_id, {
                method: 'GET', // or 'PUT'
                headers:{
                    'Content-Type': 'application/json'
                }
        })
        .then(function(response) {
            return response.json();
        })
        .then(function(res) {
                
            $(id_).empty().append('<option value="" >Selecciona una parroquia</option>').prop('disabled', false);
            
            
            var $parroquias = $(id_);
                
            $.each(res, function() {
                if (parroquia_sel_id !== undefined){
                     if (parroquia_sel_id == this.id) 
                        $parroquias.append($("<option selected/>").val(this.id).text(this.name));
                    else
                        $parroquias.append($("<option />").val(this.id).text(this.name));
                }else
                    $parroquias.append($("<option />").val(this.id).text(this.name));
            });

        });
    }

    $('#photo_form').submit(function(e){
        e.preventDefault();




        url = $(this).attr('action');
        console.log(url);

        var data = {
            "id": $(this)[0][2].value,
            "authenticity_token": $(this)[0][1].value
        };

        console.log(JSON.stringify(data));
        
        fetch(url, {
            method: 'POST', 
            body: JSON.stringify(data),
            headers:{
                'Content-Type': 'application/json',
                'Accept': 'application/json',
                'X-CSRF-Token': data["authenticity_token"]
            }
        })
        .then( res => res.json() )
        .then( res => {
            console.log(res);

            if (res.ok)
                $(this).fadeOut(300, function(){ $(this).remove();});
                // $(this).remove();
            
        });
    });

})








try {

if (mapboxgl !== undefined) 
    mapboxgl.accessToken = token_mapbox;

    // var coordinates = document.getElementById('coordinates');
var map = new mapboxgl.Map({
    container: 'map',
    style: 'mapbox://styles/mapbox/streets-v11',
    center: [map_lat,map_lng],
    zoom: 10
});


var canvas = map.getCanvasContainer();


map.on('load', function() {
    
    // Add a single point to the map
    map.addSource('point', {
        "type": "geojson",
        "data": geojson
    });
    
    map.addLayer({
        "id": "point",
        "type": "circle",
        "source": "point",
        "paint": {
            "circle-radius": 10,
            "circle-color": "#3887be"
        }
    });
    
    // When the cursor enters a feature in the point layer, prepare for dragging.
    map.on('mouseenter', 'point', function() {
        map.setPaintProperty('point', 'circle-color', '#3bb2d0');
        canvas.style.cursor = 'move';
    });
    
    map.on('mouseleave', 'point', function() {
        map.setPaintProperty('point', 'circle-color', '#3887be');
        canvas.style.cursor = '';
    });
    
    map.on('mousedown', 'point', function(e) {
        // Prevent the default map drag behavior.
        e.preventDefault();
        
        canvas.style.cursor = 'grab';
        
        map.on('mousemove', onMove);
        map.once('mouseup', onUp);
    });
    
    map.on('touchstart', 'point', function(e) {
        if (e.points.length !== 1) return;
        
        // Prevent the default map drag behavior.
        e.preventDefault();
        
        map.on('touchmove', onMove);
        map.once('touchend', onUp);
    });
});


var geojson = {
    "type": "FeatureCollection",
    "features": [{
        "type": "Feature",
        "geometry": {
            "type": "Point",
            "coordinates": [map_lat,map_lng]
        }
    }]
};

}catch(e) {
    // console.log(e);
}

function onMove(e) {
    var coords = e.lngLat;

    // Set a UI indicator for dragging.
    canvas.style.cursor = 'grabbing';
    
    // Update the Point feature in `geojson` coordinates
    // and call setData to the source layer `point` on it.
    geojson.features[0].geometry.coordinates = [coords.lng, coords.lat];
    map.getSource('point').setData(geojson);
}

function onUp(e) {
    var coords = e.lngLat;
    
    // Print the coordinates of where the point had
    // finished being dragged to on the map.
    // coordinates.style.display = 'block';
    // coordinates.innerHTML = 'Longitude: ' + coords.lng + '<br />Latitude: ' + coords.lat;
    $('#restaurant_map_location').val(coords.lng + ',' + coords.lat)
    canvas.style.cursor = '';
    
    // Unbind mouse/touch events
    map.off('mousemove', onMove);
    map.off('touchmove', onMove);
}



try {
$('.select2').select2();

$('.timepicker select2.select2-container.select2-container--default.select2-container--below').addClass('col-xs-5')

$('[data-mask]').inputmask()
//Timepicker
$('.timepicker').timepicker({
    showInputs: false,
    showMeridian: false
});

}catch(e) {
    // console.log(e);
}

$('#fotos').append('<input name="restaurant[photos_attributes][0][photo]" data-id="0" type="file" id="restaurant_photos_attributes_1_photo">')
// $('#fotos').append('<input name="photos" data-id="0" type="file" id="restaurant_photos_attributes_1_photo">')
var fotos = 1;
$('#add_photo').click(function(e) {
    e.preventDefault();
    $('#fotos').append('<input name="restaurant[photos_attributes]['+fotos+'][photo]" data-id="'+fotos+'" type="file" id="restaurant_photos_attributes_1_photo">')
    fotos ++;
})
