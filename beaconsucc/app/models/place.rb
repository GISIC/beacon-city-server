class Place < ActiveRecord::Base

#----------- Properties ----------

	has_attached_file :url_image, :styles => { :large => "450x450", :medium => "300x300", :small => "150x150"},
	 :url => "/system/:class/:id/:style/:basename.:extension",
	 :path => ":rails_root/public/system/:class/:id/:style/:basename.:extension",
	 :default_url => "/public/:class/:style/placeholder.png"

	 #validates_attachment_presence :profile_image
	 validates_attachment_size :url_image, :less_than => 2.megabytes  
	 validates_attachment_content_type :url_image, :content_type => /\Aimage\/.*\Z/

	#------------ Relations ----------

	belongs_to :city
	belongs_to :category

	#------------ Validations ----------
	validates :minor, presence: true, numericality: true
	validates :name, presence: true, length: { minimum: 2 }

	def url_large
		url_image(:large)
	end

	def url_medium
		url_image(:medium)
	end

	def url_small
		url_image(:small)
	end
end
