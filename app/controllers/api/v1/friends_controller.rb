class Api::V1::FriendsController < ApplicationController
  def index
    friends = Friend.all

    if friends
      render json: { status: "SUCCESS", message: "Fetch all the friends successfully", data: friends }, status: :ok
    else
      render json: friends.errors, status: :bad_request
    end
  end

  def create 
    friend = Friend.new(friend_params)

    if friend.save
      render json: { status: "SUCCESS", message: "Friend was created successfully!", data: friend }, status: :created
    else 
      render json: friend.errors, status: :unprocessable_entity
    end
  end

  private

  def friend_params 
    params.required(:friend).permit(:name, :location, :email, :twitter, :phone)  
  end
  
end