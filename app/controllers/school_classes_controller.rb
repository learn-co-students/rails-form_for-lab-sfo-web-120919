class SchoolClassesController < ApplicationController
    def new
        @sc = SchoolClass.new
    end
    def create
        # @sc = SchoolClass.new
        # @sc = SchoolClass.create(title:params[:school_class][:title],room_number:params[:school_class][:room_number])
        @sc = SchoolClass.create(params.require(:school_class).permit(:title,:room_number))
        # @sc = SchoolClass.last
        redirect_to school_class_path(@sc)
    end
    def edit
        @sc = SchoolClass.find(params[:id])
    end
    def update
        @sc = SchoolClass.find(params[:id])
        @sc.update(params.require(:school_class).permit(:title,:room_number))
        redirect_to school_class_path(@sc)
    end
    def show
        @sc = SchoolClass.find(params[:id])
    end
end
