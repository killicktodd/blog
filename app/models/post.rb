class Post < ActiveRecord::Base
	has_many :comments
	# validate our data
	# don't let users submit blank data

	validates :title, presence: true, uniqueness: true
	validates :body, presence: true, length: {minimum: 20, maximum: 10000}
	validates :author, presence: true

end
