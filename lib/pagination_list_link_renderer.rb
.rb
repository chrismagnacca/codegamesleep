class FriendlyLinkRenderer < WillPaginate::ActionView::LinkRenderer
  def page_link(page, text, attributes = {})
    p text
    url = url_for(page) # you should find a better way to do this...
    url.sub!('posts','stuff')
    @template.link_to text, url, attributes
  end
end