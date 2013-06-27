namespace :data do

  desc 'import current posts into database'
  task :import => :environment do
    Dir.glob(Rails.root.join('app', 'content','**/*.{txt}')) do |file|
      title = File.basename(file, '.*').gsub('-', ' ').split(' ').map(&:capitalize).join(' ')
      date = Date.strptime(File.dirname(file).last(10), '%Y/%m/%d')
      body = IO.binread(file)
      slug = title.gsub(/[\W\d]+/, '-')
      Rails.logger.info("INSERT INTO Posts (title, date, body) VALUES (#{title}, #{date}, #{body}")
      Post.create(title: title, date: date, body: body, slug: slug)
    end
  end

end
