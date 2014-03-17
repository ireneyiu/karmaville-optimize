class User < ActiveRecord::Base
  has_many :karma_points
  after_create :update_karma

  attr_accessible :first_name, :last_name, :email, :username, :totalkarma

  validates :first_name, :presence => true
  validates :last_name, :presence => true

  validates :username,
            :presence => true,
            :length => {:minimum => 2, :maximum => 32},
            :format => {:with => /^\w+$/},
            :uniqueness => {:case_sensitive => false}

  validates :email,
            :presence => true,
            :format => {:with => /^[\w+\-.]+@[a-z\d\-.]+\.[a-z]+$/i},
            :uniqueness => {:case_sensitive => false}

  def self.by_karma
    #joins(:karma_points).group('users.id').order('SUM(karma_points.value) DESC')
    self.order('totalkarma DESC')
  end

  def total_karma
    self.totalkarma
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def update_karma
    self.update_attribute(:totalkarma, self.total_karma)
  end


end
