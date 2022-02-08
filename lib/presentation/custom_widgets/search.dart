import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_architecture/data/models/person/person_model.dart';
import 'package:flutter_clean_architecture/presentation/bloc/search_bloc/search_bloc.dart';
import 'package:flutter_clean_architecture/presentation/bloc/search_bloc/search_event.dart';
import 'package:flutter_clean_architecture/presentation/bloc/search_bloc/search_state.dart';
import 'package:flutter_clean_architecture/presentation/custom_widgets/search_result.dart';
import 'package:flutter_clean_architecture/util/responsive.dart';

class CustomSearchDelegate extends SearchDelegate {
  CustomSearchDelegate() : super(searchFieldLabel: 'Search for characters...');

  final _suggestions = [
    'Rick',
    'Morty',
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
          showSuggestions(context);
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back_outlined),
      tooltip: 'Back',
      onPressed: () => close(context, null),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    debugPrint('Inside custom search delegate and search query is $query');

    BlocProvider.of<PersonSearchBloc>(context, listen: false)
        .add(SearchPersons(query));

    var size = MediaQuery.of(context).size;

    return BlocBuilder<PersonSearchBloc, PersonSearchState>(
      builder: (context, state) {
        if (state is PersonSearchLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is PersonSearchLoaded) {
          final person = state.persons;
          if (person.isEmpty) {
            return _showError('No Characters with that name found');
          }

          if (Responsive.isMobile(context)) {
            return ListView.builder(
              itemCount: person.isNotEmpty ? person.length : 0,
              itemBuilder: (context, int index) {
                PersonModel result = person[index];
                return SearchResult(personResult: result);
              },
            );
          } else {
            int gridCount = 1;
            if (size.width > 1480) {
              gridCount = 3;
            } else if (size.width > 980) {
              gridCount = 2;
            }
            return GridView.builder(
              itemCount: person.isNotEmpty ? person.length : 0,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 450,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 20.0,
                crossAxisCount: gridCount,
              ),
              itemBuilder: (context, int index) {
                PersonModel result = person[index];
                return SearchResult(personResult: result);
              },
            );
          }
        } else if (state is PersonSearchError) {
          return _showError(state.message);
        } else {
          return const Center(
            child: Icon(Icons.error),
          );
        }
      },
    );
  }

  Widget _showError(String errorMessage) {
    String img = 'assets/images/rm_error${getRand()}.png';
    return Container(
      color: Colors.black,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 250,
              height: 250,
              child: Center(
                child: Image.asset(img),
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Text(
              errorMessage,
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  int getRand() {
    return Random().nextInt(5);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if (query.isNotEmpty) {
      return Container();
    }

    return ListView.separated(
      padding: const EdgeInsets.all(10),
      itemBuilder: (context, index) {
        return GestureDetector(
          child: Text(
            _suggestions[index],
            style: const TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w400,
            ),
          ),
          onTap: () => query = _suggestions[index],
        );
      },
      separatorBuilder: (context, index) {
        return const Divider();
      },
      itemCount: _suggestions.length,
    );
  }
}
