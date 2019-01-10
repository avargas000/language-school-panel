class CohortsController < ApplicationController
before_action :require_login

    def index
        @cohort = Cohort.all.reverse
        @new_cohort = Cohort.new
      end

      def create
        @temp = Cohort.create(cohort_params)
        if @temp.valid?
          flash[:notice] = "COHORT CREATED!"
        else
          flash[:notice] = "YOU TYPED TOO MUCH!"
        end
        redirect_to '/cohorts'
      end

      def edit
        @cohort = Cohort.find(params[:id])
      end

      def update
        @cohort = Cohort.find(params[:id])
        @cohort.update(cohort_params)
        @cohort.save
      end

      # /post/:id
      def destroy
        @cohort = Cohort.find(params[:id])
        @cohort.destroy
        redirect_to '/cohorts'
      end

      private

      def cohort_params
        params.require(:cohort).permit(:name, :start_date, :end_date)
      end


end
