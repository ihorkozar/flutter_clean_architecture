import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/domain/entities/person_entity.dart';
import 'package:flutter_clean_architecture/presentation/custom_widgets/search_result_card.dart';
import 'package:flutter_clean_architecture/presentation/screens/detail_screen.dart';

class SearchResult extends StatelessWidget {
  final PersonEntity personResult;

  const SearchResult({Key? key, required this.personResult}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PersonDetailPage(person: personResult),
          ),
        );
      },
      child: SearchResultCard(personResult: personResult),
    );
  }
}
