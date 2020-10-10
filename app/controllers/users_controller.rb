class UsersController < ApplicationController

  def show
    @user = User.find(current_user.id)
    @name = @user.name
    @prototype = @user.prototypes
  end

end
