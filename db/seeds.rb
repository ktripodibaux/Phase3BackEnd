puts "🌱 Seeding spices..."

# Game.destroy_all
User.destroy_all
# Question.destroy_all
Result.destroy_all

puts "all seed destroyed"

jeremy =    User.create(name: "Jeremy", userUrl: "jeremy.com", score: 2)
zev =       User.create(name: "Zev", userUrl: "zev.com", score: 4)
kurt =      User.create(name: "Kurt", userUrl: "kurt.com", score: 5)
sam =       User.create(name: "Sam", userUrl: "Sam.com", score: 3)

Result.create(score: 2, name: "Jeremy", userUrl: 'jeremy.com')
Result.create(score: 4, name: "Zev", userUrl: 'Zev.com')
Result.create(score: 9, name: "Sam", userUrl: 'Sam.com')
Result.create(score: 5, name: "Zev", userUrl: 'Zev.com')
Result.create(score: 21, name: "Kurt", userUrl: 'Kurt.com')
Result.create(score: 32, name: "Sam", userUrl: 'Sam.com')
Result.create(score: 1, name: "Kurt", userUrl: 'Kurt.com')
Result.create(score: 69, name: "Z3v_69420", userUrl: 'https://c.tenor.com/oLQmCvr3JTcAAAAM/fuck-you-middle-finger.gif')
Result.create(score: 15, name: "Kurt", userUrl: 'Kurt.com')
Result.create(score: 5, name: "Jeremy", userUrl: 'Jeremy.com')
Result.create(score: 36, name: "Kurt", userUrl: 'Kurt.com')
Result.create(score: 21, name: "kelly", userUrl: 'kelly.com')
Result.create(score: 1, name: "jason", userUrl: 'Kurt.com')
Result.create(score: -8, name: "harry", userUrl: 'Kurt.com')
Result.create(score: 100, name: "Sam", userUrl: "https://miro.medium.com/max/3150/1*77FS-Zxw0vg8dUbM5jH0xw.jpeg")
puts "all users created"

# q1 = Question.create(question: 'Which of the following languages is used as a scripting language in the Unity 3D game engine?', correct_answer: "C#", incorrect_answer: [
#     "Java",
#     "C++",
#     "Objective-C"
#     ], difficulty: "medium", category: "Science: Computers")
# q2 = Question.create(question: '"What did the name of the Tor Anonymity Network orignially stand for?', correct_answer: "The Onion Router", incorrect_answer:[
#     "The Only Router",
#     "The Orange Router",
#     "The Ominous Router"
#     ], difficulty: "medium", category: "Science: Computers")
# q3 = Question.create(question: 'WButters Stotch, Pip Pirrup, and Wendy Testaburger are all characters in which long running animated TV series?', correct_answer: "South Park", incorrect_answer: [
#     "The Simpsons",
#     "Family Guy",
#     "Bobs Burgers"
#     ], difficulty: "easy", category: "Entertainment Cartoon and Animations")
# q4 = Question.create(question: 'How many kilobytes in one gigabyte (in decimal)?', correct_answer: "1000000", incorrect_answer:  [
#     "1024",
#     "1000",
#     "1048576"
#     ], difficulty: "easy", category: "Science: Computers")

puts "all questions created"

# g1 =Game.create(score: 4, user_id: zev.id, question_id: q1.id)
# g2 =Game.create(score: 1, user_id: jeremy.id, question_id: q2.id)
# g3 =Game.create()



puts "✅ Done seeding!"
