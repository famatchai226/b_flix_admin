import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DocumentariesRecord extends FirestoreRecord {
  DocumentariesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "director" field.
  String? _director;
  String get director => _director ?? '';
  bool hasDirector() => _director != null;

  // "trailer_link" field.
  String? _trailerLink;
  String get trailerLink => _trailerLink ?? '';
  bool hasTrailerLink() => _trailerLink != null;

  // "documentary_name" field.
  String? _documentaryName;
  String get documentaryName => _documentaryName ?? '';
  bool hasDocumentaryName() => _documentaryName != null;

  // "documentary_duration" field.
  double? _documentaryDuration;
  double get documentaryDuration => _documentaryDuration ?? 0.0;
  bool hasDocumentaryDuration() => _documentaryDuration != null;

  // "documentary_resume" field.
  String? _documentaryResume;
  String get documentaryResume => _documentaryResume ?? '';
  bool hasDocumentaryResume() => _documentaryResume != null;

  // "documentary" field.
  String? _documentary;
  String get documentary => _documentary ?? '';
  bool hasDocumentary() => _documentary != null;

  // "category_documentary" field.
  List<String>? _categoryDocumentary;
  List<String> get categoryDocumentary => _categoryDocumentary ?? const [];
  bool hasCategoryDocumentary() => _categoryDocumentary != null;

  // "documentary_affiche" field.
  String? _documentaryAffiche;
  String get documentaryAffiche => _documentaryAffiche ?? '';
  bool hasDocumentaryAffiche() => _documentaryAffiche != null;

  // "release_year" field.
  String? _releaseYear;
  String get releaseYear => _releaseYear ?? '';
  bool hasReleaseYear() => _releaseYear != null;

  // "narrator" field.
  String? _narrator;
  String get narrator => _narrator ?? '';
  bool hasNarrator() => _narrator != null;

  // "language" field.
  String? _language;
  String get language => _language ?? '';
  bool hasLanguage() => _language != null;

  // "publisher" field.
  DocumentReference? _publisher;
  DocumentReference? get publisher => _publisher;
  bool hasPublisher() => _publisher != null;

  void _initializeFields() {
    _director = snapshotData['director'] as String?;
    _trailerLink = snapshotData['trailer_link'] as String?;
    _documentaryName = snapshotData['documentary_name'] as String?;
    _documentaryDuration =
        castToType<double>(snapshotData['documentary_duration']);
    _documentaryResume = snapshotData['documentary_resume'] as String?;
    _documentary = snapshotData['documentary'] as String?;
    _categoryDocumentary = getDataList(snapshotData['category_documentary']);
    _documentaryAffiche = snapshotData['documentary_affiche'] as String?;
    _releaseYear = snapshotData['release_year'] as String?;
    _narrator = snapshotData['narrator'] as String?;
    _language = snapshotData['language'] as String?;
    _publisher = snapshotData['publisher'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('documentaries');

  static Stream<DocumentariesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DocumentariesRecord.fromSnapshot(s));

  static Future<DocumentariesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DocumentariesRecord.fromSnapshot(s));

  static DocumentariesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DocumentariesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DocumentariesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DocumentariesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DocumentariesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DocumentariesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;

  @override
  Map<String, DebugDataField> toDebugSerializableMap() => {
        'reference': debugSerializeParam(
          reference,
          ParamType.DocumentReference,
          link:
              'https://app.flutterflow.io/project/b-flix-admin-19wa5o?tab=database',
          name: '',
          nullable: false,
        ),
        'director': debugSerializeParam(
          director,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/b-flix-admin-19wa5o?tab=database',
          name: 'String',
          nullable: false,
        ),
        'trailer_link': debugSerializeParam(
          trailerLink,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/b-flix-admin-19wa5o?tab=database',
          name: 'String',
          nullable: false,
        ),
        'documentary_name': debugSerializeParam(
          documentaryName,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/b-flix-admin-19wa5o?tab=database',
          name: 'String',
          nullable: false,
        ),
        'documentary_duration': debugSerializeParam(
          documentaryDuration,
          ParamType.double,
          link:
              'https://app.flutterflow.io/project/b-flix-admin-19wa5o?tab=database',
          name: 'double',
          nullable: false,
        ),
        'documentary_resume': debugSerializeParam(
          documentaryResume,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/b-flix-admin-19wa5o?tab=database',
          name: 'String',
          nullable: false,
        ),
        'documentary': debugSerializeParam(
          documentary,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/b-flix-admin-19wa5o?tab=database',
          name: 'String',
          nullable: false,
        ),
        'category_documentary': debugSerializeParam(
          categoryDocumentary,
          ParamType.String,
          isList: true,
          link:
              'https://app.flutterflow.io/project/b-flix-admin-19wa5o?tab=database',
          name: 'String',
          nullable: false,
        ),
        'documentary_affiche': debugSerializeParam(
          documentaryAffiche,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/b-flix-admin-19wa5o?tab=database',
          name: 'String',
          nullable: false,
        ),
        'release_year': debugSerializeParam(
          releaseYear,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/b-flix-admin-19wa5o?tab=database',
          name: 'String',
          nullable: false,
        ),
        'narrator': debugSerializeParam(
          narrator,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/b-flix-admin-19wa5o?tab=database',
          name: 'String',
          nullable: false,
        ),
        'language': debugSerializeParam(
          language,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/b-flix-admin-19wa5o?tab=database',
          name: 'String',
          nullable: false,
        ),
        'publisher': debugSerializeParam(
          publisher,
          ParamType.DocumentReference,
          link:
              'https://app.flutterflow.io/project/b-flix-admin-19wa5o?tab=database',
          name: 'admin_users',
          nullable: true,
        )
      };
}

