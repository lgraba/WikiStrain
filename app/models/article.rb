class Article < ActiveRecord::Base
	belongs_to :user
	belongs_to :category

	# Search Functionality
	def self.search(query)
		# where(:title, query) Would return an exact match, when we just want like-matches.
		where("title like ? OR content like ?", "%#{query}%", "%#{query}%")
	end
end
