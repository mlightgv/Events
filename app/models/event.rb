class Event < ActiveRecord::Base

	extend FriendlyId
  	friendly_id :title, use: :slugged
	belongs_to :organizers, class_name: "User"

	def self.tagged_with(name)
		Tag.find_by_name!(name).events
	end

	def self.tag_counts
		Tag.select("tags.name, count(taggings.tag_id) as count").
		joins(:taggings).group("taggings.tag_id")
	end

	def all_tags=(names)
		self.tags = names.split(",").map do |n|
			Tag.where(name: n.strip).first_or_create!
		end
	end

	def all_tags
    	tags.map(&:name).join(", ")
    end
	
end
