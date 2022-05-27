class UsersController < ApplicationController

def dashboard
@rocks = current_user.rocks
@requests = current_user.requests
@pastrequests = current_user.requests.select { |request|  request.status == "Refusée" || request.end_date < Date.today   }
@rents = Request.where({ rock_id: @rocks})
@urgentrents = @rents.where({ status: "En attente de validation"})
@okrents = @rents - @urgentrents

end


end
