# Language: Ruby, Level: Level 3
class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :book
      t.string :pen
      t.string :scale
      t.string :pencil
      t.string :eraser
      t.string :plaster
      t.string :stapular
      t.string :stamp
      t.timestamps
    end
  end
end
