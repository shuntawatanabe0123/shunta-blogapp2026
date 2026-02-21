# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

jon = User.find_or_initialize_by(email: 'john@example.com')
jon.password = 'password'
jon.save!

emily = User.find_or_initialize_by(email: 'emily@example.com')
emily.password = 'password'
emily.save!

5.times do
    jon.articles.create!(
        title: Faker::Lorem.sentence(word_count: 5),
        content: Faker::Lorem.paragraphs(number: 5).join("\n")
    )
end

5.times do
    emily.articles.create!(
        title: Faker::Lorem.sentence(word_count: 5),
        content: Faker::Lorem.paragraphs(number: 5).join("\n")
    )
end