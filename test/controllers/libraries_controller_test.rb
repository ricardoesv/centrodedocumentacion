require 'test_helper'

class LibrariesControllerTest < ActionController::TestCase
  setup do
    @library = libraries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:libraries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create library" do
    assert_difference('Library.count') do
      post :create, library: { acervo: @library.acervo, anaquel: @library.anaquel, ano_publicacion: @library.ano_publicacion, apendice: @library.apendice, apendice: @library.apendice, autor: @library.autor, bibliografia: @library.bibliografia, cantidad: @library.cantidad, clasificacion: @library.clasificacion, colaborador: @library.colaborador, contenido: @library.contenido, edicion: @library.edicion, edicion: @library.edicion, editorial: @library.editorial, indice: @library.indice, isbn: @library.isbn, peldano: @library.peldano, serie: @library.serie, subtitulo: @library.subtitulo, titulo: @library.titulo, traduccion: @library.traduccion }
    end

    assert_redirected_to library_path(assigns(:library))
  end

  test "should show library" do
    get :show, id: @library
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @library
    assert_response :success
  end

  test "should update library" do
    patch :update, id: @library, library: { acervo: @library.acervo, anaquel: @library.anaquel, ano_publicacion: @library.ano_publicacion, apendice: @library.apendice, apendice: @library.apendice, autor: @library.autor, bibliografia: @library.bibliografia, cantidad: @library.cantidad, clasificacion: @library.clasificacion, colaborador: @library.colaborador, contenido: @library.contenido, edicion: @library.edicion, edicion: @library.edicion, editorial: @library.editorial, indice: @library.indice, isbn: @library.isbn, peldano: @library.peldano, serie: @library.serie, subtitulo: @library.subtitulo, titulo: @library.titulo, traduccion: @library.traduccion }
    assert_redirected_to library_path(assigns(:library))
  end

  test "should destroy library" do
    assert_difference('Library.count', -1) do
      delete :destroy, id: @library
    end

    assert_redirected_to libraries_path
  end
end
