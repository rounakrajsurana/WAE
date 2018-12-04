admin = User.create(email: 'admin@example.com', password: 'password', password_confirmation: 'password', role: 'admin')
member = User.create(email: 'member@example.com', password: 'password', password_confirmation: 'password')

Quotation.create([
  { quote: "Don't cry because it's over, smile because it happened.", user_id: admin.id },
  { quote: "Without music, life would be a mistake.", user_id: admin.id },
  { quote: "Be yourself; everyone else is already taken.", user_id: admin.id },
  { quote: "So many books, so little time.", user_id: member.id },
  { quote: "If you tell the truth, you don't have to remember anything.", user_id: member.id },
  { quote: "A room without books is like a body without a soul.", user_id: member.id },
  { quote: "Be the change that you wish to see in the world.", user_id: member.id }
])
