require 'test_helper'

class PagamentosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pagamento = pagamentos(:one)
  end

  test "should get index" do
    get pagamentos_url
    assert_response :success
  end

  test "should get new" do
    get new_pagamento_url
    assert_response :success
  end

  test "should create pagamento" do
    assert_difference('Pagamento.count') do
      post pagamentos_url, params: { pagamento: { data_pag: @pagamento.data_pag, entrada_id: @pagamento.entrada_id, report: @pagamento.report, valor_pag: @pagamento.valor_pag } }
    end

    assert_redirected_to pagamento_url(Pagamento.last)
  end

  test "should show pagamento" do
    get pagamento_url(@pagamento)
    assert_response :success
  end

  test "should get edit" do
    get edit_pagamento_url(@pagamento)
    assert_response :success
  end

  test "should update pagamento" do
    patch pagamento_url(@pagamento), params: { pagamento: { data_pag: @pagamento.data_pag, entrada_id: @pagamento.entrada_id, report: @pagamento.report, valor_pag: @pagamento.valor_pag } }
    assert_redirected_to pagamento_url(@pagamento)
  end

  test "should destroy pagamento" do
    assert_difference('Pagamento.count', -1) do
      delete pagamento_url(@pagamento)
    end

    assert_redirected_to pagamentos_url
  end
end
