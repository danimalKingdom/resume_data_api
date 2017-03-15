class Education < ApplicationRecord

	belongs_to :student, :dependent => :delete
end
