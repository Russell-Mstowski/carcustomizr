class VotesController < ApplicationController
  def create
    vote = Vote.new(
      value: "",
      customization_id: "",
      user_id: "")
    vote.save
  end
end
