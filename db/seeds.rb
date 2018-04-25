# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create! do |u|
      u.email     = 'abdelrahmanhsn1@gmail.com'
      u.password    = 'abdelrahmanhsn'
      u.admin = true
  end
User.create! do |u|
      u.email     = 'admin@gmail.com'
      u.password    = 'adminadmin'
      u.journalist = true
end
User.create! do |u|
    u.email     = '1@gmail.com'
    u.Full_Name = 'Adfsdkn'
    u.password    = 'adminadmin'
    u.journalist = true
end