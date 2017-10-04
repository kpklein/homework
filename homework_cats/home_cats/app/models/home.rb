class Home < ApplicationRecord

	has_many :cat_home
	has_many :cats, through: :cat_home
end
