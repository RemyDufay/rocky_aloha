class UsersController < ApplicationController

def dashboard
@rocks = current_user.rocks
@requests = current_user.requests.select { |request|  request.status != "Refusée" && request.end_date >= Date.today   }
@pastrequests = current_user.requests.select { |request|  request.status == "Refusée" || request.end_date < Date.today   }
@rents = Request.where({ rock_id: @rocks})
end


end
