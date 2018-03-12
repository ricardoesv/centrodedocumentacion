class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :titulo
      t.string :subtitulo
      t.string :autor
      t.string :colaborador
      t.string :clasificacion
      t.string :editorial
      t.string :edicion
      t.string :edicion
      t.string :serie
      t.string :traduccion
      t.string :bibliografia
      t.string :indice
      t.string :apendice
      t.string :apendice
      t.string :isbn
      t.string :contenido
      t.integer :cantidad
      t.string :acervo
      t.string :ano_publicacion
      t.string :anaquel
      t.string :peldano

      t.timestamps null: false
    end
  end
end
