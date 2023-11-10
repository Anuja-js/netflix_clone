import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/applications/search_block/search_bloc.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/search/widgets/tittle.dart';

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBloc, SearchState>(
  builder: (context, state) {
    return   state.isLoading==true? const Center(

      child: CircularProgressIndicator()
    ):Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const tittle_search(text: "Top Searches"),
        kh10,
        Expanded(
          child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return  TopItemSearchTail(name: state.searchResult?.results![index].originalTitle,
                  image: state.searchResult?.results![index].backdropPath??'',
                );
              },
              separatorBuilder: (context, index) {
                return kh20;
              },
              itemCount:state.searchResult?.results?.length??0),
        )
      ],
    );
  },
);
  }
}

class TopItemSearchTail extends StatelessWidget {
  final String? image;
  final String? name;
  const TopItemSearchTail({Key? key,this.image,  this.name}) : super(key: key);
  // final imageUrl =
  //     "https://www.themoviedb.org/t/p/w533_and_h300_bestv2/2fAnbhiwqPiu0XHA98nZrPckPgv.jpg";

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width * 0.35;
    return BlocBuilder<SearchBloc, SearchState>(
      builder: (context, state) {
        return Row(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 5),
              width: screenwidth,
              height: 65,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage('$imageappentUrl$image'), fit: BoxFit.cover),
              ),
            ),
            kw5,
        Expanded(
                child: Text(
              name!,
              style: const TextStyle(
                  color: buttonColorwhite,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            )),
            IconButton(
              icon: const Icon(
                CupertinoIcons.play_circle,
                size: 50,
                color: buttonColorwhite,
              ),
              onPressed: () {},
            ),
            kw5,
          ],
        );
      },
    );
  }
}
