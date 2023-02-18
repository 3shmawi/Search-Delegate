
import 'package:flutter/material.dart';

class SearchScreen extends SearchDelegate {
  final List<dynamic> dataSearch;

  SearchScreen(this.dataSearch);

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () => query = '',
        icon: const Icon(Icons.close),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () => close(context, null),
      icon: const Icon(Icons.arrow_back_ios),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    var searchList = query.isEmpty
        ? dataSearch
        : dataSearch
        .where((element) =>
        element.toLowerCase().startsWith(query.toLowerCase()))
        .toList();
    return ListView.builder(
      itemCount: searchList.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: const Icon(Icons.category_outlined),
          title: Text(
            searchList[index],
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          onTap: ()=>showResults(context),
        );
      },
    );
  }
}
