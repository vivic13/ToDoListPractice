class AddSchoolIdToWorklists < ActiveRecord::Migration[5.0]
  def change
  	add_column :worklists, :school_id, :text
  end
end
