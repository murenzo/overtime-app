class StaticController < ApplicationController
  def home
    flash.now[:notice] = "I am a sample flash message for the home page"
  end
end