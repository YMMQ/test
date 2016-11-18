class StaticPagesController < ApplicationController
  def home
  @addvs = Addv.all
  end

  def newspapers
  end


  def help
  end
end
