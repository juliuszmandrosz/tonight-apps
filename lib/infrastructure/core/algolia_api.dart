import 'package:algolia/algolia.dart';

class AlgoliaAPI {
  final Algolia _algolia;

  AlgoliaAPI(this._algolia);


  Future<AlgoliaQuerySnapshot> search(String? text, String index, int pageSize,
      int offset) async {
    AlgoliaQuery query = _algolia.instance.index(index);

    if (text != null) {
      query = query.query(text);
    }

    query = query.setLength(pageSize).setOffset(offset);
    return await query.getObjects();
  }
}
