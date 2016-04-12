class UsersController < ApplicationController
  def index
    @users = User.all
    render template: "/users/index.html.erb"
  end

  def show
    user = find_user_by_id

    if user
      @user = user
      @twits = @user.twits
      render template: "/users/show.html.erb"
    else
      render_not_found
    end
  end

  private

  def find_user_by_id
    User.find(params['id'].to_i)
  end

  def render_not_found
    render template: "/users/not_found.html.erb"
  end

end
