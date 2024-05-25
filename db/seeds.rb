# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
# #   Character.create(name: "Luke", movie: movies.first)
# Borrow.delete_all
# Booklist.delete_all
# Type.delete_all
# Authors.delete_all
# # Create book types
types = Type.create([
  { name: 'Horror', description: 'Books that aim to scare or terrify the reader.' },
  { name: 'Funny', description: 'Books that are designed to make the reader laugh.' },
  { name: 'Adventure', description: 'Books that involve exciting and sometimes dangerous experiences.' },
  { name: 'Romance', description: 'Books that focus on love stories and romantic relationships.' },
  { name: 'Science Fiction', description: 'Books that explore imaginary and futuristic scenarios.' }
])

# # Generate sample book records
next_bookid = 3
10.times do |i|
  Booklist.create(
    tilte: Faker::Book.name,
    author: Faker::Book.author,
    publisher: Faker::Book.publisher,
    year: Faker::Date.between(from: 10.years.ago, to: Date.today),
    available: Faker::Boolean.boolean,
    type_id: types.sample.id,
    bookid: next_bookid.to_s
  )
  next_bookid += 1
end