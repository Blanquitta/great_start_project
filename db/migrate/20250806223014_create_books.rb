class CreateBooks < ActiveRecord::Migration[8.0]
  def change
    create_table :books do |t|
      t.string :author
      t.text :reviews
      t.string :publisher
      t.string :published_year
      t.string :title

      t.timestamps
    end
  end
end
