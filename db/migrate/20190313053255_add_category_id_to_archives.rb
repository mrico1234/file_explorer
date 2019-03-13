class AddCategoryIdToArchives < ActiveRecord::Migration[5.2]
  def change
    add_reference :archives, :category, foreign_key: true
  end
end
