class CreateComentarios < ActiveRecord::Migration
  def change
    create_table :comentarios do |t|
      t.references :post, index: true
      t.text :texto

      t.timestamps null: false
    end
    add_foreign_key :comentarios, :posts
  end
end
