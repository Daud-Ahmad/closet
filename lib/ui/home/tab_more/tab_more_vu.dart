import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:stacked/stacked.dart';
import 'tab_more_vm.dart';

class TabMoreScreen extends ViewModelBuilderWidget<TabMoreViewModel> {

  const TabMoreScreen({Key? key}) : super(key: key);

  @override
  Widget builder(BuildContext context, TabMoreViewModel viewModel, Widget? child) {
    return SingleChildScrollView(
      child: Column(
          children: [
            Container(
              color: Colors.black,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(top: 10.0, bottom: 20.0, left: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text('Hi',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12.0
                    ),),

                    SizedBox(
                      height: 5.0,
                    ),

                    Text('John Doe',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        fontWeight: FontWeight.bold
                      ),)
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20.0,),

            Column(
              children: [
                bottomListCell('assets/profile.png', 'My Account', viewModel, context),

                bottomListCell('assets/my_orders.png', 'My Orders', viewModel, context),

                bottomListCell('assets/address.png', 'Address Book', viewModel, context),

                bottomListCell('assets/payment_method.png', 'Payment Methods', viewModel, context),

                bottomListCell('assets/notifications.png', 'Notifications', viewModel, context),

                bottomListCell('assets/help.png', 'Need Help?', viewModel, context),

                bottomListCell('assets/sign_out.png', 'Sign out', viewModel, context),
              ],
            )

          ],
      ),
    );
  }

  @override
  TabMoreViewModel viewModelBuilder(BuildContext context) {
    return TabMoreViewModel();
  }

}

Widget bottomListCell(String assetLink, String label, TabMoreViewModel viewModel, BuildContext context) {
  return Column(
    children: [
      InkWell(
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 8, 20, 8),
          child:
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(assetLink,
                  width: 20,
                  height: 20,),
                  const SizedBox(width: 5,),
                  Expanded(
                    child: Text(
                      label,
                      style: const TextStyle(
                        fontSize: 15,
                        color: Colors.black
                      ),
                    ),
                  ),
              if(label != 'Sign out')
              const Icon(
                      Icons.arrow_forward_ios_rounded,
                    ),
                ],
              ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Divider(
          color: Colors.grey[400],
        ),
      )
    ],
  );
}
