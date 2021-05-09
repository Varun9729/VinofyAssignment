// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';

import '../../containers/about_us/about_us.dart';
import '../../containers/home/home.dart';
import '../../containers/re_category/re_category.dart';
import '../../containers/re_popular_list/re_popular_list.dart';
import '../../containers/re_search_results/re_search_results.dart';
import '../../containers/re_single/re_single.dart';
import '../../containers/where_to_find_us/where_to_find_us.dart';
import '../../screens/description_single/description_single.dart';
import '../../screens/gallery_single/gallery_single.dart';

class Routes {
  static const String home = '/';
  static const String aboutUs = '/about-us';
  static const String whereToFindUs = '/where-to-find-us';
  static const String reSearchResults = '/real-estates';
  static const String _reSingle = '/real-estates/single/:id';
  static String reSingle({@required dynamic id}) => '/real-estates/single/$id';
  static const String _reSingleDescription =
      '/real-estates/single/:id/description';
  static String reSingleDescription({@required dynamic id}) =>
      '/real-estates/single/$id/description';
  static const String _reSingleGallery = '/real-estates/single/:id/gallery';
  static String reSingleGallery({@required dynamic id}) =>
      '/real-estates/single/$id/gallery';
  static const String _reCategory = '/real-estates/categories/:categoryId';
  static String reCategory({@required dynamic categoryId}) =>
      '/real-estates/categories/$categoryId';
  static const String rePopularList = '/real-estates/popular';
  static const all = <String>{
    home,
    aboutUs,
    whereToFindUs,
    reSearchResults,
    _reSingle,
    _reSingleDescription,
    _reSingleGallery,
    _reCategory,
    rePopularList,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.home, page: HomeContainer),
    RouteDef(Routes.aboutUs, page: AboutUsContainer),
    RouteDef(Routes.whereToFindUs, page: WhereToFindUsContainer),
    RouteDef(Routes.reSearchResults, page: ReSearchResultsContainer),
    RouteDef(Routes._reSingle, page: ReSingleContainer),
    RouteDef(Routes._reSingleDescription, page: DescriptionSingleScreen),
    RouteDef(Routes._reSingleGallery, page: GallerySingleScreen),
    RouteDef(Routes._reCategory, page: ReCategoryContainer),
    RouteDef(Routes.rePopularList, page: RePopularListContainer),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    HomeContainer: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => HomeContainer(),
        settings: data,
      );
    },
    AboutUsContainer: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => AboutUsContainer(),
        settings: data,
      );
    },
    WhereToFindUsContainer: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => WhereToFindUsContainer(),
        settings: data,
      );
    },
    ReSearchResultsContainer: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => ReSearchResultsContainer(
            query: data.queryParams['query'].stringValue),
        settings: data,
      );
    },
    ReSingleContainer: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) =>
            ReSingleContainer(id: data.pathParams['id'].stringValue),
        settings: data,
      );
    },
    DescriptionSingleScreen: (data) {
      final args =
          data.getArgs<DescriptionSingleScreenArguments>(nullOk: false);
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => DescriptionSingleScreen(
          appBarTitle: args.appBarTitle,
          body: args.body,
          title: args.title,
        ),
        settings: data,
      );
    },
    GallerySingleScreen: (data) {
      final args = data.getArgs<GallerySingleScreenArguments>(
        orElse: () => GallerySingleScreenArguments(),
      );
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => GallerySingleScreen(
          appBarTitle: args.appBarTitle,
          images: args.images,
          startIndex: args.startIndex,
        ),
        settings: data,
      );
    },
    ReCategoryContainer: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) =>
            ReCategoryContainer(id: data.pathParams['categoryId'].stringValue),
        settings: data,
      );
    },
    RePopularListContainer: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => RePopularListContainer(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// DescriptionSingleScreen arguments holder class
class DescriptionSingleScreenArguments {
  final String appBarTitle;
  final String body;
  final String title;
  DescriptionSingleScreenArguments(
      {this.appBarTitle = '', @required this.body, @required this.title});
}

/// GallerySingleScreen arguments holder class
class GallerySingleScreenArguments {
  final String appBarTitle;
  final List<String> images;
  final int startIndex;
  GallerySingleScreenArguments(
      {this.appBarTitle, this.images, this.startIndex});
}
