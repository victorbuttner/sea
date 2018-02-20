require 'test_helper'

class RecipesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @recipe = recipes(:one)
  end

  test "should get index" do
    get recipes_url
    assert_response :success
  end

  test "should get new" do
    get new_recipe_url
    assert_response :success
  end

  test "should create recipe" do
    assert_difference('Recipe.count') do
      post recipes_url, params: { recipe: { client_id: @recipe.client_id, diagonal_maior: @recipe.diagonal_maior, doctor_crm: @recipe.doctor_crm, doctor_name: @recipe.doctor_name, doctor_phone: @recipe.doctor_phone, dp_ponte: @recipe.dp_ponte, entrega: @recipe.entrega, longe_dir_adicao: @recipe.longe_dir_adicao, longe_dir_cilindrico: @recipe.longe_dir_cilindrico, longe_dir_eixo: @recipe.longe_dir_eixo, longe_dir_esferico: @recipe.longe_dir_esferico, longe_dp: @recipe.longe_dp, longe_esq_adicao: @recipe.longe_esq_adicao, longe_esq_cilindrico: @recipe.longe_esq_cilindrico, longe_esq_eixo: @recipe.longe_esq_eixo, longe_esq_esferico: @recipe.longe_esq_esferico, material: @recipe.material, perto_dir_adicao: @recipe.perto_dir_adicao, perto_dir_cilindrico: @recipe.perto_dir_cilindrico, perto_dir_eixo: @recipe.perto_dir_eixo, perto_dir_esferico: @recipe.perto_dir_esferico, perto_dp: @recipe.perto_dp, perto_esq_adicao: @recipe.perto_esq_adicao, perto_esq_cilindrico: @recipe.perto_esq_cilindrico, perto_esq_eixo: @recipe.perto_esq_eixo, perto_esq_esferico: @recipe.perto_esq_esferico, product_id: @recipe.product_id, sinal: @recipe.sinal, tipo: @recipe.tipo, user_id: @recipe.user_id, valor: @recipe.valor } }
    end

    assert_redirected_to recipe_url(Recipe.last)
  end

  test "should show recipe" do
    get recipe_url(@recipe)
    assert_response :success
  end

  test "should get edit" do
    get edit_recipe_url(@recipe)
    assert_response :success
  end

  test "should update recipe" do
    patch recipe_url(@recipe), params: { recipe: { client_id: @recipe.client_id, diagonal_maior: @recipe.diagonal_maior, doctor_crm: @recipe.doctor_crm, doctor_name: @recipe.doctor_name, doctor_phone: @recipe.doctor_phone, dp_ponte: @recipe.dp_ponte, entrega: @recipe.entrega, longe_dir_adicao: @recipe.longe_dir_adicao, longe_dir_cilindrico: @recipe.longe_dir_cilindrico, longe_dir_eixo: @recipe.longe_dir_eixo, longe_dir_esferico: @recipe.longe_dir_esferico, longe_dp: @recipe.longe_dp, longe_esq_adicao: @recipe.longe_esq_adicao, longe_esq_cilindrico: @recipe.longe_esq_cilindrico, longe_esq_eixo: @recipe.longe_esq_eixo, longe_esq_esferico: @recipe.longe_esq_esferico, material: @recipe.material, perto_dir_adicao: @recipe.perto_dir_adicao, perto_dir_cilindrico: @recipe.perto_dir_cilindrico, perto_dir_eixo: @recipe.perto_dir_eixo, perto_dir_esferico: @recipe.perto_dir_esferico, perto_dp: @recipe.perto_dp, perto_esq_adicao: @recipe.perto_esq_adicao, perto_esq_cilindrico: @recipe.perto_esq_cilindrico, perto_esq_eixo: @recipe.perto_esq_eixo, perto_esq_esferico: @recipe.perto_esq_esferico, product_id: @recipe.product_id, sinal: @recipe.sinal, tipo: @recipe.tipo, user_id: @recipe.user_id, valor: @recipe.valor } }
    assert_redirected_to recipe_url(@recipe)
  end

  test "should destroy recipe" do
    assert_difference('Recipe.count', -1) do
      delete recipe_url(@recipe)
    end

    assert_redirected_to recipes_url
  end
end
