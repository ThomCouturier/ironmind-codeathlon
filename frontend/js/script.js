$('#ul-buy-tickets-btn').click(function () {
    alert('Le bouton fonctionne')
});

$(document).ready(function () {
    const api = '/api/';

    $.ajax({
        url: api + 'account',
        type: 'POST',
        success: function (data) {
            data = ["option1", "option2"]
            var list = document.getElementById("programs");
            data.forEach(element => {
                var opt = document.createElement('option');
                opt.value = element;
                opt.innerHTML = element;
                list.appendChild(opt);
            });
        },
    });
    $.ajax({
        url: api + 'modifyAccount',
        type: 'POST',
        success: function (data) {
            console.log(data);
        },
    });
    $.ajax({
        url: api + 'events',
        type: 'GET',
        success: function (data) {
            data = "test"
            document.getElementById("events").innerHTML = data
        },
    });
    $.ajax({
        url: api + 'tickets',
        type: 'GET',
        success: function (data) {
            console.log(data);
        },
    });
    $.ajax({
        url: api + 'connexion',
        type: 'POST',
        success: function (data) {
            console.log(data);
        },
    });
});
