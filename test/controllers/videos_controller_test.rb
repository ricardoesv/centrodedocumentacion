require 'test_helper'

class VideosControllerTest < ActionController::TestCase
  setup do
    @video = videos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:videos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create video" do
    assert_difference('Video.count') do
      post :create, video: { acervo: @video.acervo, anaquel: @video.anaquel, ano_publicacion: @video.ano_publicacion, apendice: @video.apendice, apendice: @video.apendice, autor: @video.autor, bibliografia: @video.bibliografia, cantidad: @video.cantidad, clasificacion: @video.clasificacion, colaborador: @video.colaborador, contenido: @video.contenido, edicion: @video.edicion, edicion: @video.edicion, editorial: @video.editorial, indice: @video.indice, isbn: @video.isbn, peldano: @video.peldano, serie: @video.serie, subtitulo: @video.subtitulo, titulo: @video.titulo, traduccion: @video.traduccion }
    end

    assert_redirected_to video_path(assigns(:video))
  end

  test "should show video" do
    get :show, id: @video
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @video
    assert_response :success
  end

  test "should update video" do
    patch :update, id: @video, video: { acervo: @video.acervo, anaquel: @video.anaquel, ano_publicacion: @video.ano_publicacion, apendice: @video.apendice, apendice: @video.apendice, autor: @video.autor, bibliografia: @video.bibliografia, cantidad: @video.cantidad, clasificacion: @video.clasificacion, colaborador: @video.colaborador, contenido: @video.contenido, edicion: @video.edicion, edicion: @video.edicion, editorial: @video.editorial, indice: @video.indice, isbn: @video.isbn, peldano: @video.peldano, serie: @video.serie, subtitulo: @video.subtitulo, titulo: @video.titulo, traduccion: @video.traduccion }
    assert_redirected_to video_path(assigns(:video))
  end

  test "should destroy video" do
    assert_difference('Video.count', -1) do
      delete :destroy, id: @video
    end

    assert_redirected_to videos_path
  end
end
