import 'package:advicer/0_data/datasources/advice_remote_datasource.dart';
import 'package:advicer/0_data/repositiries/advice_repo_impl.dart';
import 'package:advicer/1_domain/repositories/advice_repo.dart';
import 'package:advicer/1_domain/usecases/advice_usecases.dart';
import 'package:advicer/2_application/pages/advice/cubit/advicer_cubit.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;

final sl = GetIt.I; // sl == Service Locator

Future<void> init() async{
  sl.registerFactory(() => AdvicerCubit(sl()),);
 
  sl.registerFactory(() => AdviceUsecases(adviceRepo: sl()),);


  sl.registerFactory<AdviceRepo>(() => AdviceRepoImpl(adviceRemoteDatasource: sl()),);
  sl.registerFactory<AdviceRemoteDatasource>(() => AdviceRemoteDatasourceImpl(client: sl()) ,);


  sl.registerFactory(() => http.Client(),);
}