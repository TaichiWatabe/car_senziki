class UsersController < ApplicationController
<<<<<<< HEAD

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      # 保存の成功をここで扱う。
    else
      render 'new'
    end
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end
=======
  
    def show
      @user = User.find(params[:id])
    end
  
    def new
      @user = User.new
    end
  
    def create
      @user = User.new(user_params)
      if @user.save
        flash[:success] = "ようこそ！カーセンジキへ！"
        redirect_to @user
      else
        render 'new'
      end
    end
  
    private
  
      def user_params
        params.require(:user).permit(:name, :email, :password,
                                     :password_confirmation)
      end
>>>>>>> sign-up2
end