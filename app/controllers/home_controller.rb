class HomeController < ApplicationController
  def top
  end
  def create

  end
  def hour
    @hours=Hour.all
  end
  def id
    @hour = Hour.find_by(id: params[:id])
    @hour.user_name = @current_user.name
    @hour.check = "✖️"


    @hour.save


  end

  def cancel
  end
  def cancelId
    @hour = Hour.find_by(user_name: @current_user.name)
    @hour.user_name = ""
    @hour.check = "◯"

    @hour.save
  end
  def select
    @hour = Hour.find_by(user_name: @current_user.name)
  end
  def id_create
    @user=User.find_by(user_id: params[:user_id])
    if @user
      session[:search_id]=@user.id
      flash[:notice]="ログイン成功しました"
      redirect_to("/create/hour")
    else
      flash[:notice]="ログイン失敗しました"
      redirect_to("/create")
    end
  end
  def cancel_create
    @user=User.find_by(user_id: params[:user_id])
    if @user
      session[:search_id]=@user.id
      flash[:notice]="ログイン成功しました"
      redirect_to("/cancel/#{@user.id}/select")
    else
      flash[:notice]="ログイン失敗しました"
      redirect_to("/cancel")
    end

  end
  def date_create
    @user = User.find_by(id: params[:id])
    if params[:rese_date]

      redirect_to("/create/hour")
    else
      @error_message = "入力してください"
      render("home/id_date")
    end
  end
end
