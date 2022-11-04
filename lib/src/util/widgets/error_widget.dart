import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ErrorWidget extends StatefulWidget {
  const ErrorWidget({super.key, required this.error});

  final Object error;

  @override
  State<ErrorWidget> createState() => _ErrorWidgetState();
}

class _ErrorWidgetState extends State<ErrorWidget> {
  Type get _error => (widget.error as DioError).error.runtimeType;

  String _getErrorMessage(AppLocalizations appLocalizations) {
    switch (_error) {
      case SocketException:
        return appLocalizations.internet_exception_message;
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
    final appLocalizations = AppLocalizations.of(context);

    return Scaffold(
      key: const Key('error_widget'),
      appBar: AppBar(),
      body: Center(
        child: Text(_getErrorMessage(appLocalizations!)),
      ),
    );
  }
}
