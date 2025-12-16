class PostModel {
  final int index;
  final String userPhoto;
  final String userName;
  final DateTime postDate;
  final String photoUrl;
  final String description;
  final int likeCount;
  final int commentCount;
  final int repostCount;
  final int shareCount;
  final bool isBookmarked;
  final bool isPostLiked;

  PostModel({
    required this.index,
    required this.userPhoto,
    required this.userName,
    required this.postDate,
    required this.photoUrl,
    required this.description,
    this.likeCount = 0,
    this.commentCount = 0,
    this.repostCount = 0,
    this.shareCount = 0,
    this.isBookmarked = false,
    this.isPostLiked = false,
  });
}
