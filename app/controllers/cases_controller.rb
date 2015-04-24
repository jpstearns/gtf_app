class CasesController < ApplicationController
  def about
  end

  def index
  end

  def show
  end

  def new
    @case = Case.new
  end

  def edit
  end

  def create
    @case = Case.new(case_params)
    respond_to do |format|
      if @applicant.save
        format.html { redirect_to @applicant, notice: 'Case was successfully created.' }
        format.json { render :show, status: :created, location: @case }
      else
        format.html { render :new }
        format.json { render json: @case.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
  end
end
