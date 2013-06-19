require 'test_helper'

class HomeHelperTest < ActionView::TestCase

  def test_newest_post_returns_most_recent_post
    posts = Array.new
    test_views = File.expand_path(File.dirname(__FILE__) + "/../../fixtures/")

    Dir.glob(test_views + '/_d*.html.erb') do  |post|
      regex = /^.*_\w(\d+).html.erb$/
      posts << Date.strptime(post.match(regex).to_a.last, '%Y%m%d')
    end

    post = posts.sort_by{|d| d}.reverse!.first

    assert_equal(("_d" + post.strftime('%Y%m%d')), ('_d20130618'))
  end

end
