class Journal < ActiveRecord::Base

	# require "rails_helper"
	# 	describe Journal do 
	# end
	belongs_to :user

end
