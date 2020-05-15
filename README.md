# Micro-Reddit

> It's an exercise to work with ActiveRecord, an ORM for Ruby on Rails.

In this project we have created a project in which we play with the relations of our models:

- User: has many posts as has many comments.
- Post: belongs to a user.
- Comments: belongs to a user as belongs to a post.

The rules above are set up in the model files corresponding to the same name.

Also with the validations

## Built With

- Ruby programming language
- Ruby on Rails framework

## Getting Started

**Setting up you environment**

To get a local copy up and running follow these simple example steps.

### Prerequisites

- Have installed Ruby
- Have installed Rails
- Get a copy of this repo

### Setup

Once you have the prerequisites open the folder of the project, open a terminal and run `rails c` to open the rails console.

### Usage

You can follow the next steps to check how the relations between users, posts, and comments work.

1. Create two users: `u1 = User.create(username: "User01", email: "user01@email.com")` and `u2 = User.create(username: "User02", email: "user02@email.com")`.
2. Create a post for the first user `u1.posts.create(title: "Title of the first post", body: "Body of your first post")`.
3. Make a comment from the second user about the first user's post `u1.posts.first.comments.create(body: "Nice post body!", user_id: 2)`.
4. Check the relations:
   * c1 = u2.comments.first should return that user’s comment. #comments returns an array with comments, which is why we need to use #first to actually retrieve the comment itself.
   * c1.user should return that comment’s author User (u2).
   * p1 = Post.first
   * p1.comments.first should return the comment c1.
   * c1.post should return the post p1.

## Authors

👤 **Bertil Tandayamo**

- Github: [@bertil291utn](https://github.com/bertil291utn)
- Twitter: [@btandayamo](https://twitter.com/batandayamo)
- Linkedin: [Bertil Tandayamo](http://bit.ly/bertil_linkedin)

👤 **Manuel Muhun**

- Github: [@meme-es](https://github.com/meme-es)
- Twitter: [@meme_es](https://twitter.com/meme_es)
- Linkedin: [Manuel](https://www.linkedin.com/in/manuel-elias/)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](https://github.com/bertil291utn/micro-reddit/issues).

## Show your support

Give a ⭐️ if you like this project!

## 📝 License

This project is not licensed.