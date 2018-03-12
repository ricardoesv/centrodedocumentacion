require 'test_helper'

class BooksControllerTest < ActionController::TestCase
  setup do
    @book = books(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:books)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create book" do
    assert_difference('Book.count') do
      post :create, book: { acervo: @book.acervo, anaquel: @book.anaquel, ano_publicacion: @book.ano_publicacion, apendice: @book.apendice, apendice: @book.apendice, autor: @book.autor, bibliografia: @book.bibliografia, cantidad: @book.cantidad, clasificacion: @book.clasificacion, colaborador: @book.colaborador, contenido: @book.contenido, edicion: @book.edicion, edicion: @book.edicion, editorial: @book.editorial, indice: @book.indice, isbn: @book.isbn, peldano: @book.peldano, serie: @book.serie, subtitulo: @book.subtitulo, titulo: @book.titulo, traduccion: @book.traduccion }
    end

    assert_redirected_to book_path(assigns(:book))
  end

  test "should show book" do
    get :show, id: @book
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @book
    assert_response :success
  end

  test "should update book" do
    patch :update, id: @book, book: { acervo: @book.acervo, anaquel: @book.anaquel, ano_publicacion: @book.ano_publicacion, apendice: @book.apendice, apendice: @book.apendice, autor: @book.autor, bibliografia: @book.bibliografia, cantidad: @book.cantidad, clasificacion: @book.clasificacion, colaborador: @book.colaborador, contenido: @book.contenido, edicion: @book.edicion, edicion: @book.edicion, editorial: @book.editorial, indice: @book.indice, isbn: @book.isbn, peldano: @book.peldano, serie: @book.serie, subtitulo: @book.subtitulo, titulo: @book.titulo, traduccion: @book.traduccion }
    assert_redirected_to book_path(assigns(:book))
  end

  test "should destroy book" do
    assert_difference('Book.count', -1) do
      delete :destroy, id: @book
    end

    assert_redirected_to books_path
  end
end
