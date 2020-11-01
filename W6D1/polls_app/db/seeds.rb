# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create([{ username: 'iLikeTurtles' }, { username: 'PurpleYogurtSlinger' }, { username: 'l337' }])
Poll.create([{ user_id: 1, title: 'The turtle poll' }, { user_id: 2, title: 'The yogurt poll' }, { user_id: 3, title: 'The leetness poll' }])
Question.create([{ poll_id: 1, text: 'What are turtles?' }, { poll_id: 1, text: 'how are turtles?' }, { poll_id: 1, text: 'Where are turtles?' }] )
Question.create([{ poll_id: 2, text: 'What are yogurts?' }, { poll_id: 2, text: 'how are yogurts?' }, { poll_id: 2, text: 'Where are yogurts?' }] )
Question.create([{ poll_id: 3, text: 'What are leeters?' }, { poll_id: 3, text: 'how are leeters?' }, { poll_id: 3, text: 'Where are leeters?' }] )
AnswerChoice.create([{ question_id: 1, text: 'turtz1_a' }, { question_id: 1, text: 'turtz2_a' }, { question_id: 1, text: 'turtz3_a' }] )
AnswerChoice.create([{ question_id: 2, text: 'turtz1_b' }, { question_id: 2, text: 'turtz2_b' }, { question_id: 2, text: 'turtz3_b' }] )
AnswerChoice.create([{ question_id: 3, text: 'turtz1_c' }, { question_id: 3, text: 'turtz2_c' }, { question_id: 3, text: 'turtz3_c' }] )
AnswerChoice.create([{ question_id: 4, text: 'yogz1_a' }, { question_id: 4, text: 'yogz2_a' }, { question_id: 4, text: 'yogz3_a' }] )
AnswerChoice.create([{ question_id: 5, text: 'yogz1_b' }, { question_id: 5, text: 'yogz2_b' }, { question_id: 5, text: 'yogz3_b' }] )
AnswerChoice.create([{ question_id: 6, text: 'yogz1_c' }, { question_id: 6, text: 'yogz2_c' }, { question_id: 6, text: 'yogz3_c' }] )
AnswerChoice.create([{ question_id: 7, text: 'leetz1_a' }, { question_id: 7, text: 'leetz2_a' }, { question_id: 7, text: 'leetz3_a' }] )
AnswerChoice.create([{ question_id: 8, text: 'leetz1_b' }, { question_id: 8, text: 'leetz2_b' }, { question_id: 8, text: 'leetz3_b' }] )
AnswerChoice.create([{ question_id: 9, text: 'leetz1_c' }, { question_id: 9, text: 'leetz2_c' }, { question_id: 9, text: 'leetz3_c' }] )
Response.create([{ user_id: 1, answer_choice_id: 10}, { user_id: 1, answer_choice_id: 14}, { user_id: 1, answer_choice_id: 18}])
Response.create([{ user_id: 1, answer_choice_id: 19}, { user_id: 1, answer_choice_id: 23}, { user_id: 1, answer_choice_id: 27}])
Response.create([{ user_id: 2, answer_choice_id: 3}, { user_id: 2, answer_choice_id: 5}, { user_id: 2, answer_choice_id: 7}])
Response.create([{ user_id: 2, answer_choice_id: 21}, { user_id: 2, answer_choice_id: 23}, { user_id: 2, answer_choice_id: 25}])
Response.create([{ user_id: 3, answer_choice_id: 1}, { user_id: 3, answer_choice_id: 5}, { user_id: 3, answer_choice_id: 9}])
Response.create([{ user_id: 3, answer_choice_id: 11}, { user_id: 3, answer_choice_id: 14}, { user_id: 4, answer_choice_id: 17}])








