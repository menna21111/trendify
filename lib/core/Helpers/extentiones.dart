import 'package:flutter/material.dart';

extension Navigation on BuildContext {
  void pop() {
    Navigator.of(this).pop();
  }

  Future<dynamic> pushNamed(String routeName,{Object? arguments}) async {
    return await Navigator.of(this).pushNamed(routeName,arguments: arguments);
  }
  Future<dynamic> pushReplacementNamed(String routeName,{Object? arguments}) async {
    return await Navigator.of(this).pushReplacementNamed(routeName,arguments: arguments);
  }
  Future<dynamic> pushNamedAndRemoveUntil(String routeName,{Object? arguments,required RoutePredicate predicate}) async {
    return await Navigator.of(this).pushNamedAndRemoveUntil(routeName,predicate,arguments: arguments);
  }

}
