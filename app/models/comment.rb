class Comment < ActiveRecord::Base
	belongs_to :post
	validates :body, presence: true, uniqueness: true
	validates :post, presence: true

def commenter_name
	commenter.present? ? commenter : "Anonymous"
end

end
