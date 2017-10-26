User.create!(email: 'user1@gmail.com', password: '123123')
User.create!(email: 'user2@gmail.com', password: '123123')

Category.create!(title: 'Job', type: 'IncomeCategory', user_id: 1)

Category.create!(title: 'Food', type: 'ExpenseCategory', user_id: 1)

Category.create!(title: 'Food', type: 'ExpenseCategory', user_id: 2)

Capital.create!(value: 100.00,
                type: 'Income',
                user_id: 1,
                category_id: 1,
                implemented_at: Date.new,
                note: 'Pay')

Capital.create!(value: 50.00,
                type: 'Expense',
                user_id: 1,
                category_id: 2,
                implemented_at: Date.new,
                note: 'Pizza')