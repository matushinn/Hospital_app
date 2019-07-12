class AdminController < ApplicationController
  def login_create
    redirect_to("/content")
  end
  def login

  end
  def content
  end
  def check
    @hours=Hour.all
  end
  def addsearch
  end
  def day_disp
  end
  def add

  end
  def search

  end
  def result
  end
  def add_create
    @user = User.new(
      name: params[:name],
      user_id: params[:user_id],
      birthday: params[:birthday]
    )
    if @user.save
      flash[:notice] = "ユーザー登録が完了しました"
      redirect_to("/login")
    else
      @error_message = "入力してください"
      render("admin/add")
    end

  end
  def search_create
    @user = User.find_by(name: params[:name])
    if @user
      session[:search_id] = @user.id
      redirect_to("/search/result")
      flash[:notice]="検索が成功しました"
    else
      @error_message = "名前または生年月日が間違っています"
      @name = params[:name]
      @birthday = params[:birthday]
      render("admin/search")
    end
  end
  def logout
    session[:search_id] = nil
    redirect_to("/")
  end



end
