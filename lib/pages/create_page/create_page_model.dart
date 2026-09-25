import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_checkbox_group.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'create_page_widget.dart' show CreatePageWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreatePageModel extends FlutterFlowModel<CreatePageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for filmName widget.
  FocusNode? filmNameFocusNode;
  TextEditingController? filmNameTextController;
  String? Function(BuildContext, String?)? filmNameTextControllerValidator;
  // State field(s) for releaseyear widget.
  FocusNode? releaseyearFocusNode1;
  TextEditingController? releaseyearTextController1;
  String? Function(BuildContext, String?)? releaseyearTextController1Validator;
  // State field(s) for director widget.
  FocusNode? directorFocusNode;
  TextEditingController? directorTextController;
  String? Function(BuildContext, String?)? directorTextControllerValidator;
  // State field(s) for duration widget.
  FocusNode? durationFocusNode;
  TextEditingController? durationTextController;
  String? Function(BuildContext, String?)? durationTextControllerValidator;
  // State field(s) for trailerLink widget.
  FocusNode? trailerLinkFocusNode;
  TextEditingController? trailerLinkTextController;
  String? Function(BuildContext, String?)? trailerLinkTextControllerValidator;
  // State field(s) for description widget.
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

  // State field(s) for documentaryName widget.
  FocusNode? documentaryNameFocusNode;
  TextEditingController? documentaryNameTextController;
  String? Function(BuildContext, String?)?
      documentaryNameTextControllerValidator;
  // State field(s) for releaseyear widget.
  FocusNode? releaseyearFocusNode2;
  TextEditingController? releaseyearTextController2;
  String? Function(BuildContext, String?)? releaseyearTextController2Validator;
  // State field(s) for directorDocumentary widget.
  FocusNode? directorDocumentaryFocusNode;
  TextEditingController? directorDocumentaryTextController;
  String? Function(BuildContext, String?)?
      directorDocumentaryTextControllerValidator;
  // State field(s) for narrator widget.
  FocusNode? narratorFocusNode;
  TextEditingController? narratorTextController;
  String? Function(BuildContext, String?)? narratorTextControllerValidator;
  // State field(s) for durationDoc widget.
  FocusNode? durationDocFocusNode;
  TextEditingController? durationDocTextController;
  String? Function(BuildContext, String?)? durationDocTextControllerValidator;
  // State field(s) for DropDownDoc widget.
  String? _dropDownDocValue;
  set dropDownDocValue(String? value) {
    _dropDownDocValue = value;
    debugLogWidgetClass(this);
  }

  String? get dropDownDocValue => _dropDownDocValue;

  FormFieldController<String>? dropDownDocValueController;
  // State field(s) for trailerLinkdocumentary widget.
  FocusNode? trailerLinkdocumentaryFocusNode;
  TextEditingController? trailerLinkdocumentaryTextController;
  String? Function(BuildContext, String?)?
      trailerLinkdocumentaryTextControllerValidator;
  // State field(s) for descriptionDoc widget.
  FocusNode? descriptionDocFocusNode;
  TextEditingController? descriptionDocTextController;
  String? Function(BuildContext, String?)?
      descriptionDocTextControllerValidator;
  // State field(s) for CheckboxGroupDocumentary widget.
  FormFieldController<List<String>>? checkboxGroupDocumentaryValueController;
  List<String>? get checkboxGroupDocumentaryValues =>
      checkboxGroupDocumentaryValueController?.value;
  set checkboxGroupDocumentaryValues(List<String>? v) =>
      checkboxGroupDocumentaryValueController?.value = v;

  bool isDataUploading3 = false;
  FFUploadedFile uploadedLocalFile3 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl3 = '';

  bool isDataUploading4 = false;
  FFUploadedFile uploadedLocalFile4 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl4 = '';

  final Map<String, DebugDataField> debugGeneratorVariables = {};
  final Map<String, DebugDataField> debugBackendQueries = {};
  final Map<String, FlutterFlowModel> widgetBuilderComponents = {};
  @override
  void initState(BuildContext context) {
    debugLogWidgetClass(this);
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    filmNameFocusNode?.dispose();
    filmNameTextController?.dispose();

    releaseyearFocusNode1?.dispose();
    releaseyearTextController1?.dispose();

    directorFocusNode?.dispose();
    directorTextController?.dispose();

    durationFocusNode?.dispose();
    durationTextController?.dispose();

    trailerLinkFocusNode?.dispose();
    trailerLinkTextController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();

    documentaryNameFocusNode?.dispose();
    documentaryNameTextController?.dispose();

    releaseyearFocusNode2?.dispose();
    releaseyearTextController2?.dispose();

    directorDocumentaryFocusNode?.dispose();
    directorDocumentaryTextController?.dispose();

    narratorFocusNode?.dispose();
    narratorTextController?.dispose();

    durationDocFocusNode?.dispose();
    durationDocTextController?.dispose();

    trailerLinkdocumentaryFocusNode?.dispose();
    trailerLinkdocumentaryTextController?.dispose();

    descriptionDocFocusNode?.dispose();
    descriptionDocTextController?.dispose();
  }

  @override
  WidgetClassDebugData toWidgetClassDebugData() => WidgetClassDebugData(
        widgetParameters: {
          'season': debugSerializeParam(
            widget?.season,
            ParamType.DocumentReference,
            link:
                'https://app.flutterflow.io/project/b-flix-admin-19wa5o?tab=uiBuilder&page=CreatePage',
            searchReference:
                'reference=SiIKEAoGc2Vhc29uEgZ3dGVvYmVyDggGKgoKCAoGc2VyaWVzUAFaBnNlYXNvbg==',
            name: 'series',
            nullable: true,
          )
        }.withoutNulls,
        widgetStates: {
          'tabBarCurrentIndex': debugSerializeParam(
            tabBarCurrentIndex,
            ParamType.int,
            link:
                'https://app.flutterflow.io/project/b-flix-admin-19wa5o?tab=uiBuilder&page=CreatePage',
            name: 'int',
            nullable: true,
          ),
          'filmNameText': debugSerializeParam(
            filmNameTextController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/b-flix-admin-19wa5o?tab=uiBuilder&page=CreatePage',
            name: 'String',
            nullable: true,
          ),
          'releaseyearText1': debugSerializeParam(
            releaseyearTextController1?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/b-flix-admin-19wa5o?tab=uiBuilder&page=CreatePage',
            name: 'String',
            nullable: true,
          ),
          'directorText': debugSerializeParam(
            directorTextController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/b-flix-admin-19wa5o?tab=uiBuilder&page=CreatePage',
            name: 'String',
            nullable: true,
          ),
          'durationText': debugSerializeParam(
            durationTextController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/b-flix-admin-19wa5o?tab=uiBuilder&page=CreatePage',
            name: 'String',
            nullable: true,
          ),
          'trailerLinkText': debugSerializeParam(
            trailerLinkTextController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/b-flix-admin-19wa5o?tab=uiBuilder&page=CreatePage',
            name: 'String',
            nullable: true,
          ),
          'descriptionText': debugSerializeParam(
            descriptionTextController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/b-flix-admin-19wa5o?tab=uiBuilder&page=CreatePage',
            name: 'String',
            nullable: true,
          ),
          'checkboxGroupValues': debugSerializeParam(
            checkboxGroupValues,
            ParamType.String,
            isList: true,
            link:
                'https://app.flutterflow.io/project/b-flix-admin-19wa5o?tab=uiBuilder&page=CreatePage',
            name: 'String',
            nullable: true,
          ),
          'documentaryNameText': debugSerializeParam(
            documentaryNameTextController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/b-flix-admin-19wa5o?tab=uiBuilder&page=CreatePage',
            name: 'String',
            nullable: true,
          ),
          'releaseyearText2': debugSerializeParam(
            releaseyearTextController2?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/b-flix-admin-19wa5o?tab=uiBuilder&page=CreatePage',
            name: 'String',
            nullable: true,
          ),
          'directorDocumentaryText': debugSerializeParam(
            directorDocumentaryTextController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/b-flix-admin-19wa5o?tab=uiBuilder&page=CreatePage',
            name: 'String',
            nullable: true,
          ),
          'narratorText': debugSerializeParam(
            narratorTextController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/b-flix-admin-19wa5o?tab=uiBuilder&page=CreatePage',
            name: 'String',
            nullable: true,
          ),
          'durationDocText': debugSerializeParam(
            durationDocTextController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/b-flix-admin-19wa5o?tab=uiBuilder&page=CreatePage',
            name: 'String',
            nullable: true,
          ),
          'dropDownDocValue': debugSerializeParam(
            dropDownDocValue,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/b-flix-admin-19wa5o?tab=uiBuilder&page=CreatePage',
            name: 'String',
            nullable: true,
          ),
          'trailerLinkdocumentaryText': debugSerializeParam(
            trailerLinkdocumentaryTextController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/b-flix-admin-19wa5o?tab=uiBuilder&page=CreatePage',
            name: 'String',
            nullable: true,
          ),
          'descriptionDocText': debugSerializeParam(
            descriptionDocTextController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/b-flix-admin-19wa5o?tab=uiBuilder&page=CreatePage',
            name: 'String',
            nullable: true,
          ),
          'checkboxGroupDocumentaryValues': debugSerializeParam(
            checkboxGroupDocumentaryValues,
            ParamType.String,
            isList: true,
            link:
                'https://app.flutterflow.io/project/b-flix-admin-19wa5o?tab=uiBuilder&page=CreatePage',
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
            'https://app.flutterflow.io/project/b-flix-admin-19wa5o/tab=uiBuilder&page=CreatePage',
        searchReference: 'reference=OgpDcmVhdGVQYWdlUAFaCkNyZWF0ZVBhZ2U=',
        widgetClassName: 'CreatePage',
      );
}
