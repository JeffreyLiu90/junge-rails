
require 'rails_helper'


RSpec.describe User, type: :model do

  describe 'Validations' do
    it 'Should create a user' do
      user = User.create(
        email: "jeff@gmail.com",
        lastname: "liu",
        firstname: "Jeff",
        password: "12345",
        password_confirmation: "12345"
        )
      expect(user).to be_valid
    end

it 'should fail to log in if password is less than 3 characters' do
user = User.create(
  email: "jeff@gmail.com",
  lastname: "liu",
  firstname: "Jeff",
  password: "1",
  password_confirmation: "1"
  )
      expect(user.errors.full_messages).to include "Password is too short (minimum is 2 characters)"
end

it 'should fail to log in if password confirmation is incorrect' do
  user = User.create(
    email: "jeff@gmail.com",
    lastname: "liu",
    firstname: "Jeff",
    password: "123",
    password_confirmation: "144"
    )
        expect(user.errors.full_messages).to include "Password confirmation doesn't match Password"
end

it '3 should not save without unique email' do
  user = User.create(
    email: "liu@liu.com",
    lastname: "liu",
    firstname: "Jeff",
    password_digest: "123"
    )
  user2 = User.create(
    email: "Liu@liu.com",
    lastname: "liu",
    firstname: "Jeff",
    password_digest: "123"
    )
  expect(user2).to_not be_valid
end
end

describe '.authenticate_with_credentials' do
it 'it should not authenticate if email or password is wrong' do
user = User.create(
 email:'liu@liu.com',
 lastname:"liu",
 firstname:"Jeff",
 password:"12345",
 password_confirmation:"12345"
)

authenticate = User.authenticate_with_credentials(user.email, user.password)
expect(authenticate).to_not be_valid
end
end

  

end