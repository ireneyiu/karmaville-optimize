namespace :karma do
  desc "Add karma total"
  task :total => :environment do
    User.find_in_batches(batch_size: 2000) do |group|
      group.each {|user| user.update_attribute(:karma_total, user.total_karma) }
    end
  end
end