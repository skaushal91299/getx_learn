import 'package:flutter/material.dart';

class ListSearchView extends StatefulWidget {
  const ListSearchView({Key? key}) : super(key: key);

  @override
  State<ListSearchView> createState() => _ListSearchViewState();
}

class _ListSearchViewState extends State<ListSearchView> {
  @override
  void initState() {
    _foundUsers = _allUsers;
    super.initState();
  }

  // List Of All Users
  final List<dynamic> _allUsers = [
    {"id": 1, "name": "Andy", "age": 29},
    {"id": 2, "name": "Aragon", "age": 40},
    {"id": 3, "name": "Bob", "age": 5},
    {"id": 4, "name": "Barbara", "age": 35},
    {"id": 5, "name": "Candy", "age": 21},
    {"id": 6, "name": "Colin", "age": 55},
    {"id": 7, "name": "Audra", "age": 30},
    {"id": 8, "name": "Banana", "age": 14},
    {"id": 9, "name": "Caversky", "age": 100},
    {"id": 10, "name": "Becky", "age": 32},
  ];

  // Search User
  List<dynamic> _foundUsers = [];

  // Search
  void _searchFilter(String enteredText) {
    // Search Result
    List<dynamic> results = [];
    if (enteredText.isEmpty) {
      results = _allUsers;
    } else {
      results = _allUsers
          .where((user) =>
              // Case Sensitive
              user['name'].toLowerCase().contains(enteredText.toLowerCase()))
          .toList();
    }
    // Refresh UI
    setState(() {
      _foundUsers = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Search'),
      ),
      body: SafeArea(
          child: Column(
        children: [
          TextField(
            onChanged: (val) {
              _searchFilter(val);
              // _sea
            },
            decoration: const InputDecoration(
              suffixIcon: Icon(Icons.search),
              labelText: 'Search',
            ),
          ),
          Expanded(
            child: _foundUsers.isNotEmpty
                ? ListView.builder(
                    itemCount: _foundUsers.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Card(
                        color: Colors.amber,
                        elevation: 8,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text(
                                "NAME: ${_foundUsers[index]['name'].toString()}",
                              ),
                              const SizedBox(width: 20),
                              Expanded(
                                child: Text(
                                  " AGE: ${_foundUsers[index]['age'].toString()}",
                                  softWrap: false,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                    // overflow: TextOverflow.ellipsis,
                                    color: Colors.red,
                                    // fontSize: 24,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    })
                : const Center(
                    child: Text(
                      'No results found',
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
          )
        ],
      )),
    );
  }
}
