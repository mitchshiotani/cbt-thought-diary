class AddCategoryToEmotions < ActiveRecord::Migration[5.2]
  def change
    add_column :emotions, :category, :string
  end
end
