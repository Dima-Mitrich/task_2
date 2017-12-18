class CasesController < ApplicationController

	def index
	  @cases = Case.all
	end

	def show
	  @case = Case.find(params[:id])
	end

	def new
	  @case = Case.new
	end

	def edit 
	  @case = Case.find(params[:id])
	end

	def create
	  @case = Case.new(case_params)
	end

	def update
	  @case = Case.find(params[:id])
	  @case.update(case_params)	
	end

	def destroy
	  @case = Case.find(params[:id])
	  @case.destroy

	  redirect_to cases_path
	end

  private

    def case_params
      params.require(:case).permit(:name, :status, :description, :priority)
    end
end
