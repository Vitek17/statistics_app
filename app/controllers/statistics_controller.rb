class StatisticsController < ApplicationController
  
  def index
  end
  def graph
    @email = params[:email].to_i
    @date = Date.strptime(params[:date], '%m/%d/%Y')
    @ar = Stat.getStat(@email, @date)
    render json: @ar
  end
  def graphic
  end
end
