import 'package:flutter/material.dart';
import 'package:mask/ui/widget/remain_stat_list_tile.dart';
import 'package:mask/viewmodel/store_model.dart';
import 'package:provider/provider.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final storeModel = context.watch<StoreModel>();
    return Scaffold(
      appBar: AppBar(
        title: Text('마스크 재고 있는 곳 : ${storeModel.stores.length}곳'),
        actions: [
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () {
              storeModel.fetch();
            },
          )
        ],
      ),
      body: storeModel.isLoading == true
          ? loadingWidget()
          : ListView(
              children: storeModel.stores.map((e) {
                return RemainStatListTile(e);
              }).toList(),
            ),
    );
  }

  Widget loadingWidget() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('정보를 가져오는 중'),
          CircularProgressIndicator(),
        ],
      ),
    );
  }
}
