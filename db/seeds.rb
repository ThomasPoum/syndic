# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user = User.create(
  {
    email: "tom@dev.com",
    password: "devdev",
    password_confirmation: "devdev",
    fullname: "Thomas Poumarède"
  }
)

condo = Condo.create(
  {
    address: "6 rue colbert", 
    floor: "4 gauche", 
    surface: 78,
    condo_id: condo.id, 
    user_id: user.id, 
    repart: 145
  },
  {
    address: "6 rue colbert", 
    floor: "4 droite", 
    surface: 100, 
    condo_id: condo.id,
    user_id: user.id, 
    repart: 140
  }, 
  {
    address: "6 rue colbert", 
    floor: "1 droite", 
    surface: 100, 
    condo_id: condo.id,
    user_id: user.id, 
    repart: 120
  },
  {
    address: "6 rue colbert", 
    floor: "3 droite", 
    surface: 100, 
    condo_id: condo.id,
    user_id: user.id, 
    repart: 130
  },
  {
    address: "6 rue colbert", 
    floor: "RDC", 
    surface: 35, 
    condo_id: condo.id,
    user_id: user.id, 
    repart: 55
  }
)

properties = Property.create(
  {
    name: "6 rue Colbert - 29200 BREST",
    user_id: user.id
  }
)

expenses = Expense.create(
  [{
    nature: "Cleaning shared space", 
    description: "Cleaning shared space", 
    estimated: 1000.0, 
    real: 0.0, 
    exercice: 2020,
    condo_id: condo.id, 
    user_id: user.id
  },
  {
    nature: "Elevator", 
    description: "Elevator maintenance and emergency service", 
    estimated: 2500.0, 
    real: 0.0, 
    exercice: 2020,
    condo_id: condo.id, 
    user_id: user.id
  },
  {
    nature: "Trustee Management tool", 
    description: "Trustee mangement tool (1 year subscription)", 
    estimated: 50.0, 
    real: 0.0, 
    exercice: 2020,
    condo_id: condo.id, 
    user_id: user.id
  },
  {
    nature: "Electricity", 
    description: "Electricity in shared spaces", 
    estimated: 250.0, 
    real: 0.0, 
    exercice: 2020,
    condo_id: condo.id, 
    user_id: user.id
  },
  {
    nature: "Electricity", 
    description: "Electricity in shared spaces", 
    estimated: 250.0, 
    real: 0.0, 
    exercice: 2020,
    condo_id: condo.id, 
    user_id: user.id
  },
  {
    nature: "Stairs fixes", 
    description: "The stairs need some refresh-up painting work", 
    estimated: 750.0, 
    real: 0.0, 
    exercice: 2020,
    condo_id: condo.id, 
    user_id: user.id
  },
  {
    nature: "City Tax", 
    description: "Brest City tax and trash tax", 
    estimated: 1750.0, 
    real: 0.0, 
    exercice: 2020,
    condo_id: condo.id, 
    user_id: user.id
  }]
)

invoices = Invoices.create(
  [
    {
      date_invoice: "2020-11-12", 
      company: "O2", 
      description: "First semester", 
      amount: 450.0, 
      paid: true, 
      expense_id: communities.first, 
      user_id: user.id
    },
    {
      date_invoice: "2020-11-12", 
      company: "Otis", 
      description: "Big repair because of too many use of the elevator", 
      amount: 1000.0, 
      paid: false, 
      expense_id: communities[1], 
      user_id: user.id
    },
    {
      date_invoice: "2020-05-06", 
      company: "Otis", 
      description: "First semester maintenance bill", 
      amount: 1000.0, 
      paid: true, 
      expense_id: communities[1], 
      user_id: user.id
    },
    { 
      date_invoice: "2020-11-12", 
      company: "Syndik", 
      description: "Annual subscription", 
      amount: 50.0, 
      paid: true, 
      expense_id: communities[2], 
      user_id: user.id
    },
    { 
      date_invoice: "2020-02-12", 
      company: "EDF", 
      description: "Upfront payement", 
      amount: 250.0, 
      paid: true, 
      expense_id: communities[3], 
      user_id: user.id
    },
    { 
      date_invoice: "2020-12-12", 
      company: "City of Brest", 
      description: "To be paid by the end of December", 
      amount: 1750.0, 
      paid: false, 
      expense_id: communities.last, 
      user_id: user.id
    },
    { 
      date_invoice: "2020-08-12", 
      company: "Roberto Repairs", 
      description: "More lockdowns, more use, more breaks. Even if it ...", 
      amount: 1200.0, 
      paid: true, 
      expense_id: communities.[4], 
      user_id: user.id
    } 
  ]
)