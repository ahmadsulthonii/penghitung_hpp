import 'package:flutter/material.dart';
import 'package:penghitung_hpp/presentation/home_page/home_page_view.dart';

class HomePageController extends State<HomePageView> {
  static late HomePageController instance;
  late HomePageView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
