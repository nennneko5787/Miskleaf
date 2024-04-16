import 'note.dart';

class User {
  final String id;
  final String username;
  final String? name;
  final String? url;
  final String? avatarUrl;
  final String? avatarBlurhash;
  final String? bannerUrl;
  final String? bannerBlurhash;
  final String? description;
  final DateTime? birthday;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final String? location;
  final int? followersCount;
  final int? followingCount;
  final int? notesCount;
  final bool? isCat;
  final bool? isBot;
  final bool? isAdmin;
  final bool? isModerator;
  final bool? isLocked;
  final bool? hasUnreadSpecifiedNotes;
  final bool? hasUnreadMentions;
  final List<String>? pinnedNoteIds;
  final List<Note>? pinnedNotes;
  final String? host;

  User({
    required this.id,
    required this.username,
    required this.name,
    required this.url,
    required this.avatarUrl,
    required this.avatarBlurhash,
    required this.bannerUrl,
    required this.bannerBlurhash,
    required this.description,
    required this.birthday,
    required this.createdAt,
    required this.updatedAt,
    required this.location,
    required this.followersCount,
    required this.followingCount,
    required this.notesCount,
    required this.isCat,
    required this.isBot,
    required this.isAdmin,
    required this.isModerator,
    required this.isLocked,
    required this.hasUnreadSpecifiedNotes,
    required this.hasUnreadMentions,
    required this.pinnedNoteIds,
    required this.pinnedNotes,
    required this.host,
  });
}
