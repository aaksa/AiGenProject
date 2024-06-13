import '../database.dart';

class PicrequestsTable extends SupabaseTable<PicrequestsRow> {
  @override
  String get tableName => 'picrequests';

  @override
  PicrequestsRow createRow(Map<String, dynamic> data) => PicrequestsRow(data);
}

class PicrequestsRow extends SupabaseDataRow {
  PicrequestsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PicrequestsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get request => getField<String>('request');
  set request(String? value) => setField<String>('request', value);

  String? get type => getField<String>('type');
  set type(String? value) => setField<String>('type', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  int? get progress => getField<int>('progress');
  set progress(int? value) => setField<int>('progress', value);

  String? get url => getField<String>('url');
  set url(String? value) => setField<String>('url', value);

  String? get imageid => getField<String>('imageid');
  set imageid(String? value) => setField<String>('imageid', value);

  DateTime? get completedAt => getField<DateTime>('completed_at');
  set completedAt(DateTime? value) => setField<DateTime>('completed_at', value);
}
