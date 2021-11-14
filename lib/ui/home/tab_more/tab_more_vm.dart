import 'package:stacked/stacked.dart';

class TabMoreViewModel extends BaseViewModel{

  List<bool> itemsTabList = [];

  TabMoreViewModel(){
    itemsTabList.add(true);
    itemsTabList.add(false);
    itemsTabList.add(false);
  }

  void itemsTabSelected(int index){
    for(int i = 0; i < itemsTabList.length; i++){
      itemsTabList[i] = false;
    }
    itemsTabList[index] = true;
    notifyListeners();
  }

}