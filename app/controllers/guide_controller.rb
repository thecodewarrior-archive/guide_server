class GuideController < ApplicationController
  def all
    @mod = Mod.where(:modid => params[:mod])
    @modV = @mod.where(:version => params[:version])
    @guides = Guide.where()
  end

  def show
  end

  def revisions
  end
end
