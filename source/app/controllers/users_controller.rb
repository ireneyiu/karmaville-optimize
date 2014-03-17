class UsersController < ApplicationController
  def index
    @users = User.order('karma_sum DESC').limit(50)
  end
end
