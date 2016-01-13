User.create!([
  {email: "henry@email.com", encrypted_password: "$2a$10$NQQmeZ4T87c89mrYoaqXxu/4yylKqJlBnyOwgXxwxs5JAr1eGB3xy", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 8, current_sign_in_at: "2016-01-13 20:34:50", last_sign_in_at: "2016-01-13 20:21:48", current_sign_in_ip: "::1", last_sign_in_ip: "::1", name: "Henry", avatar: "henry.jpeg", job: "Janitor", location: "Edinburgh"},
  {email: "john@email.com", encrypted_password: "$2a$10$iQ/8AIbpukKzlYukG81irendCGfmaOIv5MQTT5K8RKlw4OZ1Uqlz6", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 4, current_sign_in_at: "2016-01-13 20:35:26", last_sign_in_at: "2016-01-13 20:23:47", current_sign_in_ip: "::1", last_sign_in_ip: "::1", name: "John", avatar: "middle-aged-425087.jpg", job: "Manager", location: "Glasgow"},
  {email: "helen@email.com", encrypted_password: "$2a$10$BPAnLhM8X5MfFbbCnb6lB.ce/UshhoRG53QtZEsIMdR8GAOwwGGHa", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 4, current_sign_in_at: "2016-01-13 20:35:40", last_sign_in_at: "2016-01-13 20:29:38", current_sign_in_ip: "::1", last_sign_in_ip: "::1", name: "Helen", avatar: "helen.jpeg", job: "Dame Helen Mirren", location: "Contact my agent"},
  {email: "sandra@email.com", encrypted_password: "$2a$10$8pOW/4RObTh5JYnYhL0FZ.Pw.8LJdvRM7RaRULZXJA6qPv1lZxTha", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 5, current_sign_in_at: "2016-01-13 20:35:56", last_sign_in_at: "2016-01-13 20:35:10", current_sign_in_ip: "::1", last_sign_in_ip: "::1", name: "Sandra", avatar: "old_people_dancing.jpg", job: "Dancer", location: "London"},
  {email: "mabel@email.com", encrypted_password: "$2a$10$l5UUdXIaUnyCWyjD1zZj9.EVqvtJIavqgJfIY2.ivgAUMTZ4iof5C", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 4, current_sign_in_at: "2016-01-13 20:36:10", last_sign_in_at: "2016-01-13 20:17:43", current_sign_in_ip: "::1", last_sign_in_ip: "::1", name: "Mabel", avatar: "olderlady.jpg", job: "Retired", location: "Home"},
  {email: "margaret@email.com", encrypted_password: "$2a$10$kp3hRqm6LGP5pASGtzYNJOvURiWjZA3KCXzIWGMpzoE8QooEss7eK", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2016-01-13 20:20:00", last_sign_in_at: "2016-01-12 19:29:52", current_sign_in_ip: "::1", last_sign_in_ip: "::1", name: "Margaret", avatar: "Senior-Woman-Swimming-copy.jpg", job: "Swimming Instructor", location: "Water"}
])
Friend.create!([
  {self_id: 1, friend_id: 2},
  {self_id: 5, friend_id: 3},
  {self_id: 2, friend_id: 4},
  {self_id: 4, friend_id: 1},
  {self_id: 1, friend_id: 3}
])
Photo.create!([
  {title: "My Award", image: "helen_award1.jpeg", description: "Unexpected", user_id: 4},
  {title: "Another award", image: "helen_award2.jpg", description: "Also unexpected", user_id: 4},
  {title: "What's this one called?", image: "helen_award3.jpg", description: "Still unexpected", user_id: 4},
  {title: "Dinner!", image: "dinner.jpg", description: "I had this for dinner. It was cracking.", user_id: 5},
  {title: "Healthy Breakfast", image: "breakfast.jpg", description: "Yummy!", user_id: 6},
  {title: "mY Bread", image: "bread.png", description: "SO proud of my loaf A+++", user_id: 1},
  {title: "Me dancing", image: "old_people_dancing.jpg", description: "I love to dance! Strictly reggae.", user_id: 2},
  {title: "My pansies", image: "gardening.jpg", description: "Check out my green fingers", user_id: 3}
])
