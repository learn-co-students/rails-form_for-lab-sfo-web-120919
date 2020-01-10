class StudentsController < ApplicationController

   def create 

        student = Student.create(first_name: params[:student][:first_name], last_name: params[:student][:last_name])
        redirect_to student_path(student)

   end 

   def edit 
     @student = Student.find(params[:id])
   end 

   def update

      
       s = Student.find(params[:id])
       s.update(strong_args(params[:student]))
       #binding.pry
       redirect_to student_path(s)


   end 

   def new 

    @student = Student.new

   end 

   def index


   end 

   def show 
 
    @student = Student.find(params[:id])

   end 

   def strong_args(*args)
      params.require(:student).permit(:first_name, :last_name)
    end 

end
