import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'tab_home_vm.dart';
class TabHomeScreen extends ViewModelBuilderWidget<TabHomeViewModel> {

  const TabHomeScreen({Key? key}) : super(key: key);

  @override
  Widget builder(BuildContext context, TabHomeViewModel viewModel, Widget? child) {
    return SingleChildScrollView(
      child: Column(
          children: [

            topSearchView(),

            const SizedBox(height: 10.0,),

            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Image.asset('assets/img_new_arrival.png',
              height: 110.0,
              width: double.infinity,
              fit: BoxFit.fill,),
            ),

            const SizedBox(height: 10.0,),

            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Image.asset('assets/img_twenty_off.png',
                height: 110.0,
                width: double.infinity,
                  fit: BoxFit.fill),
            ),

            threeDModel(),

            const SizedBox(height: 10.0,),

            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Image.asset('assets/img_new_arrival_1.png',
                height: 100.0,
                width: double.infinity,
                  fit: BoxFit.fill),
            ),

            const SizedBox(height: 10.0,),

            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Image.asset('assets/img_new_collection.png',
                height: 110.0,
                fit: BoxFit.fill,
                width: double.infinity,),
            ),

            const SizedBox(height: 10.0,),

          ],
      ),
    );
  }

  @override
  TabHomeViewModel viewModelBuilder(BuildContext context) {
    return TabHomeViewModel();
  }

}

Widget topSearchView(){
  return Padding(
    padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
    child: Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        color: Color(0xFFF2F2F2),
      ),
      child: const TextField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            prefixIcon: Icon(Icons.search,
              color: Colors.grey,),
            isDense: true,
            contentPadding:
            EdgeInsets.only(left: 0, bottom: 15, top: 15, right: 5),
            hintText: "Search here"),
      ),

    ),
  );
}

Widget threeDModel(){
  return Padding(
    padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
    child: Row(
      children: [
        Expanded(
          child: Container(
            height: 110.0,
            decoration: const BoxDecoration(
                color: Color(0xFFF2F2F2),
              borderRadius: BorderRadius.all(Radius.circular(10.0))
            ),
            child: const Center(
              child: Text('3D Model',
              style: TextStyle(
                color: Colors.grey,
              ),),
            ),
          ),
        ),

       const SizedBox(width: 20.0,),

        Expanded(
          child: Container(
            height: 110.0,
            decoration: const BoxDecoration(
                color: Color(0xFFF2F2F2),
                borderRadius: BorderRadius.all(Radius.circular(10.0))
            ),
            child: const Center(
              child: Text('3D Model',
                style: TextStyle(
                  color: Colors.grey,
                ),),
            ),
          ),
        ),

        const SizedBox(width: 20.0,),

        Expanded(
          child: Container(
            height: 110.0,
            decoration: const BoxDecoration(
                color: Color(0xFFF2F2F2),
                borderRadius: BorderRadius.all(Radius.circular(10.0))
            ),
            child: const Center(
              child: Text('3D Model',
                style: TextStyle(
                  color: Colors.grey,
                ),),
            ),
          ),
        ),

      ],
    )
  );
}
