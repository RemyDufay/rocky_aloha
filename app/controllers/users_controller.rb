class UsersController < ApplicationController

def dashboard
@rocks = current_user.rocks
@requests = current_user.requests
@rents = Request.where({ rock_id: @rocks})
end

end
