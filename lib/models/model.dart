class Post {
  String name;
  String userImageUrl;
  String time;
  String imageUrl;

  Post({
    this.name,
    this.userImageUrl,
    this.time,
    this.imageUrl,
  });
}

final List<Post> posts = [
  Post(
    name: 'Iron Man',
    userImageUrl: 'assets/images/user0.png',
    time: '5 min',
    imageUrl: 'assets/images/post0.jpg',
  ),
  Post(
    name: 'Jack Sparrow',
    userImageUrl: 'assets/images/user1.png',
    time: '10 min',
    imageUrl: 'assets/images/post1.jpg',
  ),
  Post(
    name: 'Neo',
    userImageUrl: 'assets/images/user2.png',
    time: '10 min',
    imageUrl: 'assets/images/post2.jpg',
  ),
  Post(
    name: 'Jack Dawson',
    userImageUrl: 'assets/images/user3.png',
    time: '10 min',
    imageUrl: 'assets/images/post3.jpg',
  ),
  Post(
    name: 'Spider Man',
    userImageUrl: 'assets/images/user4.png',
    time: '10 min',
    imageUrl: 'assets/images/post4.jpg',
  ),
];

final List<String> stories = [
  'assets/images/user0.png',
  'assets/images/user1.png',
  'assets/images/user2.png',
  'assets/images/user3.png',
  'assets/images/user4.png',
  'assets/images/user0.png',
  'assets/images/user1.png',
  'assets/images/user2.png',
  'assets/images/user3.png',
  'assets/images/user4.png',
];

class Comment {
  String authorName;
  String authorImageUrl;
  String text;

  Comment({
    this.authorName,
    this.authorImageUrl,
    this.text,
  });
}

final List<Comment> comments = [
  Comment(
    authorName: 'Angel',
    authorImageUrl: 'assets/images/user2.png',
    text: 'Loving this photo!!',
  ),
  Comment(
    authorName: 'Charlie',
    authorImageUrl: 'assets/images/user3.png',
    text: 'One of the best photos of you...',
  ),
  Comment(
    authorName: 'Angelina Martin',
    authorImageUrl: 'assets/images/user4.png',
    text: 'Can\'t wait for you to post more!',
  ),
  Comment(
    authorName: 'Jax',
    authorImageUrl: 'assets/images/user1.png',
    text: 'Nice job',
  ),
  Comment(
    authorName: 'Sam Martin',
    authorImageUrl: 'assets/images/user0.png',
    text: 'Thanks everyone :)',
  ),
];
