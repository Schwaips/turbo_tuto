# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "\n== Seeding the database =="
# system('bin/rails db:fixtures:load')
puts 'Destroying current data'
LineItem.destroy_all
LineItemDate.destroy_all
Quote.destroy_all
User.destroy_all
Company.destroy_all

puts 'Create Company'
kpmg = Company.create(name: "KPMG")
pwc = Company.create(name: "PWC")

puts 'Create users'
User.create(email: "accountant@kpmg.com", password: "password", company: kpmg)
User.create(email: "manager@kpmg.com", password: "password", company: kpmg)
User.create(email: "eavesdropper@pwc.com", password: "password", company: pwc)

puts 'Create quote'
first_quote = Quote.create(name: 'First quote', company: kpmg)
Quote.create(name: 'Second quote', company: kpmg)
Quote.create(name: 'Third quote', company: pwc)

puts 'Crete line item date'
today = LineItemDate.create(date: Date.current, quote: first_quote)
LineItemDate.create(date: Date.current + 1.week, quote: first_quote)

puts 'Create Line Item'
LineItem.create(line_item_date: today, name: "First item", description: "Description for first item", quantity: 2, unit_price: 100)
LineItem.create(line_item_date: today, name: "Second item", description: "Description for second item", quantity: 1, unit_price: 50)
LineItem.create(line_item_date: today, name: "Third item", description: "Description for third item", quantity: 2, unit_price: 25)
