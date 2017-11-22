class StatisticsController < ApplicationController

before_action :set_email, :set_date, only: [:graph]

  begin
    rescue Exception => e
  end

  def index
  end
  
  def graph

    @ar = Statistics.getAnswersPeriod(@email, @date1, @date2)

    @ar2 = Statistics.getMovesPeriod(@email, @date1,  @date2)

    @tabl = Hash.new


    @tabl.merge!(@ar)

    @tabl.each do |k, v|
      @tabl[k] = [@tabl[k], 0, 0]
    end
     

    @ar2.each do |k, v|
      if @tabl.key?(k)
         @tabl[k][1] = v
      else
         @tabl[k] = [0, v, 0]
      end
    end

    @tabl = @tabl.map{|k, v| [k, v[0], v[1], v[2]]}

    render json: {answ: @ar, move: @ar2, ap: @tabl}
  end


  private

    def set_email
      @email = params[:email].to_i
    end

    def set_date
      
      @date1 = DateTime.parse(params[:date1])
      @date2 = DateTime.parse(params[:date2])

    end

end



=begin
q = {a:1, b:2, c:3}
w = {b:4, c:5, d:6}
e = Hash.new


 e.merge!(q)

e.each do |k, v|
  e[k] = [e[k], 0, 0]
end
 

w.each do |k, v|
  if e.key?(k)
     e[k][1] = v
  else
     e[k] = [0, v, 0]
  end
end

r = {a: 7, b: 8, d: 9, e: 10}


r.each do |k, v|
  if e.key?(k)
    e[k][2] = v
  else
   e[k] = [0,0,v]
  end
end

=end



    #@us = User.all["fio"];

=begin
    k = 0
    for i in 0..([@ar.length, @ar2.length].max-1) do 
      if i < @ar.length
        unless tabl.key?(@ar.keys[i])
          tabl[@ar.keys[i]] = @ar[@ar.keys[i]]
        else 
          tabl[@ar1.keys[i]] = [@ar1[@ar1.keys[i]], tabl[@ar1.keys[i]]]          
        end
      end
      if i < @ar2.length
        unless tabl.key?(@ar2.keys[i]) || tabl[@ar2.keys[i]] == 0
          tabl[@ar2.keys[i]] = [0, @ar2[@ar2.keys[i]], 0]
        else
          tabl[@ar2.keys[i]] = [tabl[@ar2.keys[i]], @ar2[@ar2.keys[i]], 0]
        end
      end

    end
=end




    #@ar = Statistics.getAnswers(@email, @date1.strftime('%Y-%m-%d'))

    #@ar2 = Statistics.getMoves(@email, @date1.strftime('%Y-%m-%d'))


    #@ar = Statistics.getAnswersPeriod(@email, @date1, @date2)

    #@ar2 = Statistics.getMovesPeriod(@email, @date1,  @date2)



      #@date1 = DateTime.parse(params[:date1])
      #@date2 = DateTime.parse(params[:date2])

      #@date = Date.strptime(params[:date], '%m/%d/%Y')
      #@date = @date.to_s + "%"