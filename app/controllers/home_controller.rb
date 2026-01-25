class HomeController < ApplicationController
  def index
    @title = 'デイトラ'
  end
  def about
    @title = 'aboutページ'
  end
end