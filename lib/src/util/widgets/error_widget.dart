import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ErrorWidget extends StatefulWidget {
  const ErrorWidget(this.appLocalizations, {super.key, required this.error});

  final Object error;
  final AppLocalizations appLocalizations;

  @override
  State<ErrorWidget> createState() => _ErrorWidgetState();
}

class _ErrorWidgetState extends State<ErrorWidget> {
  Type get _error => (widget.error as DioError).error.runtimeType;
  AppLocalizations get _appLocalizations => widget.appLocalizations;

  String _getErrorMessage() {
    switch (_error) {
      case SocketException:
        return _appLocalizations.internet_exception_message;
      default:
        return 'Something went wrong.';
    }
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(_getErrorMessage()),
      ),
    );
  }
}
