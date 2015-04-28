module PostsHelper
	def pull(quote)
		if quote.present?
			"<blockquote>#{quote}</blockquote>".html_safe
		end
	end
end
