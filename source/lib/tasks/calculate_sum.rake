desc "Add up all your karma points!"
  task :calculate_sum => :environment do
    # p "We're having so much fun!"
    User.find_in_batches(start: 0, batch_size: 1000) do |user_group|

      user_group.each do |user|
        puts "updating #{user.id}"
        user.update_attribute(:karma_sum, user.total_karma)
      end
    end
  end
