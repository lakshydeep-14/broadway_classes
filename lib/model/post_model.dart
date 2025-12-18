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

  /// FROM JSON
  factory PostModel.fromJson(Map<String, dynamic> json) {
    return PostModel(
      index: json['index'] as int,
      userPhoto: json['userPhoto'] as String,
      userName: json['userName'] as String,
      postDate: DateTime.parse(json['postDate'] as String),
      photoUrl: json['photoUrl'] as String,
      description: json['description'] as String,
      likeCount: json['likeCount'] ?? 0,
      commentCount: json['commentCount'] ?? 0,
      repostCount: json['repostCount'] ?? 0,
      shareCount: json['shareCount'] ?? 0,
      isBookmarked: json['isBookmarked'] ?? false,
      isPostLiked: json['isPostLiked'] ?? false,
    );
  }

  /// TO JSON
  Map<String, dynamic> toJson() {
    return {
      'index': index,
      'userPhoto': userPhoto,
      'userName': userName,
      'postDate': postDate.toIso8601String(),
      'photoUrl': photoUrl,
      'description': description,
      'likeCount': likeCount,
      'commentCount': commentCount,
      'repostCount': repostCount,
      'shareCount': shareCount,
      'isBookmarked': isBookmarked,
      'isPostLiked': isPostLiked,
    };
  }
}
