class SessionsController < ApplicationController
  include SessionsConcern

  def new; end
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user &. authenticate(params[:session][:password])
      login user
      flash[:success] = t("login.success")
      redirect_to root_path
    else
      flash.now[:danger] = t("login.failed")
      render :new
    end
  end

  def destroy
    logout
    flash[:success] = t("login.loggout_success")
    redirect_to login_path
  end
end
