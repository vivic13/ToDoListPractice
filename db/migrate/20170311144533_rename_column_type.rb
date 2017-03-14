class RenameColumnType < ActiveRecord::Migration[5.0]
  def change
 	rename_column :schools, :type, :school_type
  end
end
