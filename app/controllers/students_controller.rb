class StudentsController < ApplicationController

before_action :require_login

    def index
        @student = Student.all.reverse
        @new_student = Student.new
      end

      def create
        @temp = Student.create(student_params)
        if @temp.valid?
          flash[:notice] = "STUDENT CREATED!"
        else
          flash[:notice] = "Couldn't save!"
          puts @temp.errors.messages
        end
        redirect_to '/students'
      end

      def edit
        @student = Student.find(params[:id])
      end

      def update
        @student = Student.find(params[:id])
        @student.update(student_params)
        @student.save
      end

      # /post/:id
      def destroy
        @student = Student.find(params[:id])
        @student.destroy
        redirect_to '/students'
      end

      private

      def student_params
        params.require(:student).permit(:name, :age, :education, :occupation)
      end
end
