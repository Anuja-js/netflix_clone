import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/applications/search_block/search_bloc.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/search/widgets/tittle.dart';



class SaearchResultWidget extends StatelessWidget {
  const SaearchResultWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const tittle_search(text: "Movies & TV"),
        kh10,
        BlocBuilder<SearchBloc, SearchState>(
          builder: (context, state) {
            return Expanded(
              child: GridView.count(
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                crossAxisCount: 3,
                shrinkWrap: true,
                childAspectRatio: 1 / 1.4,
                children: List.generate(
                    state.searchResult?.results?.length??0, (index) {
                  return  MainCard(
                    image: state.searchResult?.results![index].backdropPath??'',
                  );
                }),
              ),
            );
          },
        )
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  final String? image;

  const MainCard({Key? key, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage('$imageappentUrl$image'), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(8)),
    );
  }
}
