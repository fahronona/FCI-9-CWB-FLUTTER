import 'package:bloc/bloc.dart';
import 'package:flutter_fic9_ecommerce_fahron_app/data/datasources/products_remote_datasource.dart';
import 'package:flutter_fic9_ecommerce_fahron_app/data/models/responses/products_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_event.dart';
part 'product_state.dart';
part 'product_bloc.freezed.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc() : super(const _Initial()) {
    on<_GetAll>((event, emit) async {
      emit(const _Loading());
      final response = await ProductRemoteDatasource().getAllProduct();
      response.fold((l) => emit(_Error(l)), (r) => emit(_Loaded(r)));
    });
  }
}
