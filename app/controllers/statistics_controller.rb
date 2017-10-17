class StatisticsController < ApplicationController
  
  def index
  end
  def graph
    @email = params[:email].to_i
    @date = Date.strptime(params[:date], '%m/%d/%Y')
    @ar = Stat.getStat(@email, @date)
    @answ = []
    @ar.each_with_index do |el, i|
      temp = []
      temp = el
      @answ[i] = temp
    end
    render json: @answ
  end
  def graphic
  end
end
