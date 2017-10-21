class StatisticsController < ApplicationController

before_action :set_email, :set_date, only: [:graph]

  begin
    rescue Exception => e
  end

  def index
  end
  
  def graph
    @ar = Statistics.getAnswersStatistic(@email, @date)
    render json: @ar
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
