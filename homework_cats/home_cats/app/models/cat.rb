class Cat < ApplicationRecord

	has_many :cat_home
	has_many :homes, through: :cat_home


end
