class SumController < ApplicationController
    def index
    end
    def result  
        a = params[:num1].to_i
        b = params[:num2].to_i   
        @output = a + b
        render json: {"payload": @output }
    end
end





