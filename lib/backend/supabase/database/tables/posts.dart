import '../database.dart';

class PostsTable extends SupabaseTable<PostsRow> {
  @override
  String get tableName => 'posts';

  @override
  PostsRow createRow(Map<String, dynamic> data) => PostsRow(data);
}

class PostsRow extends SupabaseDataRow {
  PostsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PostsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get user => getField<String>('user');
  set user(String? value) => setField<String>('user', value);

  String? get body => getField<String>('body');
  set body(String? value) => setField<String>('body', value);

  String? get type => getField<String>('type');
  set type(String? value) => setField<String>('type', value);

  int? get picture => getField<int>('picture');
  set picture(int? value) => setField<int>('picture', value);

  String? get urnid => getField<String>('urnid');
  set urnid(String? value) => setField<String>('urnid', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  DateTime? get postedDate => getField<DateTime>('posted_date');
  set postedDate(DateTime? value) => setField<DateTime>('posted_date', value);

  String? get schedule => getField<String>('schedule');
  set schedule(String? value) => setField<String>('schedule', value);

  DateTime? get scheduledDate => getField<DateTime>('scheduled_date');
  set scheduledDate(DateTime? value) =>
      setField<DateTime>('scheduled_date', value);

  String? get request => getField<String>('request');
  set request(String? value) => setField<String>('request', value);
}
