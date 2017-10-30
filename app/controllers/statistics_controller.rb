class StatisticsController < ApplicationController

before_action :set_email, :set_date, only: [:graph]

  begin
    rescue Exception => e
  end

  def index
  end
  
  def graph
    #@ar = Statistics.getAnswers(@email, @date1.strftime('%Y-%m-%d'))

    #@ar2 = Statistics.getMoves(@email, @date1.strftime('%Y-%m-%d'))


    @ar = Statistics.getAnswersPeriod(@email, @date1, @date2)

    @ar2 = Statistics.getMovesPeriod(@email, @date1,  @date2)

    render json: {answ: @ar, move: @ar2}
    #render json: {answ: @date1, move: @date2}
  end

  private

    def set_email
      @email = params[:email].to_i
    end

    def set_date
      
      @date1 = DateTime.parse(params[:date1])
      @date2 = DateTime.parse(params[:date2])

      #@date = Date.strptime(params[:date], '%m/%d/%Y')
      #@date = @date.to_s + "%"
    end

end
