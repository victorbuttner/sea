require 'test_helper'

class ClientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @client = clients(:one)
  end

  test "should get index" do
    get clients_url
    assert_response :success
  end

  test "should get new" do
    get new_client_url
    assert_response :success
  end

  test "should create client" do
    assert_difference('Client.count') do
      post clients_url, params: { client: { addr_number: @client.addr_number, birth_date: @client.birth_date, city: @client.city, civil_status: @client.civil_status, cpf_cnpj: @client.cpf_cnpj, district: @client.district, email: @client.email, name: @client.name, obs: @client.obs, ocupation: @client.ocupation, phone1: @client.phone1, phone2: @client.phone2, postal: @client.postal, rg: @client.rg, sex: @client.sex, state: @client.state, status: @client.status, street: @client.street, street_opt: @client.street_opt } }
    end

    assert_redirected_to client_url(Client.last)
  end

  test "should show client" do
    get client_url(@client)
    assert_response :success
  end

  test "should get edit" do
    get edit_client_url(@client)
    assert_response :success
  end

  test "should update client" do
    patch client_url(@client), params: { client: { addr_number: @client.addr_number, birth_date: @client.birth_date, city: @client.city, civil_status: @client.civil_status, cpf_cnpj: @client.cpf_cnpj, district: @client.district, email: @client.email, name: @client.name, obs: @client.obs, ocupation: @client.ocupation, phone1: @client.phone1, phone2: @client.phone2, postal: @client.postal, rg: @client.rg, sex: @client.sex, state: @client.state, status: @client.status, street: @client.street, street_opt: @client.street_opt } }
    assert_redirected_to client_url(@client)
  end

  test "should destroy client" do
    assert_difference('Client.count', -1) do
      delete client_url(@client)
    end

    assert_redirected_to clients_url
  end
end
