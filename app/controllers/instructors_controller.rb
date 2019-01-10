class InstructorsController < ApplicationController
before_action :require_login

    def index
        @instructor = Instructor.all.reverse
        @new_instructor = Instructor.new
      end

      def create
        @temp = Instructor.create(instructor_params)
        if @temp.valid?
          flash[:notice] = "instructor CREATED!"
        else
          flash[:notice] = "YOU TYPED TOO MUCH!"
        end
        redirect_to '/instructors'
      end

      def edit
        @instructor = Instructor.find(params[:id])
      end

      def update
        @instructor = Instructor.find(params[:id])
        @instructor.update(instructor_params)
        @instructor.save
      end

      # /post/:id
      def destroy
        @instructor = Instructor.find(params[:id])
        @instructor.destroy
        redirect_to '/instructors'
      end

      private

      def instructor_params
        params.require(:instructor).permit(:name, :age, :education, :salary)
      end



end
