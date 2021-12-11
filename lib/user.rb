require_relative 'database_connection.rb'
require 'bcrypt'

class User
  attr_reader :id,:email
  def initialize(id:,email:)
    @id = id
    @email = email
  end

  def self.create(email:,password:)
    encrypted_password = BCrypt::Password.create(password)
    result = DatabaseConnection.query("INSERT INTO users(email, password) VALUES($1,$2) RETURNING id,email", [email, encrypted_password])
    User.new(id: result[0]['id'], email: result[0]['email'])
  end

  def self.find(id:)
    return nil if id == nil

    result = DatabaseConnection.query("SELECT * FROM users WHERE id = $1", [id])
    User.new(id: result[0]['id'], email: result[0]['email'])
  end

end