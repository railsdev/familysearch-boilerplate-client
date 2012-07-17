module.exports = (match) ->
  match '', 'home#index'
  match 'login', 'login#login'
  match 'logout', 'login#logout'
