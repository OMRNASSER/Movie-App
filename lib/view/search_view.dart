import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

          body: Padding(
            padding: const EdgeInsets.all(10.0),
            child: _searchTextFormField(),
          )




      ),
    );

  }

  Widget _searchTextFormField() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey,
      ),
      child: TextFormField(
        decoration: const InputDecoration(
          border: InputBorder.none,
          hintText: 'Search something',
          focusColor: Colors.black,
          prefixIcon: Icon(
            Icons.search,
            color: Colors.black,
          ),
          iconColor: Colors.black,
        ),
      ),
    );
  }

}
