def sign_up
  visit('/users/new')
  fill_in('email', with: 'pug@gmail.com')
  fill_in('name', with: 'Pug')
  fill_in('username', with: '@puggy')
  fill_in('password', with: 'password')
  fill_in('password_confirmation', with: 'password')
  click_button 'Sign up'
end



def post_a_peep(message)
  visit '/peeps/new'
  Peep.create(name: User.first.name, username: User.first.username, user_id: User.first.id, message: message)
  click_button 'Post'
end