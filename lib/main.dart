import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moive_app/core/constanst.dart';
import 'package:moive_app/core/go_router.dart';
import 'package:moive_app/features/Home/presentation/managers/fetch_data/fetchdata_cubit.dart';
import 'package:moive_app/features/Search/presentation/managers/cubit/search_view_cubit.dart';

void main() {
  runApp(const MoiveApp());
}

class MoiveApp extends StatelessWidget {
  const MoiveApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FetchdataCubit()..fetchData(),
        ),
        BlocProvider(create: (context) => SearchViewCubit()),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          brightness: Brightness.dark,
          scaffoldBackgroundColor: kPrimaryColor,
        ),
      ),
    );
  }
}
