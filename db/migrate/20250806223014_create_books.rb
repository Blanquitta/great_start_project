class CreateBooks < ActiveRecord::Migration[8.0]
  def change
    create_table :books do |t|
      t.string :author
      t.text :reviews
      t.string :publisher
      t.string :titl

      t.timestamps
    end
  end
end
