module PostsHelper
	def pull(quote)
		if quote.present?
			"<blockquote>#{quote}</blockquote>".html_safe
		end
	end

	def link_to_publication(post, opts = {})
		if opts[:separator]
			"<span class=\"separator\">•</span>Published in #{link_to post.publication, post.url} on #{post.published_at}".html_safe
		else
			"Published in #{link_to post.publication, post.url} on #{post.published_at}".html_safe
		end
	end

end
