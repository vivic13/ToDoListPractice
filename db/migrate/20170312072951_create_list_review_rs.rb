class CreateListReviewRs < ActiveRecord::Migration[5.0]
  def change
    create_table :list_review_rs do |t|
    	t.integer :review_id
    	t.integer :worklist_id
      t.timestamps
    end
  end
end
