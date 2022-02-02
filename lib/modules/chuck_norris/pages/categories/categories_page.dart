import 'package:flutter/material.dart';
import 'package:ioasys_api_lesson/common/widgets/custom_app_bar_widget.dart';
import 'package:ioasys_api_lesson/modules/chuck_norris/models/chuck_category_model.dart';

import 'categories_controller.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  _CategoriesPageState createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  final _controller = CategoriesController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBarWidget(
        title: 'Chuck Norris - Categories',
      ),
      body: FutureBuilder<List<ChuckCategoryModel>>(
        future: _controller.getJokesCategories(),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
              return Center(
                child: CircularProgressIndicator(),
              );
            default:
          }
          throw Error();
        },
      ),
    );
  }
}
