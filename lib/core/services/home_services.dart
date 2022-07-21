import 'package:cloud_firestore/cloud_firestore.dart';
class HomeServices {

  final CollectionReference _movieCollectionRef  = FirebaseFirestore.instance.collection('movie');



  Future<List<QueryDocumentSnapshot>> getMovie() async {
    var value  = await  _movieCollectionRef.get();
    return value.docs ;
  }






}