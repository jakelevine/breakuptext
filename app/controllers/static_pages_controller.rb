class StaticPagesController < ApplicationController
  def start
  end

  def iphone
  	render :iphone, layout: false
  end
end

