desc "setkarma"
task :set_karma => :environment do

  User.find_in_batches(start: 0, batch_size: 1000) do |group|
    group.each { |user| user.update_attribute(:totalkarma,  user.karma_points.sum(:value)) }
  end
end