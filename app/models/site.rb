class Site < ApplicationRecord


	validates :name, :address, :displayNumber, presence: true
    validates :displayNumber, numericality: {
    	only_integer: true,
   	    greater_than_or_equal_to: 0,
    	message: "can only be a whole number > 0"
	}
    has_many :orders , dependent: :destroy

end
