namespace :ttl_karma_pts do
  desc "Add total karma points to the User table"
  task :add_ttl_karma => :environment do
    User.all.each do |user|
      puts "updating #{user.id}"
      user.update_attribute(user.karma_points.sum(:value))
    end
  end
end
