class StaticPagesController < ApplicationController
  def start
  end

  def iphone
  	render :iphone, layout: false
  end

  def home
  	render :home, layout: false
  end
  def press
  	render :press, layout: false
  end
  def about
  	render :about, layout: false
  end
end

