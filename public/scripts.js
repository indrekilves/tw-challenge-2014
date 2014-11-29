$(function () {
    window.app = app = window.app || {};
    app.user = {};
    app.user.name = "Paul Paulson";
    app.user.account = "EE2143522522452525";
    app.receiver = {};
    app.receiver.account = "123545135453153";

    $('#b-calculator__input-amount-send').keyup(function () {
        $('#b-calculator__input-amount-receive').val($('#b-calculator__input-amount-send').val() * 1.25063);
    });
    $('#b-calculator__input-amount-receive').keyup(function () {
        $('#b-calculator__input-amount-send').val($('#b-calculator__input-amount-receive').val() * 0.79960);
    });

    $('#b-calculator__input-user').keyup(function () {
        var btn = $("#b-cal-send-money");
        if ($(this).val().length) {
            btn.removeClass('disabled');
            btn.removeAttr('disabled');
        } else {
            btn.addClass('disabled');
            btn.attr('disabled', 'disabled');
        }
    });
    $("#b-cal-send-money").click(function (e) {
        e.preventDefault();
        var amount, currency;
        amount = $('#b-calculator__input-amount-send').val();
        currency = $('#sourceCurrencyId').val();
        app.receiver.name = $("#b-calculator__input-user").val();
        app.sendData(amount, currency);
    });

    app.sendData = function (amount, currency) {
        var data = {};
        data.sender = app.user;
        data.receiver = app.receiver;
        data.amount = amount;
        data.currency = currency;
        app.send(data);
    };

    app.send = function sendToTransfer(data) {
        var url = "http://challenge.transferwise.com/?teamname=bootstrap&data=" + encodeURIComponent(JSON.stringify(data));
        console.log(url);
        $.get(url, function (response) {
            console.log(response);
        });
    }
});