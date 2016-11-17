class StaticPagesController < ApplicationController
  def home
  @addvs = Addv.all
  end

  def help
  end
end
