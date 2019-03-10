class CreateArchives < ActiveRecord::Migration[5.2]
  def change
    create_table :archives do |t|
      t.string :name
      t.string :type
      t.date :creationdate
      t.string :location
      t.string :tamaño
      t.string :string

      t.timestamps
    end
  end
end
