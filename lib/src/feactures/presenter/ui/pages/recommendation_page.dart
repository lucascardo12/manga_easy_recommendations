import 'package:coffee_cup/features/text/coffee_text.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:manga_easy_recommendations/src/feactures/presenter/controller/recommendation_controller.dart';
import 'package:manga_easy_recommendations/src/feactures/presenter/ui/pages/recommendation_done_state_page.dart';
import 'package:manga_easy_recommendations/src/feactures/presenter/ui/pages/recommendation_initial_state_page.dart';
import 'package:manga_easy_recommendations/src/feactures/presenter/ui/pages/recommendation_not_found_state_page.dart';
import 'package:manga_easy_recommendations/src/feactures/presenter/ui/state/recommendation_state_imp.dart';
import 'package:manga_easy_themes/manga_easy_themes.dart';

class RecommendationPage extends StatefulWidget {
  static const route = '/recommendation-screen';
  const RecommendationPage({super.key});

  @override
  State<RecommendationPage> createState() => _RecommendationPageState();
}

class _RecommendationPageState extends State<RecommendationPage> {
  RecommendationController ct = GetIt.I();
  @override
  void initState() {
    ct.init();
    ct.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          color: ThemeService.of.backgroundIcon,
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_rounded),
        ),
        title: const CoffeeText(
          text: 'Recomendações',
          typography: CoffeeTypography.title,
        ),
      ),
      body: CustomScrollView(
        slivers: [
          Builder(
            builder: (_) {
              final state = ct.state;
              if (state is RecommendationDoneState) {
                return SliverToBoxAdapter(
                  child: RecommendationDoneStatePage(
                    listRecommendation: ct.listRecommendation,
                  ),
                );
              }
              if (state is RecommendationNotfoundState) {
                return const SliverToBoxAdapter(
                  child: RecommendationNotFoundStatePage(),
                );
              }
              return const SliverToBoxAdapter(
                child: RecommendationInitialStatePage(),
              );
            },
          ),
        ],
      ),
    );
  }
}
