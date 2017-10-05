module Api
  class UsersController < ApplicationController
    def update
      @user = User.find(params[:id])
      @user.update(user_params)
      json_response(@user, :created)
    end

    private

    def user_params
      params.permit(:color, :gender, :size_ids, :styles)
    end
  end
end
