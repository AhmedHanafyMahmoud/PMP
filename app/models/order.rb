class Order < ApplicationRecord
    validates :address, :phone, :period, :frequency, :start_date, :post_id, :site_id,  presence: true
    validates :frequency, numericality: {
    	only_integer: true,
   	    greater_than_or_equal_to: 1,
   	    less_than_or_equal_to: 12,
    	message: "(per hour) can only be a whole number between 1 and 12"
	}
      validates :period, numericality: {
      only_integer: true,
        greater_than_or_equal_to: 1,
        less_than_or_equal_to: 16,
      message: "(in weeks) can only be a whole number between 1 and 16"
  }
	  belongs_to :user
    belongs_to :post
    belongs_to :site

end
