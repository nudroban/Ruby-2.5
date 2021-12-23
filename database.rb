require 'active_record'

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'dbfile.sqlite3')

class User < ActiveRecord::Base
  self.table_name = 'users'
end

user = User.new(name: 'Nikolay', email: 'nudrob1991@mail.ru', password: 'qwerty1234', age: 33)
user.save
puts User.all.count
