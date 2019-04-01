$(document).on('turbolinks:load',function() {
  var form = $("#add-card-form");
  var number = form.find('#payment_card_no');
  var cvc = form.find('#payment_card_security_code');
  var exp_month = form.find('#payment_card_expire_mm');
  var exp_year = form.find('#payment_card_expire_yy');

  $("#submit-button").click(function(e) {
   e.preventDefault();
   Payjp.setPublicKey('pk_test_3eecf3d0673f33deabf6e3c6');
   form.find("input[type=submit]").prop("disabled", true);
   var card = {
    number: number.val(),
    cvc: cvc.val(),
    exp_month: exp_month.val(),
    exp_year: exp_year.val()
  };
  Payjp.createToken(card, function(s, response) {
    if (response.error) {
      form.find('.payment-errors').text(response.error.message);
    }
    else {
      var token = response.id;
      form.append($('<input type="hidden" name="payjpToken" />').val(token));
      form.get(0).submit();
    }
  });
});
});
