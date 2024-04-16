class Note {
  final String id;
  final String? text;
  final String? cw;
  final String userId;
  final String? replyId;
  final String? renoteId;
  final bool? viaMobile;
  final User user;
  final String visibility;
  final DateTime createdAt;
  final Map<String, int>? reactions;
  final bool? localOnly;
  final int? renoteCount;
  final int? replyCount;
  final Note? reply;
  final Note? renote;
  final List<String>? fileIds;
  final String? myReaction;

  Note({
    required this.id,
    required this.text,
    required this.cw,
    required this.userId,
    required this.replyId,
    required this.renoteId,
    required this.viaMobile,
    required this.user,
    required this.visibility,
    required this.createdAt,
    required this.reactions,
    required this.localOnly,
    required this.renoteCount,
    required this.replyCount,
    required this.reply,
    required this.renote,
    required this.fileIds,
    required this.myReaction,
  });
}
