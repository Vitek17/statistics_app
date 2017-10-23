class StatisticsController < ApplicationController

before_action :set_email, :set_date, only: [:graph]

  begin
    rescue Exception => e
  end

  def index
  end
  
  def graph
    @ar = Statistics.getAnswersStatistics(@email, @date)

    @ar2 = Statistics.getMovesStatistics(@email, @date)

    render json: {answ: @ar, move: @ar2}
  end

  private
    def set_email
      @email = params[:email].to_i
    end
    def set_date
      @date = Date.strptime(params[:date], '%m/%d/%Y')
      @date = @date.to_s + "%"
    end

end
