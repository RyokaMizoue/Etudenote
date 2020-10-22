class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @m0 = Post.where(created_at: Time.zone.now.beginning_of_day..Time.zone.now.end_of_day).where(user_id: @user).sum(:time)
    @m1 = Post.where(created_at: Time.zone.now.ago(1.days).beginning_of_day..Time.zone.now.ago(1.days).end_of_day).where(user_id: @user).sum(:time)
    @m2 = Post.where(created_at: Time.zone.now.ago(2.days).beginning_of_day..Time.zone.now.ago(2.days).end_of_day).where(user_id: @user).sum(:time)
    @m3 = Post.where(created_at: Time.zone.now.ago(3.days).beginning_of_day..Time.zone.now.ago(3.days).end_of_day).where(user_id: @user).sum(:time)
    @m4 = Post.where(created_at: Time.zone.now.ago(4.days).beginning_of_day..Time.zone.now.ago(4.days).end_of_day).where(user_id: @user).sum(:time)
    @m5 = Post.where(created_at: Time.zone.now.ago(5.days).beginning_of_day..Time.zone.now.ago(5.days).end_of_day).where(user_id: @user).sum(:time)
    @m6 = Post.where(created_at: Time.zone.now.ago(6.days).beginning_of_day..Time.zone.now.ago(6.days).end_of_day).where(user_id: @user).sum(:time)
  end
end
