import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_checkbox_group.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'update_films_widget.dart' show UpdateFilmsWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UpdateFilmsModel extends FlutterFlowModel<UpdateFilmsWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  // State field(s) for Releaseyear widget.
  FocusNode? releaseyearFocusNode;
  TextEditingController? releaseyearTextController;
  String? Function(BuildContext, String?)? releaseyearTextControllerValidator;
  // State field(s) for director widget.
  FocusNode? directorFocusNode;
  TextEditingController? directorTextController;
  String? Function(BuildContext, String?)? directorTextControllerValidator;
  // State field(s) for Duration widget.
  FocusNode? durationFocusNode;
  TextEditingController? durationTextController;
  String? Function(BuildContext, String?)? durationTextControllerValidator;
  // State field(s) for Trailer widget.
  FocusNode? trailerFocusNode;
  TextEditingController? trailerTextController;
  String? Function(BuildContext, String?)? trailerTextControllerValidator;
  // State field(s) for Description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;
  // State field(s) for CheckboxGroup widget.
  FormFieldController<List<String>>? checkboxGroupValueController;
  List<String>? get checkboxGroupValues => checkboxGroupValueController?.value;
  set checkboxGroupValues(List<String>? v) =>
      checkboxGroupValueController?.value = v;

  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  final Map<String, DebugDataField> debugGeneratorVariables = {};
  final Map<String, DebugDataField> debugBackendQueries = {};
  final Map<String, FlutterFlowModel> widgetBuilderComponents = {};
  @override
  void initState(BuildContext context) {
    debugLogWidgetClass(this);
  }

  @override
  void dispose() {
    nameFocusNode?.dispose();
    nameTextController?.dispose();

    releaseyearFocusNode?.dispose();
    releaseyearTextController?.dispose();

    directorFocusNode?.dispose();
    directorTextController?.dispose();

    durationFocusNode?.dispose();
    durationTextController?.dispose();

    trailerFocusNode?.dispose();
    trailerTextController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();
  }

  @override
  WidgetClassDebugData toWidgetClassDebugData() => WidgetClassDebugData(
        widgetParameters: {
          'filmsToUpdate': debugSerializeParam(
            widget?.filmsToUpdate,
            ParamType.Document,
            link:
                'https://app.flutterflow.io/project/b-flix-admin-19wa5o?tab=uiBuilder&page=UpdateFilms',
            searchReference:
                'reference=SioKFwoNZmlsbXNUb1VwZGF0ZRIGMDNkNGwwcg8IByABKgkKBwoFZmlsbXNQAVoNZmlsbXNUb1VwZGF0ZQ==',
            name: 'films',
            nullable: true,
          )
        }.withoutNulls,
        widgetStates: {
          'nameText': debugSerializeParam(
            nameTextController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/b-flix-admin-19wa5o?tab=uiBuilder&page=UpdateFilms',
            name: 'String',
            nullable: true,
          ),
          'releaseyearText': debugSerializeParam(
            releaseyearTextController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/b-flix-admin-19wa5o?tab=uiBuilder&page=UpdateFilms',
            name: 'String',
            nullable: true,
          ),
          'directorText': debugSerializeParam(
            directorTextController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/b-flix-admin-19wa5o?tab=uiBuilder&page=UpdateFilms',
            name: 'String',
            nullable: true,
          ),
          'durationText': debugSerializeParam(
            durationTextController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/b-flix-admin-19wa5o?tab=uiBuilder&page=UpdateFilms',
            name: 'String',
            nullable: true,
          ),
          'trailerText': debugSerializeParam(
            trailerTextController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/b-flix-admin-19wa5o?tab=uiBuilder&page=UpdateFilms',
            name: 'String',
            nullable: true,
          ),
          'descriptionText': debugSerializeParam(
            descriptionTextController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/b-flix-admin-19wa5o?tab=uiBuilder&page=UpdateFilms',
            name: 'String',
            nullable: true,
          ),
          'checkboxGroupValues': debugSerializeParam(
            checkboxGroupValues,
            ParamType.String,
            isList: true,
            link:
                'https://app.flutterflow.io/project/b-flix-admin-19wa5o?tab=uiBuilder&page=UpdateFilms',
            name: 'String',
            nullable: true,
          )
        },
        generatorVariables: debugGeneratorVariables,
        backendQueries: debugBackendQueries,
        componentStates: {
          ...widgetBuilderComponents.map(
            (key, value) => MapEntry(
              key,
              value.toWidgetClassDebugData(),
            ),
          ),
        }.withoutNulls,
        link:
            'https://app.flutterflow.io/project/b-flix-admin-19wa5o/tab=uiBuilder&page=UpdateFilms',
        searchReference: 'reference=OgtVcGRhdGVGaWxtc1ABWgtVcGRhdGVGaWxtcw==',
        widgetClassName: 'UpdateFilms',
      );
}
