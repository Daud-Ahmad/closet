import 'package:stacked/stacked.dart';
import 'tab_closet_model.dart';
import 'sub_menu_model.dart';

class TabClosetViewModel extends BaseViewModel{

List<TabClosetModel> clothTypeList = [];

List<SubMenuModel> subMenuList = [];

TabClosetViewModel(){
  for(int i = 0; i < 20; i++){
    clothTypeList.add(TabClosetModel(false, "Tops", 'assets/outfit.png'));
  }
  clothTypeList[0].isSelected = true;

  subMenuList.add(SubMenuModel(false, "Shirts"));
  subMenuList.add(SubMenuModel(false, "Skirts"));
  subMenuList.add(SubMenuModel(false, "Jackets"));
  subMenuList.add(SubMenuModel(false, "T Shirts"));
  subMenuList.add(SubMenuModel(false, "Pants"));
  subMenuList.add(SubMenuModel(false, "Shirts"));
  subMenuList.add(SubMenuModel(false, "Shirts"));
  subMenuList.add(SubMenuModel(false, "Shirts"));
  subMenuList.add(SubMenuModel(false, "Shirts"));
  subMenuList.add(SubMenuModel(false, "Shirts"));
  subMenuList[0].isSelected = true;
}

void onTopMenuHorizantalListItemClick(int index){
  for(int i = 0; i< clothTypeList.length; i++){
    clothTypeList[i].isSelected = false;
  }
  clothTypeList[index].isSelected = true;
  notifyListeners();
}

void onSubMenuListItemClick(int index){
  for(int i = 0; i< subMenuList.length; i++){
    subMenuList[i].isSelected = false;
  }
  subMenuList[index].isSelected = true;
  notifyListeners();
}

}