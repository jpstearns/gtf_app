class ClientsController < ApplicationController
  def edit
  end

  def index
  	@submited = params["commit"]
  	@clientName = params["clientName"]
  	@clientPhone= params["clientPhone"]
  	@clientEmail = params["clientEmail"]
  	@address1 = params["address"]
  	@address2 = params["address2"]
  	@city = params["city"]
  	@state = params["state"]
  	@zip = params["zip"]
  end

  def new
  end

  def show
  end
end
    