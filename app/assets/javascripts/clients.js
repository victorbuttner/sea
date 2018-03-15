$(document).ready( function() {


$('#client_postal').change(function() {
endpoint = 'https://viacep.com.br/ws/' +  $('#client_postal').val() + '/json/';
console.log("URL")
console.log(endpoint);
$.get(endpoint, function(data) {
console.log(JSON.stringify(data))
  // populate #endereco
  $('#client_street').val(data.logradouro);
  $('#client_district').val(data.bairro);
  $('#client_city').val(data.localidade);
  $('#client_state').val(data.uf);


  });
});

})