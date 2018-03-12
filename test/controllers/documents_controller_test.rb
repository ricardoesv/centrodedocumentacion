require 'test_helper'

class DocumentsControllerTest < ActionController::TestCase
  setup do
    @document = documents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:documents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create document" do
    assert_difference('Document.count') do
      post :create, document: { acervo: @document.acervo, anaquel: @document.anaquel, ano_publicacion: @document.ano_publicacion, apendice: @document.apendice, apendice: @document.apendice, autor: @document.autor, bibliografia: @document.bibliografia, cantidad: @document.cantidad, clasificacion: @document.clasificacion, colaborador: @document.colaborador, contenido: @document.contenido, edicion: @document.edicion, edicion: @document.edicion, editorial: @document.editorial, indice: @document.indice, isbn: @document.isbn, peldano: @document.peldano, serie: @document.serie, subtitulo: @document.subtitulo, titulo: @document.titulo, traduccion: @document.traduccion }
    end

    assert_redirected_to document_path(assigns(:document))
  end

  test "should show document" do
    get :show, id: @document
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @document
    assert_response :success
  end

  test "should update document" do
    patch :update, id: @document, document: { acervo: @document.acervo, anaquel: @document.anaquel, ano_publicacion: @document.ano_publicacion, apendice: @document.apendice, apendice: @document.apendice, autor: @document.autor, bibliografia: @document.bibliografia, cantidad: @document.cantidad, clasificacion: @document.clasificacion, colaborador: @document.colaborador, contenido: @document.contenido, edicion: @document.edicion, edicion: @document.edicion, editorial: @document.editorial, indice: @document.indice, isbn: @document.isbn, peldano: @document.peldano, serie: @document.serie, subtitulo: @document.subtitulo, titulo: @document.titulo, traduccion: @document.traduccion }
    assert_redirected_to document_path(assigns(:document))
  end

  test "should destroy document" do
    assert_difference('Document.count', -1) do
      delete :destroy, id: @document
    end

    assert_redirected_to documents_path
  end
end
