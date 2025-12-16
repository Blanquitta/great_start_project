class Remove < ActiveRecord::Migration[8.0]
  def change
    remove_column :books, :author_id, :integer
  end
end
