class City < ActiveRecord::Base

	#------------ Relations ----------

	has_many :places, dependent: :destroy

	#------------ Validations ----------
	validates :uuid, presence: true, length: { minimum: 2 }
	validates :name, presence: true, length: { minimum: 2 }
end
