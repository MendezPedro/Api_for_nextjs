class CreateTutorials < ActiveRecord::Migration[6.1]
  def change
    create_table :tutorials do |t|
      t.string :title
      t.string :url
      t.string :array
      t.text :content
      t.string :img

      t.timestamps
    end
  end
end
