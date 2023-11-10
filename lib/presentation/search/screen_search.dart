import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/applications/search_block/search_bloc.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/search/widgets/search_idle.dart';
import 'package:netflix/presentation/search/widgets/search_result.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<SearchBloc>().add(SearchEvent.searchlist());
  }

  TextEditingController searchCtrl = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<SearchBloc, SearchState>(
        builder: (context, state) {
          return SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CupertinoSearchTextField(

                      controller: searchCtrl,
                      onChanged: (va) {
                        if(va.isNotEmpty) {
                          print('1111111');
                      context
                          .read<SearchBloc>()
                          .add(SearchEvent.search(query: va));
                          print(va);
                    }else{
                          print('2222222222222');
                          context.read<SearchBloc>().add(SearchEvent.searchlist());

                        }
                      },
                      prefixIcon: const Icon(
                        CupertinoIcons.search,
                        color: grey,
                      ),
                      suffixIcon: const Icon(
                        CupertinoIcons.xmark_circle_fill,
                        color: grey,
                      ),
                      style: const TextStyle(color: buttonColorwhite),
                      backgroundColor: grey.withOpacity(0.4),
                    ),
                    kh10,
                  state.isSearch??false?Expanded(child: SaearchResultWidget()): Expanded(child: SearchIdleWidget())
                        // : Expanded(child: SaearchResultWidget()),
                   //  Text(state.search??'abc')
                  ],
                ),
              ));
        },
      ),
    );
  }
}
