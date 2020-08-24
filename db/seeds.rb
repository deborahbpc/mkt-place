20.times do
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  username = Faker::Internet.username(specifier: "#{first_name} #{last_name}", separators: %w[. _ -])
  email = Faker::Internet.free_email(name: username)
  encrypted_password = "12345"
  address = Faker::Address.full_address
  phone_number = "0#{rand(1..9)}#{rand(0..9)}9#{rand(2..9)}#{(0..9).to_a.sample(7)}"
  cpf = (0..9).to_a.sample(11).to_s
  User.create!(first_name: first_name,
               last_name: last_name,
               username: username,
               email: email,
               encrypted_password: encrypted_password,
               address: address,
               phone_number: phone_number,
               cpf: cpf)
end

(1..5).times do
  user =
    type =
      quantity =
        price =
          product_name = "#{Faker::Appliance.brand} #{Faker::Appliance.equipment}"
  product_description =
    product_category = Faker::Commerce.department(max: 5)
end

t.references :user, null: false, foreign_key: true
t.string :type
t.integer :quantity
t.integer :price
t.string :product_name
t.text :product_description
t.string :product_category
t.boolean :active, default: true
