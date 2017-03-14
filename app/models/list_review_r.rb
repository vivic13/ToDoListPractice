class ListReviewR < ApplicationRecord
	belongs_to :review
	belongs_to :worklist
end
