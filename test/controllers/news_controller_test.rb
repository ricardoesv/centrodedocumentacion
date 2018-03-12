require 'test_helper'

class NewsControllerTest < ActionController::TestCase
  setup do
    @news = news(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:news)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create news" do
    assert_difference('News.count') do
      post :create, news: { acervo: @news.acervo, anaquel: @news.anaquel, ano_publicacion: @news.ano_publicacion, apendice: @news.apendice, apendice: @news.apendice, autor: @news.autor, bibliografia: @news.bibliografia, cantidad: @news.cantidad, clasificacion: @news.clasificacion, colaborador: @news.colaborador, contenido: @news.contenido, edicion: @news.edicion, edicion: @news.edicion, editorial: @news.editorial, indice: @news.indice, isbn: @news.isbn, peldano: @news.peldano, serie: @news.serie, subtitulo: @news.subtitulo, titulo: @news.titulo, traduccion: @news.traduccion }
    end

    assert_redirected_to news_path(assigns(:news))
  end

  test "should show news" do
    get :show, id: @news
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @news
    assert_response :success
  end

  test "should update news" do
    patch :update, id: @news, news: { acervo: @news.acervo, anaquel: @news.anaquel, ano_publicacion: @news.ano_publicacion, apendice: @news.apendice, apendice: @news.apendice, autor: @news.autor, bibliografia: @news.bibliografia, cantidad: @news.cantidad, clasificacion: @news.clasificacion, colaborador: @news.colaborador, contenido: @news.contenido, edicion: @news.edicion, edicion: @news.edicion, editorial: @news.editorial, indice: @news.indice, isbn: @news.isbn, peldano: @news.peldano, serie: @news.serie, subtitulo: @news.subtitulo, titulo: @news.titulo, traduccion: @news.traduccion }
    assert_redirected_to news_path(assigns(:news))
  end

  test "should destroy news" do
    assert_difference('News.count', -1) do
      delete :destroy, id: @news
    end

    assert_redirected_to news_index_path
  end
end
