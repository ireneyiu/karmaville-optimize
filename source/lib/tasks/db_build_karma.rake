namespace :db do
  desc "Generating ids..."
  task :create_karma_id => :migrate do
    User.all.each do |user|
      user.update_attribute(:karma_amount, user.karma_points.sum(:value))
    end
  end
end