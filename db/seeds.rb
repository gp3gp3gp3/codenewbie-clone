george = User.create(full_name: "George Paul", email: "george.allen.paul.3@gmail.com", password: "foobar")

george.posts << Post.create(title: Faker::Book.title, body: Faker::Lorem.paragraph)
george.podcasts << Podcast.create(title: Faker::Hipster.sentence, description: Faker::Hipster.paragraph)
Chat.create(title: Faker::Book.title, description: Faker::Lorem.paragraph)
george.podcasts << Podcast.create(title: Faker::Hipster.sentence, description: Faker::Hipster.paragraph)
Chat.create(title: Faker::Book.title, description: Faker::Lorem.paragraph)
george.posts << Post.create(title: Faker::Book.title, body: Faker::Lorem.paragraph)
george.posts << Post.create(title: Faker::Book.title, body: Faker::Lorem.paragraph)
george.podcasts << Podcast.create(title: Faker::Hipster.sentence, description: Faker::Hipster.paragraph)
george.posts << Post.create(title: Faker::Book.title, body: Faker::Lorem.paragraph)
george.podcasts << Podcast.create(title: Faker::Hipster.sentence, description: Faker::Hipster.paragraph)
Chat.create(title: Faker::Book.title, description: Faker::Lorem.paragraph)
george.podcasts << Podcast.create(title: Faker::Hipster.sentence, description: Faker::Hipster.paragraph)
Chat.create(title: Faker::Book.title, description: Faker::Lorem.paragraph)
george.posts << Post.create(title: Faker::Book.title, body: Faker::Lorem.paragraph)
george.posts << Post.create(title: Faker::Book.title, body: Faker::Lorem.paragraph)
george.podcasts << Podcast.create(title: Faker::Hipster.sentence, description: Faker::Hipster.paragraph)