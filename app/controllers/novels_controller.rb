class NovelsController < ApplicationController
  def index
    @novels = Novel.order(year: :asc)
  end

  def show
    @novel = Novel.find( params[:id])
    end
end
