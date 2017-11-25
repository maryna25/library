namespace :db do
  task :feed do
    require 'feed/feed'
    include DbFeed
    DbFeed.create_users
    puts 'Database feed finished!'
  end
end
