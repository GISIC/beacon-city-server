class Category < ActiveRecord::Base
	
	#------------ Relations ----------

	has_many :places, dependent: :destroy

	#------------ Validations ----------
	validates :major, presence: true, numericality: true, uniqueness: true
	validates :name, presence: true, length: { minimum: 2 }
end
