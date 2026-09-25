import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FilmsRecord extends FirestoreRecord {
  FilmsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "film_name" field.
  String? _filmName;
  String get filmName => _filmName ?? '';
  bool hasFilmName() => _filmName != null;

  // "releas_year" field.
  String? _releasYear;
  String get releasYear => _releasYear ?? '';
  bool hasReleasYear() => _releasYear != null;

  // "director" field.
  String? _director;
  String get director => _director ?? '';
  bool hasDirector() => _director != null;

  // "film_duration" field.
  int? _filmDuration;
  int get filmDuration => _filmDuration ?? 0;
  bool hasFilmDuration() => _filmDuration != null;

  // "film_resume" field.
  String? _filmResume;
  String get filmResume => _filmResume ?? '';
  bool hasFilmResume() => _filmResume != null;

  // "trailer_link" field.
  String? _trailerLink;
  String get trailerLink => _trailerLink ?? '';
  bool hasTrailerLink() => _trailerLink != null;

  // "affiche_film" field.
  String? _afficheFilm;
  String get afficheFilm => _afficheFilm ?? '';
  bool hasAfficheFilm() => _afficheFilm != null;

  // "categorie_film" field.
  List<String>? _categorieFilm;
  List<String> get categorieFilm => _categorieFilm ?? const [];
  bool hasCategorieFilm() => _categorieFilm != null;

  // "films" field.
  String? _films;
  String get films => _films ?? '';
  bool hasFilms() => _films != null;

  // "publisher" field.
  DocumentReference? _publisher;
  DocumentReference? get publisher => _publisher;
  bool hasPublisher() => _publisher != null;

  void _initializeFields() {
    _filmName = snapshotData['film_name'] as String?;
    _releasYear = snapshotData['releas_year'] as String?;
    _director = snapshotData['director'] as String?;
    _filmDuration = castToType<int>(snapshotData['film_duration']);
    _filmResume = snapshotData['film_resume'] as String?;
    _trailerLink = snapshotData['trailer_link'] as String?;
    _afficheFilm = snapshotData['affiche_film'] as String?;
    _categorieFilm = getDataList(snapshotData['categorie_film']);
    _films = snapshotData['films'] as String?;
    _publisher = snapshotData['publisher'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('films');

  static Stream<FilmsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FilmsRecord.fromSnapshot(s));

  static Future<FilmsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FilmsRecord.fromSnapshot(s));

  static FilmsRecord fromSnapshot(DocumentSnapshot snapshot) => FilmsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FilmsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FilmsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FilmsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FilmsRecord &&
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
        'film_name': debugSerializeParam(
          filmName,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/b-flix-admin-19wa5o?tab=database',
          name: 'String',
          nullable: false,
        ),
        'releas_year': debugSerializeParam(
          releasYear,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/b-flix-admin-19wa5o?tab=database',
          name: 'String',
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
        'film_duration': debugSerializeParam(
          filmDuration,
          ParamType.int,
          link:
              'https://app.flutterflow.io/project/b-flix-admin-19wa5o?tab=database',
          name: 'int',
          nullable: false,
        ),
        'film_resume': debugSerializeParam(
          filmResume,
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
        'affiche_film': debugSerializeParam(
          afficheFilm,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/b-flix-admin-19wa5o?tab=database',
          name: 'String',
          nullable: false,
        ),
        'categorie_film': debugSerializeParam(
          categorieFilm,
          ParamType.String,
          isList: true,
          link:
              'https://app.flutterflow.io/project/b-flix-admin-19wa5o?tab=database',
          name: 'String',
          nullable: false,
        ),
        'films': debugSerializeParam(
          films,
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

Map<String, dynamic> createFilmsRecordData({
  String? filmName,
  String? releasYear,
  String? director,
  int? filmDuration,
  String? filmResume,
  String? trailerLink,
  String? afficheFilm,
  String? films,
  DocumentReference? publisher,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'film_name': filmName,
      'releas_year': releasYear,
      'director': director,
      'film_duration': filmDuration,
      'film_resume': filmResume,
      'trailer_link': trailerLink,
      'affiche_film': afficheFilm,
      'films': films,
      'publisher': publisher,
    }.withoutNulls,
  );

  return firestoreData;
}

class FilmsRecordDocumentEquality implements Equality<FilmsRecord> {
  const FilmsRecordDocumentEquality();

  @override
  bool equals(FilmsRecord? e1, FilmsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.filmName == e2?.filmName &&
        e1?.releasYear == e2?.releasYear &&
        e1?.director == e2?.director &&
        e1?.filmDuration == e2?.filmDuration &&
        e1?.filmResume == e2?.filmResume &&
        e1?.trailerLink == e2?.trailerLink &&
        e1?.afficheFilm == e2?.afficheFilm &&
        listEquality.equals(e1?.categorieFilm, e2?.categorieFilm) &&
        e1?.films == e2?.films &&
        e1?.publisher == e2?.publisher;
  }

  @override
  int hash(FilmsRecord? e) => const ListEquality().hash([
        e?.filmName,
        e?.releasYear,
        e?.director,
        e?.filmDuration,
        e?.filmResume,
        e?.trailerLink,
        e?.afficheFilm,
        e?.categorieFilm,
        e?.films,
        e?.publisher
      ]);

  @override
  bool isValidKey(Object? o) => o is FilmsRecord;
}
