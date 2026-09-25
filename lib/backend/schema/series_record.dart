import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SeriesRecord extends FirestoreRecord {
  SeriesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "series_name" field.
  String? _seriesName;
  String get seriesName => _seriesName ?? '';
  bool hasSeriesName() => _seriesName != null;

  // "series_category" field.
  List<String>? _seriesCategory;
  List<String> get seriesCategory => _seriesCategory ?? const [];
  bool hasSeriesCategory() => _seriesCategory != null;

  // "series_description" field.
  String? _seriesDescription;
  String get seriesDescription => _seriesDescription ?? '';
  bool hasSeriesDescription() => _seriesDescription != null;

  // "series_director" field.
  String? _seriesDirector;
  String get seriesDirector => _seriesDirector ?? '';
  bool hasSeriesDirector() => _seriesDirector != null;

  // "series_poster" field.
  String? _seriesPoster;
  String get seriesPoster => _seriesPoster ?? '';
  bool hasSeriesPoster() => _seriesPoster != null;

  // "series_release_date" field.
  String? _seriesReleaseDate;
  String get seriesReleaseDate => _seriesReleaseDate ?? '';
  bool hasSeriesReleaseDate() => _seriesReleaseDate != null;

  // "series_trailer_link" field.
  String? _seriesTrailerLink;
  String get seriesTrailerLink => _seriesTrailerLink ?? '';
  bool hasSeriesTrailerLink() => _seriesTrailerLink != null;

  void _initializeFields() {
    _seriesName = snapshotData['series_name'] as String?;
    _seriesCategory = getDataList(snapshotData['series_category']);
    _seriesDescription = snapshotData['series_description'] as String?;
    _seriesDirector = snapshotData['series_director'] as String?;
    _seriesPoster = snapshotData['series_poster'] as String?;
    _seriesReleaseDate = snapshotData['series_release_date'] as String?;
    _seriesTrailerLink = snapshotData['series_trailer_link'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('series');

  static Stream<SeriesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SeriesRecord.fromSnapshot(s));

  static Future<SeriesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SeriesRecord.fromSnapshot(s));

  static SeriesRecord fromSnapshot(DocumentSnapshot snapshot) => SeriesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SeriesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SeriesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SeriesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SeriesRecord &&
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
        'series_name': debugSerializeParam(
          seriesName,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/b-flix-admin-19wa5o?tab=database',
          name: 'String',
          nullable: false,
        ),
        'series_category': debugSerializeParam(
          seriesCategory,
          ParamType.String,
          isList: true,
          link:
              'https://app.flutterflow.io/project/b-flix-admin-19wa5o?tab=database',
          name: 'String',
          nullable: false,
        ),
        'series_description': debugSerializeParam(
          seriesDescription,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/b-flix-admin-19wa5o?tab=database',
          name: 'String',
          nullable: false,
        ),
        'series_director': debugSerializeParam(
          seriesDirector,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/b-flix-admin-19wa5o?tab=database',
          name: 'String',
          nullable: false,
        ),
        'series_poster': debugSerializeParam(
          seriesPoster,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/b-flix-admin-19wa5o?tab=database',
          name: 'String',
          nullable: false,
        ),
        'series_release_date': debugSerializeParam(
          seriesReleaseDate,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/b-flix-admin-19wa5o?tab=database',
          name: 'String',
          nullable: false,
        ),
        'series_trailer_link': debugSerializeParam(
          seriesTrailerLink,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/b-flix-admin-19wa5o?tab=database',
          name: 'String',
          nullable: false,
        )
      };
}

Map<String, dynamic> createSeriesRecordData({
  String? seriesName,
  String? seriesDescription,
  String? seriesDirector,
  String? seriesPoster,
  String? seriesReleaseDate,
  String? seriesTrailerLink,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'series_name': seriesName,
      'series_description': seriesDescription,
      'series_director': seriesDirector,
      'series_poster': seriesPoster,
      'series_release_date': seriesReleaseDate,
      'series_trailer_link': seriesTrailerLink,
    }.withoutNulls,
  );

  return firestoreData;
}

class SeriesRecordDocumentEquality implements Equality<SeriesRecord> {
  const SeriesRecordDocumentEquality();

  @override
  bool equals(SeriesRecord? e1, SeriesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.seriesName == e2?.seriesName &&
        listEquality.equals(e1?.seriesCategory, e2?.seriesCategory) &&
        e1?.seriesDescription == e2?.seriesDescription &&
        e1?.seriesDirector == e2?.seriesDirector &&
        e1?.seriesPoster == e2?.seriesPoster &&
        e1?.seriesReleaseDate == e2?.seriesReleaseDate &&
        e1?.seriesTrailerLink == e2?.seriesTrailerLink;
  }

  @override
  int hash(SeriesRecord? e) => const ListEquality().hash([
        e?.seriesName,
        e?.seriesCategory,
        e?.seriesDescription,
        e?.seriesDirector,
        e?.seriesPoster,
        e?.seriesReleaseDate,
        e?.seriesTrailerLink
      ]);

  @override
  bool isValidKey(Object? o) => o is SeriesRecord;
}
