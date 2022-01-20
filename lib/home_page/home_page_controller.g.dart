// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_page_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomePageController on _HomePageControllerBase, Store {
  Computed<bool>? _$validateComputed;

  @override
  bool get validate =>
      (_$validateComputed ??= Computed<bool>(() => super.validate,
              name: '_HomePageControllerBase.validate'))
          .value;

  final _$_HomePageControllerBaseActionController =
      ActionController(name: '_HomePageControllerBase');

  @override
  String? validaNome() {
    final _$actionInfo = _$_HomePageControllerBaseActionController.startAction(
        name: '_HomePageControllerBase.validaNome');
    try {
      return super.validaNome();
    } finally {
      _$_HomePageControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String? validaEmail() {
    final _$actionInfo = _$_HomePageControllerBaseActionController.startAction(
        name: '_HomePageControllerBase.validaEmail');
    try {
      return super.validaEmail();
    } finally {
      _$_HomePageControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
validate: ${validate}
    ''';
  }
}
