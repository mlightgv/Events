class Event < ActiveRecord::Base

	extend FriendlyId
  	friendly_id :title, use: :slugged
	belongs_to :organizers, class_name: "User"

	def all_tags=(names)
		self.tags = names.split(",").map do |n|
			Tag.where(name: n.strip).first_or_create!
		end
	end

	def all_tags
    	tags.map(&:name).join(", ")
    end
	
end
