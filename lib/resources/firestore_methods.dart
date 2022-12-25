import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:instagram_flutter/resources/storage_methods.dart';

class FirestoreMethods {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<String> uploadPost(
    String description,
    Uint8List file,
    String uid,
  ) async {
    String res = 'Some Error Occurred';
    try {
      String photoUrl =
          await StorageMethods().uploadImageToStorage('posts', file, true);
    } catch (e) {}
    return res;
  }
}
