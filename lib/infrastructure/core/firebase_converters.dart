DateTime dateTimeFromTimestamp(int timestamp) =>
    DateTime.fromMillisecondsSinceEpoch(timestamp);

int timestampFromDateTime(DateTime dateTime) => dateTime.millisecondsSinceEpoch;
