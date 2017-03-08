class Worklist < ApplicationRecord

	validates_presence_of :title, :duedate, :description
end
