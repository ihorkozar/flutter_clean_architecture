import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/data/models/person/person_model.dart';
import 'package:flutter_clean_architecture/presentation/custom_widgets/search_result_card.dart';
import 'package:flutter_clean_architecture/routes/router.gr.dart';

class SearchResult extends StatelessWidget {
  final PersonModel personResult;

  const SearchResult({Key? key, required this.personResult}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        AutoRouter.of(context).push(PersonDetailRoute(person: personResult));
      },
      child: SearchResultCard(personResult: personResult),
    );
  }
}
