import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TutorialvideoRecord extends FirestoreRecord {
  TutorialvideoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "uploadTime" field.
  DateTime? _uploadTime;
  DateTime? get uploadTime => _uploadTime;
  bool hasUploadTime() => _uploadTime != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "views" field.
  int? _views;
  int get views => _views ?? 0;
  bool hasViews() => _views != null;

  // "video" field.
  String? _video;
  String get video => _video ?? '';
  bool hasVideo() => _video != null;

  // "image_icon" field.
  String? _imageIcon;
  String get imageIcon => _imageIcon ?? '';
  bool hasImageIcon() => _imageIcon != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _description = snapshotData['description'] as String?;
    _uploadTime = snapshotData['uploadTime'] as DateTime?;
    _category = snapshotData['category'] as String?;
    _views = castToType<int>(snapshotData['views']);
    _video = snapshotData['video'] as String?;
    _imageIcon = snapshotData['image_icon'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('tutorialvideo');

  static Stream<TutorialvideoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TutorialvideoRecord.fromSnapshot(s));

  static Future<TutorialvideoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TutorialvideoRecord.fromSnapshot(s));

  static TutorialvideoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TutorialvideoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TutorialvideoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TutorialvideoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TutorialvideoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TutorialvideoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTutorialvideoRecordData({
  String? title,
  String? description,
  DateTime? uploadTime,
  String? category,
  int? views,
  String? video,
  String? imageIcon,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'description': description,
      'uploadTime': uploadTime,
      'category': category,
      'views': views,
      'video': video,
      'image_icon': imageIcon,
    }.withoutNulls,
  );

  return firestoreData;
}

class TutorialvideoRecordDocumentEquality
    implements Equality<TutorialvideoRecord> {
  const TutorialvideoRecordDocumentEquality();

  @override
  bool equals(TutorialvideoRecord? e1, TutorialvideoRecord? e2) {
    return e1?.title == e2?.title &&
        e1?.description == e2?.description &&
        e1?.uploadTime == e2?.uploadTime &&
        e1?.category == e2?.category &&
        e1?.views == e2?.views &&
        e1?.video == e2?.video &&
        e1?.imageIcon == e2?.imageIcon;
  }

  @override
  int hash(TutorialvideoRecord? e) => const ListEquality().hash([
        e?.title,
        e?.description,
        e?.uploadTime,
        e?.category,
        e?.views,
        e?.video,
        e?.imageIcon
      ]);

  @override
  bool isValidKey(Object? o) => o is TutorialvideoRecord;
}
