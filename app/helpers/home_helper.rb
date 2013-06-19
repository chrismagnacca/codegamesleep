module HomeHelper

  def newest_post
    posts = Array.new
    views = File.expand_path(File.dirname(__FILE__) + "/../views/posts/")

    Dir.glob(views + '/_d*.html.erb') do  |post|
      regex = /^.*_\w(\d+).html.erb$/
      posts << Date.strptime(post.match(regex).to_a.last, '%Y%m%d')
    end

    post = posts.sort_by{|d| d}.reverse!.first
    ('posts/_d' + post.strftime('%Y%m%d'))
  end

end
