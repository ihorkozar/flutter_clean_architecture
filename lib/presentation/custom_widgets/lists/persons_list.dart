import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_architecture/data/models/person/person_model.dart';
import 'package:flutter_clean_architecture/presentation/bloc/list_cubit/list_cubit.dart';
import 'package:flutter_clean_architecture/presentation/bloc/list_cubit/list_state.dart';
import 'package:flutter_clean_architecture/util/responcive.dart';

import '../cards/card.dart';

class PersonsList extends StatelessWidget {
  final scrollController = ScrollController();
  final int page = -1;

  PersonsList({Key? key}) : super(key: key);

  void setupScrollController(BuildContext context) {
    scrollController.addListener(() {
      if (scrollController.position.atEdge) {
        if (scrollController.position.pixels != 0) {
          context.read<PersonListCubit>().loadPerson();
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    setupScrollController(context);

    return BlocBuilder<PersonListCubit, PersonState>(builder: (context, state) {
      List<PersonModel> persons = [];
      bool isLoading = false;

      if (state is PersonLoading && state.isFirstFetch) {
        return _loadingIndicator();
      } else if (state is PersonLoading) {
        persons = state.oldPersonsList;
        isLoading = true;
      } else if (state is PersonLoaded) {
        persons = state.personsList;
      } else if (state is PersonError) {
        return Text(
          state.message,
          style: const TextStyle(color: Colors.white, fontSize: 25),
        );
      }
      return Responsive.isMobile(context)
          ? buildListView(persons, isLoading)
          : buildGridView(
              persons, isLoading, MediaQuery.of(context).size.width,);
    });
  }

  Padding buildGridView(
    List<PersonModel> persons,
    bool isLoading,
    double screenWidth,
  ) {
    int gridCount = 1;
    if (screenWidth > 1480) {
      gridCount = 3;
    } else if (screenWidth > 980) {
      gridCount = 2;
    }
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 204,
          crossAxisCount: gridCount,
        ),
        controller: scrollController,
        itemBuilder: (context, index) {
          if (index < persons.length) {
            return Padding(
              padding: const EdgeInsets.all(16),
              child: PersonCard(person: persons[index]),
            );
          } else {
            Timer(const Duration(milliseconds: 30), () {
              scrollController
                  .jumpTo(scrollController.position.maxScrollExtent);
            });
            return _loadingIndicator();
          }
        },
        itemCount: persons.length + (isLoading ? 1 : 0),
      ),
    );
  }

  Padding buildListView(List<PersonModel> persons, bool isLoading) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: ListView.separated(
        controller: scrollController,
        itemBuilder: (context, index) {
          if (index < persons.length) {
            return PersonCard(person: persons[index]);
          } else {
            Timer(const Duration(milliseconds: 30), () {
              scrollController
                  .jumpTo(scrollController.position.maxScrollExtent);
            });
            return _loadingIndicator();
          }
        },
        separatorBuilder: (context, index) {
          return Divider(
            color: Colors.grey[400],
          );
        },
        itemCount: persons.length + (isLoading ? 1 : 0),
      ),
    );
  }

  Widget _loadingIndicator() {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
