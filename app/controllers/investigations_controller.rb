class InvestigationsController < ApplicationController
	def new
		@investigation = Investigation.new
	end

	def create
		@investigation = Investigation.new(params[:investigation])
		if @investigation.save
			redirect_to new_investigation_path
		end
	end
end