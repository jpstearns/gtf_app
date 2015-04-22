class InvestigationsController < ApplicationController
  

  def index
  end 
 
  def show
  end

  def new
    @submited = params["commit"]
    @firstname = params["firstname"]
    @lastname = params["lastname"]
    if @lastname == ""
      @error_msg = "Must enter your name"
    end
    @social=params["social"]
    @email = params["email"]
    @address = params["address"]
    @line2 = params["line2"]
    @city = params["city"]
    @state = params["state"]
    @zip = params["zip"]
    @phone1 = params["phone1"]
    @phone2 = params["phone2"]
    @company = params["company"]
    @comments = params["comments"]
    

  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
