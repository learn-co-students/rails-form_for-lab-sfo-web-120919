require 'pry'
class SchoolClassesController < ApplicationController

    def create 

        school_class = SchoolClass.create(title: params[:school_class][:title],
         room_number: params[:school_class][:room_number].to_i)
        redirect_to school_class_path(school_class)
    end 
 
    def update
        #binding.pry
        s = SchoolClass.find(params[:id])
        s.update(strong_args(params[:school_class]))
        #binding.pry
        redirect_to school_class_path(s)
 
    end
    
    def edit
       @school_class = SchoolClass.find(params[:id])
    end 
 
    def new 

        @school_class = SchoolClass.new
 
    end 
 
    def index
 
 
    end 

    def show 
      @school_class = SchoolClass.find(params[:id])
    end 

    def strong_args(*args)
      params.require(:school_class).permit(:title, :room_number)
    end 
 
 
end
