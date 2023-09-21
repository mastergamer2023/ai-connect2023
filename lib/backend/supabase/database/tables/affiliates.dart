import '../database.dart';

class AffiliatesTable extends SupabaseTable<AffiliatesRow> {
  @override
  String get tableName => 'affiliates';

  @override
  AffiliatesRow createRow(Map<String, dynamic> data) => AffiliatesRow(data);
}

class AffiliatesRow extends SupabaseDataRow {
  AffiliatesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AffiliatesTable();

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  int? get password => getField<int>('password');
  set password(int? value) => setField<int>('password', value);

  String? get username => getField<String>('username');
  set username(String? value) => setField<String>('username', value);

  bool? get fullName => getField<bool>('full_name');
  set fullName(bool? value) => setField<bool>('full_name', value);

  int? get isCustomer => getField<int>('is_customer');
  set isCustomer(int? value) => setField<int>('is_customer', value);

  bool? get affiliateId => getField<bool>('affiliate_id');
  set affiliateId(bool? value) => setField<bool>('affiliate_id', value);

  int? get isAdmin => getField<int>('is_admin');
  set isAdmin(int? value) => setField<int>('is_admin', value);

  bool? get uplineId => getField<bool>('upline_id');
  set uplineId(bool? value) => setField<bool>('upline_id', value);

  String? get isAffiliate => getField<String>('is_affiliate');
  set isAffiliate(String? value) => setField<String>('is_affiliate', value);

  String? get photo => getField<String>('photo');
  set photo(String? value) => setField<String>('photo', value);

  int get uid => getField<int>('uid')!;
  set uid(int value) => setField<int>('uid', value);
}
