import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class LastUpdatedDateFormatter {
  LastUpdatedDateFormatter({@required this.lastUpdate});
  final DateTime lastUpdate;
  String lastUpdatedStatusText() {
    if (lastUpdate != null) {
      final formatter = DateFormat.yMd().add_Hms();
      final formatted = formatter.format(lastUpdate);
      return 'Last update: $formatted';
    }
    return '';
  }
}

class LastUpdatedStatusText extends StatelessWidget {
  LastUpdatedStatusText({@required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Text(
        text,
        textAlign: TextAlign.center,
      ),
    );
  }
}
