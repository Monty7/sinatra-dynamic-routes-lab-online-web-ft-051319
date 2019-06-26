require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name].reverse
    "#{@name}"
  end

  get '/square/:number' do
    @num = params[:number].to_i
    @result = @num * @num
    "#{@result}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @result = ''
    @phrase = params[:phrase]
  
    @num.times do
      
     @result << "#{@phrase}"
    end
    @result
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
     @result = "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    #binding.pry
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    @operation = params[:operation]
    case @operation
      when "add"
        @total = @num1 + @num2
      when "subtract"
        @total = @num1 - @num2
      when "divide"
        @total = @num1 / @num2
      when "multiply"
        @total = @num1 * @num2

    end
    
    @total.to_s
  end
end