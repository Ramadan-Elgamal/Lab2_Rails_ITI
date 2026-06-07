# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Destroying old data..."
PostEditor.destroy_all
Post.destroy_all
Editor.destroy_all
User.destroy_all

puts "Creating Users..."
ramadan = User.create!(name: "Ramadan", email: "ramadan@example.com")

puts "Creating Editors..."
editor_one = Editor.create!(name: "Ahmed", email: "ahmed@example.com")
editor_two = Editor.create!(name: "Mohamed", email: "mohamed@example.com")

puts "Creating Posts & Linking everything..."
post = Post.create!(title: "Ruby on Rails Architecture", content: "Understanding MVC is crucial.", creator: ramadan)

post.editors << editor_one
post.editors << editor_two

puts "Seed complete!"