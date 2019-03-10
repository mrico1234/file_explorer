class CreateHasFolders < ActiveRecord::Migration[5.2]
  def change
    create_table :has_folders do |t|
      t.references :category, foreign_key: true
      t.references :archive, foreign_key: true

      t.timestamps
    end
  end
end
