class CoursesController < ApplicationController

        def index
          @course = Course.all.reverse
          @new_course = Course.new
        end
      
        def create
          @temp = Course.create(course_params)
          if @temp.valid?
            flash[:notice] = "COURSE CREATED!"
          else
            flash[:notice] = "YOU TYPED TOO MUCH!"
          end
          redirect_to '/'
        end
      
        def edit
          @course = Course.find(params[:id])
        end
      
        def update
          @course = Course.find(params[:id])
          @course.update(course_params)
          @course.save
        end
      
        # /post/:id
        def destroy
          @course = Course.find(params[:id])
          @course.destroy
          redirect_to '/'
        end
      
        private
      
        def course_params
          params.require(:course).permit(:course_name, :hours)
        end
      
    
end
