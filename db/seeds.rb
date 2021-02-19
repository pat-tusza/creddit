# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
u1 = User.create(username: "Patty-Ice", email: "not_my_real_email@gmail.com", password: "123456")
u2 = User.create(username: "Jask-o-lantern", email: "jask2@email.com", password: "654321")

a1 = Activity.create(name: "Skiing", description: "Skiing is a means of transport using skis to glide on snow. Variations of purpose include basic transport, a recreational activity, or a competitive winter sport. Many types of competitive skiing events are recognized by the International Olympic Committee (IOC), and the International Ski Federation (FIS)")
a2 = Activity.create(name: "Football", description: "American football, referred to simply as football in the United States and Canada and also known as gridiron, is a team sport played by two teams of eleven players on a rectangular field with goalposts at each end. The offense, the team with possession of the oval-shaped football, attempts to advance down the field by running with the ball or passing it, while the defense, the team without possession of the ball, aims to stop the offense's advance and to take control of the ball for themselves. The offense must advance at least ten yards in four downs or plays; if they fail, they turn over the football to the defense, but if they succeed, they are given a new set of four downs to continue the drive. Points are scored primarily by advancing the ball into the opposing team's end zone for a touchdown or kicking the ball through the opponent's goalposts for a field goal. The team with the most points at the end of a game wins.")
a3 = Activity.create(name: "European Football", description: "Association football, more commonly known as simply football or soccer[a] (a shortening of the word association), is a team sport played with a spherical ball between two teams of 11 players. It is played by approximately 250 million players in over 200 countries and dependencies, making it the world's most popular sport. The game is played on a rectangular field called a pitch with a goal at each end. The object of the game is to outscore the opposition by moving the ball beyond the goal line into the opposing goal. The team with the higher number of goals wins the game.")
a4 = Activity.create(name: "Baseball", description: "Baseball is a bat-and-ball game played between two opposing teams who take turns batting and fielding. The game proceeds when a player on the fielding team, called the pitcher, throws a ball which a player on the batting team tries to hit with a bat. The objective of the offensive team (batting team) is to hit the ball into the field of play, allowing its players to run the bases, having them advance counter-clockwise around four bases to score what are called runs. The objective of the defensive team (fielding team) is to prevent batters from becoming runners, and to prevent runners' advance around the bases.[2] A run is scored when a runner legally advances around the bases in order and touches home plate (the place where the player started as a batter). The team that scores the most runs by the end of the game is the winner.")
a5 = Activity.create(name: "Magic: The Gathering", description: "Magic: The Gathering (colloquially known as Magic or MTG) is a collectible and digital collectible card game created by Richard Garfield. Released in 1993 by Wizards of the Coast (now a subsidiary of Hasbro), Magic was the first trading card game and has approximately thirty-five million players as of December 2018, and over twenty billion Magic cards produced in the period from 2008 to 2016, during which time it grew in popularity.")

a6 = Activity.create(name: "Fishing", description: "Fishing is the activity of trying to catch fish. Fish are often caught in the wild but may also be caught from stocked bodies of water. Techniques for catching fish include hand gathering, spearing, netting, angling and trapping. “Fishing” may include catching aquatic animals other than fish, such as molluscs, cephalopods, crustaceans, and echinoderms. The term is not normally applied to catching farmed fish, or to aquatic mammals, such as whales where the term whaling is more appropriate. In addition to being caught to be eaten, fish are caught as recreational pastimes. Fishing tournaments are held, and caught fish are sometimes kept as preserved or living trophies. When bioblitzes occur, fish are typically caught, identified, and then released.")



p1 = Post.create(user_id: u1.id, activity_id: a1.id, title: "Anyone heading up to Camelback?", body: "Going to take my first ski trip to Camelback this weekend, and was wondering if anyone had some tips!")
p2 = Post.create(user_id: u2.id, activity_id: a2.id, title: "Why do the Raiders keep sucking?", body: "As a lifelong raider fan, I just want to know why we cant just win =( it breaks my heart.")
p3 = Post.create(user_id: u1.id, activity_id: a3.id, title: "Where can i watch the Premier League", body: "I am an American looking to get into some European Football. Where would be the best place to watch it?")
p4 = Post.create(user_id: u2.id, activity_id: a4.id, title: "Dogers", body: "Feels good to be the champs!")
p5 = Post.create(user_id: u1.id, activity_id: a5.id, title: "Any luck Abzan controll", body: "I can't seem to get the ball rolling with my abzan controll deck. Do you think I should have more then three lands?")

c1 = Comment.create(user_id: u1.id, post_id: p2.id, body: "The Raiders suck becuase you dont believe in them")
c2 = Comment.create(user_id: u2.id, post_id: p1.id, body: "It's a great mountain! Dont rent from the lodge though, they'll charge a fortune!")
c3 = Comment.create(user_id: u1.id, post_id: p4.id, body: "Crying in Mets =(")
c4 = Comment.create(user_id: u2.id, post_id: p3.id, body: "We dont condone illegal streams on this site.")

f1 = Favorite.create(user_id: u1.id, activity_id: a5.id)

m1 = Message.create(sender_id: u1.id, receiver_id: u2.id, title: "This is a test of the messages", body: "Holy cow we can send messages")
m2 = Message.create(sender_id: u2.id, receiver_id: u1.id, title: "This is crazy", body: "Isnt rails fun and exciting?")
puts "🌱"