Map<String, dynamic> createDocumentariesRecordData({
  String? director,
  String? trailerLink,
  String? documentaryName,
  double? documentaryDuration,
  String? documentaryResume,
  String? documentary,
  String? documentaryAffiche,
  String? releaseYear,
  String? narrator,
  String? language,
  DocumentReference? publisher,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'director': director,
      'trailer_link': trailerLink,
      'documentary_name': documentaryName,
      'documentary_duration': documentaryDuration,
      'documentary_resume': documentaryResume,
      'documentary': documentary,
      'documentary_affiche': documentaryAffiche,
      'release_year': releaseYear,
      'narrator': narrator,
      'language': language,
      'publisher': publisher,
    }.withoutNulls,
  );

  return firestoreData;
}

class DocumentariesRecordDocumentEquality
    implements Equality<DocumentariesRecord> {
  const DocumentariesRecordDocumentEquality();

  @override
  bool equals(DocumentariesRecord? e1, DocumentariesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.director == e2?.director &&
        e1?.trailerLink == e2?.trailerLink &&
        e1?.documentaryName == e2?.documentaryName &&
        e1?.documentaryDuration == e2?.documentaryDuration &&
        e1?.documentaryResume == e2?.documentaryResume &&
        e1?.documentary == e2?.documentary &&
        listEquality.equals(e1?.categoryDocumentary, e2?.categoryDocumentary) &&
        e1?.documentaryAffiche == e2?.documentaryAffiche &&
        e1?.releaseYear == e2?.releaseYear &&
        e1?.narrator == e2?.narrator &&
        e1?.language == e2?.language &&
        e1?.publisher == e2?.publisher;
  }

  @override
  int hash(DocumentariesRecord? e) => const ListEquality().hash([
        e?.director,
        e?.trailerLink,
        e?.documentaryName,
        e?.documentaryDuration,
        e?.documentaryResume,
        e?.documentary,
        e?.categoryDocumentary,
        e?.documentaryAffiche,
        e?.releaseYear,
        e?.narrator,
        e?.language,
        e?.publisher
      ]);

  @override
  bool isValidKey(Object? o) => o is DocumentariesRecord;
}
