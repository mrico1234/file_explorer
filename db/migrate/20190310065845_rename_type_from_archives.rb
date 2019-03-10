class RenameTypeFromArchives < ActiveRecord::Migration[5.2]
  def change
  	rename_column :archives, :type, :typ
  end
end
