class HomeController < ApplicationController
  def top
  end
  def create

  end
  def hour
  end
  def id
  end
  def cancel
  end
  def cancelId
  end
  def select
  end
  def id_create
    @user=User.find_by(user_id: params[:user_id])
    if @user
      flash[:notice]="ログイン成功しました"
      redirect_to("/create/date")
    else
      flash[:notice]="ログイン失敗しました"
      redirect_to("/create")
    end
  end
  def cancel_create
    redirect_to("/cancel/select")
  end
end
