class UsersController < ApplicationController
    def index 
        users = User.all
        render json: users.as_json(methods: [:post])
    end
    def show 
        user = User.find(params[:id])
        render json: user.as_json(methods: [:post])
    end

end
