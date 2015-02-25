require_relative "users_controller"
require_relative "products"

user = Users.new

#Ask user what to do
option = user.askForAction()

#as per user selected option take actions
if option != 0
  prod = Products.new
  user.callActions(prod, option)
end