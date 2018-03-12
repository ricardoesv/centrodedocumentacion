require 'test_helper'

class HistoricalsControllerTest < ActionController::TestCase
  setup do
    @historical = historicals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:historicals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create historical" do
    assert_difference('Historical.count') do
      post :create, historical: { acervo: @historical.acervo, anaquel: @historical.anaquel, ano_publicacion: @historical.ano_publicacion, apendice: @historical.apendice, apendice: @historical.apendice, autor: @historical.autor, bibliografia: @historical.bibliografia, cantidad: @historical.cantidad, clasificacion: @historical.clasificacion, colaborador: @historical.colaborador, contenido: @historical.contenido, edicion: @historical.edicion, edicion: @historical.edicion, editorial: @historical.editorial, indice: @historical.indice, isbn: @historical.isbn, peldano: @historical.peldano, serie: @historical.serie, subtitulo: @historical.subtitulo, titulo: @historical.titulo, traduccion: @historical.traduccion }
    end

    assert_redirected_to historical_path(assigns(:historical))
  end

  test "should show historical" do
    get :show, id: @historical
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @historical
    assert_response :success
  end

  test "should update historical" do
    patch :update, id: @historical, historical: { acervo: @historical.acervo, anaquel: @historical.anaquel, ano_publicacion: @historical.ano_publicacion, apendice: @historical.apendice, apendice: @historical.apendice, autor: @historical.autor, bibliografia: @historical.bibliografia, cantidad: @historical.cantidad, clasificacion: @historical.clasificacion, colaborador: @historical.colaborador, contenido: @historical.contenido, edicion: @historical.edicion, edicion: @historical.edicion, editorial: @historical.editorial, indice: @historical.indice, isbn: @historical.isbn, peldano: @historical.peldano, serie: @historical.serie, subtitulo: @historical.subtitulo, titulo: @historical.titulo, traduccion: @historical.traduccion }
    assert_redirected_to historical_path(assigns(:historical))
  end

  test "should destroy historical" do
    assert_difference('Historical.count', -1) do
      delete :destroy, id: @historical
    end

    assert_redirected_to historicals_path
  end
end
