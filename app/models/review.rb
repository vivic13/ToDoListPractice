class Review < ApplicationRecord
	has_many :list_review_rs
	has_many :worklists, :through => :list_review_rs
end
