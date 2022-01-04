import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/domain/entities/person_entity.dart';
import 'package:flutter_clean_architecture/presentation/screens/detail_screen.dart';
import 'package:flutter_clean_architecture/util/app_style.dart';
import 'cache_image.dart';

class PersonCard extends StatelessWidget {
  final PersonEntity person;

  const PersonCard({Key? key, required this.person}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PersonDetailPage(person: person),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 8, left: 8),
        child: Container(
          decoration: BoxDecoration(
            color: AppStyle.cellBackground,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            children: [
              PersonCacheImage(
                width: 166,
                height: 166,
                imageUrl: person.image,
              ),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                      person.name,
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 8,
                          width: 8,
                          decoration: BoxDecoration(
                            color: person.status == 'Alive'
                                ? Colors.green
                                : Colors.red,
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Expanded(
                          child: Text(
                            '${person.status} - ${person.species}',
                            style: const TextStyle(color: Colors.white),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const Text(
                      'Last known location:',
                      style: TextStyle(color: AppStyle.greyColor),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      person.location.name,
                      style: const TextStyle(color: Colors.white),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const Text(
                      'Origin:',
                      style: TextStyle(
                        color: AppStyle.greyColor,
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      person.origin.name,
                      style: const TextStyle(color: Colors.white),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 12,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
