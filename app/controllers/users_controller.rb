class UsersController < ApplicationController
    def index
      if params[:term].present?
        @users = User.search(params[:term])
      else
        @users = User.all        
      end
    end
  end
  