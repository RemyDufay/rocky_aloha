class UsersController < ApplicationController

def dashboard
@rocks = current_user.rocks
@requests = current_user.requests
end

end
