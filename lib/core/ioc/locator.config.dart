// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../repositories/real_estate_category_repository/real_estate_category_repository.dart'
    as _i7;
import '../repositories/real_estate_repository/real_estate_repository.dart'
    as _i8;
import '../services/real_estate_service/implementations/heroku_server/real_estate_service.dart'
    as _i11;
import '../services/real_estate_service/implementations/mock/real_estate_service.dart'
    as _i10;
import '../services/real_estate_service/real_estate_service.dart' as _i9;
import '../view_models/home_view_model/home_view_model.dart' as _i3;
import '../view_models/re_category/re_category.dart' as _i4;
import '../view_models/re_search_results/re_search_results.dart' as _i5;
import '../view_models/re_single/re_single.dart' as _i6;

const String _test = 'test';
const String _dev = 'dev';
const String _prod = 'prod';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String environment, _i2.EnvironmentFilter environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.HomeViewModel>(() => _i3.HomeViewModel());
  gh.factory<_i4.ReCategoryViewModel>(() => _i4.ReCategoryViewModel());
  gh.factory<_i5.ReSearchResultsViewModel>(
      () => _i5.ReSearchResultsViewModel());
  gh.factory<_i6.ReSingleViewModel>(() => _i6.ReSingleViewModel());
  gh.lazySingleton<_i7.RealEstateCategoryRepository>(
      () => _i7.RealEstateCategoryRepository());
  gh.lazySingleton<_i8.RealEstateRepository>(() => _i8.RealEstateRepository());
  gh.factory<_i9.RealEstateService>(() => _i10.RealEstateMockService(),
      registerFor: {_test});
  gh.factory<_i9.RealEstateService>(() => _i11.RealEstateHerokuDevService(),
      registerFor: {_dev});
  gh.lazySingleton<_i9.RealEstateService>(
      () => _i11.RealEstateHerokuProdService(),
      registerFor: {_prod});
  return get;
}
