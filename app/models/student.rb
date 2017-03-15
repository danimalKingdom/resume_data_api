class Student < ApplicationRecord
	has_many :experiences, :dependent => :delete_all
	has_many :educations, :dependent => :delete_all
	has_many :skills, :dependent => :delete_all
	has_many :capstones, :dependent => :delete_all
end
