class Worklist < ApplicationRecord
	belongs_to :school
	validates_presence_of :title, :duedate, :description, :school_id
	has_many :list_review_rs
	has_many :reviews, :through => :list_review_rs
end
