import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SeasonsRecord extends FirestoreRecord {
  SeasonsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "season_name" field.
  String? _seasonName;
  String get seasonName => _seasonName ?? '';
  bool hasSeasonName() => _seasonName != null;

  // "episodes" field.
  List<String>? _episodes;
  List<String> get episodes => _episodes ?? const [];
  bool hasEpisodes() => _episodes != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _seasonName = snapshotData['season_name'] as String?;
    _episodes = getDataList(snapshotData['episodes']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('seasons')
          : FirebaseFirestore.instance.collectionGroup('seasons');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('seasons').doc(id);

  static Stream<SeasonsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SeasonsRecord.fromSnapshot(s));

  static Future<SeasonsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SeasonsRecord.fromSnapshot(s));

  static SeasonsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SeasonsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SeasonsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SeasonsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SeasonsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SeasonsRecord &&
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
        'season_name': debugSerializeParam(
          seasonName,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/b-flix-admin-19wa5o?tab=database',
          name: 'String',
          nullable: false,
        ),
        'episodes': debugSerializeParam(
          episodes,
          ParamType.String,
          isList: true,
          link:
              'https://app.flutterflow.io/project/b-flix-admin-19wa5o?tab=database',
          name: 'String',
          nullable: false,
        )
      };
}

Map<String, dynamic> createSeasonsRecordData({
  String? seasonName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'season_name': seasonName,
    }.withoutNulls,
  );

  return firestoreData;
}

class SeasonsRecordDocumentEquality implements Equality<SeasonsRecord> {
  const SeasonsRecordDocumentEquality();

  @override
  bool equals(SeasonsRecord? e1, SeasonsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.seasonName == e2?.seasonName &&
        listEquality.equals(e1?.episodes, e2?.episodes);
  }

  @override
  int hash(SeasonsRecord? e) =>
      const ListEquality().hash([e?.seasonName, e?.episodes]);

  @override
  bool isValidKey(Object? o) => o is SeasonsRecord;
}
