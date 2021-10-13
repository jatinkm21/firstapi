class DivideController < ApplicationController
    def index
    end
    def result
        a = params[:num1].to_i
        b = params[:num2].to_i   
        @output = a / b  
        render json: {"result of division": @output }
    end
end
