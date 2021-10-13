class CalculatorController < ApplicationController
    skip_before_action :verify_authenticity_token
    def index  
        @path = request.original_fullpath  
        if @path == "/summation"
            @heading = "SUMMATION"
        elsif @path == "/multiplication"
            @heading = "MULTIPLICATION"
        elsif @path == "/subtraction"
            @heading = "SUBTRACTION"
        elsif @path == "/division"
            @heading = "DIVISION"
        end    
    end
    def sum
        a = params[:firstnumber].to_i
        b = params[:secondnumber].to_i   
        @output = a + b  
        render json: {"payload": @output }
    end   
    def subtract
        a = params[:firstnumber].to_i
        b = params[:secondnumber].to_i   
        @output = a - b  
        render json: {"payload": @output }
    end
    def multiply
        a = params[:firstnumber].to_i
        b = params[:secondnumber].to_i   
        @output = a * b  
        render json: {"payload": @output }
    end
    def divide
        a = params[:firstnumber].to_i
        b = params[:secondnumber].to_i  
        if b == 0  
            render json: {"Denominator can not be zero": @output }
        else
            @output = a/b
            render json: {"payload": @output }
        end
    end
end
