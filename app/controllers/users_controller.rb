class UsersController < ApplicationController

def create
  @user = User.new(username: params[:username], email: params[:email], password: params[:password])

  if @user.save
    redirect_to @user

  else
    render :new, status: :unprocessable_entity
  end
end                                                                                                                                      


  end
