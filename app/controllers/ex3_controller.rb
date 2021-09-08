class Ex3Controller < ApplicationController
  def postcreate
  	
  	msg = params[:msg]
  	user_id = params[:user_id]
  	@user_id_ok = Integer(user_id) rescue nil 
  	if(@user_id_ok != nil &&( @user_id_ok>User.count || @user_id_ok<1)) then
  		@user_id_ok = nil
  	end
  	if(msg!=nil && @user_id_ok!=nil) then
  		Post.create(msg: msg, user_id: @user_id_ok)
  	end
  end
  
  def userread
  	
  	user_id = params[:user_id]
  	@user_id_ok = Integer(user_id) rescue nil 
  	if(@user_id_ok != nil && ( @user_id_ok>User.count || @user_id_ok<1 )) then
  		@user_id_ok = nil
  	end
  	@upost = nil
	if(@user_id_ok!=nil) then 
  		@upost = User.find(@user_id_ok).posts
  	end
  end
  
end
