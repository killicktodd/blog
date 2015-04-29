class Post < ActiveRecord::Base
	has_many :comments
	# validate our data
	# don't let users submit blank data

	validates :title, presence: true, uniqueness: true
	validates :body, presence: true, length: {minimum: 20, maximum: 10000}
	validates :author, presence: true

	paginates_per 2

	def self.from_param(param)
		where(author: NameCase(param))
	end

end
