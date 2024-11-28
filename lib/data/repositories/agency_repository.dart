import 'package:ticketya/data/models/company.dart';

abstract class AgencyRepository {
  Future<List<Agency>> getAll();
  Future<Agency?> getById(int id);
  Future<int> create(Agency agency);
  Future<int> update(Agency agency);
  Future<int> delete(int id);
  Future<List<Agency>> getAllByCategoryId(int categoryId);

}