require 'test_helper'

class AudiosControllerTest < ActionController::TestCase
  setup do
    @audio = audios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:audios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create audio" do
    assert_difference('Audio.count') do
      post :create, audio: { acervo: @audio.acervo, anaquel: @audio.anaquel, ano_publicacion: @audio.ano_publicacion, apendice: @audio.apendice, apendice: @audio.apendice, autor: @audio.autor, bibliografia: @audio.bibliografia, cantidad: @audio.cantidad, clasificacion: @audio.clasificacion, colaborador: @audio.colaborador, contenido: @audio.contenido, edicion: @audio.edicion, edicion: @audio.edicion, editorial: @audio.editorial, indice: @audio.indice, isbn: @audio.isbn, peldano: @audio.peldano, serie: @audio.serie, subtitulo: @audio.subtitulo, titulo: @audio.titulo, traduccion: @audio.traduccion }
    end

    assert_redirected_to audio_path(assigns(:audio))
  end

  test "should show audio" do
    get :show, id: @audio
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @audio
    assert_response :success
  end

  test "should update audio" do
    patch :update, id: @audio, audio: { acervo: @audio.acervo, anaquel: @audio.anaquel, ano_publicacion: @audio.ano_publicacion, apendice: @audio.apendice, apendice: @audio.apendice, autor: @audio.autor, bibliografia: @audio.bibliografia, cantidad: @audio.cantidad, clasificacion: @audio.clasificacion, colaborador: @audio.colaborador, contenido: @audio.contenido, edicion: @audio.edicion, edicion: @audio.edicion, editorial: @audio.editorial, indice: @audio.indice, isbn: @audio.isbn, peldano: @audio.peldano, serie: @audio.serie, subtitulo: @audio.subtitulo, titulo: @audio.titulo, traduccion: @audio.traduccion }
    assert_redirected_to audio_path(assigns(:audio))
  end

  test "should destroy audio" do
    assert_difference('Audio.count', -1) do
      delete :destroy, id: @audio
    end

    assert_redirected_to audios_path
  end
end
