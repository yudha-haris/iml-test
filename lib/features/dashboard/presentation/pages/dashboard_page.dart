import 'package:flutter/material.dart';
import 'package:lmi/design/constants/app_colors.dart';
import 'package:lmi/design/constants/assets.dart';
import 'package:lmi/design/widgets/app_box.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      children: [
        const SizedBox(height: 32,),
        Stack(
          alignment: Alignment.topCenter,
          children: [
            Column(
              children: [
                const SizedBox(height: 36,),
                AppBox(child: Column(
                  children: [
                    const SizedBox(height: 32,),
                    const Text("Welcome Back,", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),),
                    const SizedBox(height: 2,),
                    const Text("Yohannes Affandy (Jojo)", style: TextStyle(fontWeight: FontWeight.w600),),
                    const SizedBox(height: 8,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _profileLabel(name: "Loan Market Office Dev", icon: const Icon(Icons.shopping_bag_outlined)),
                            _profileLabel(name: "LM9990001", icon: const Text(" ID: ")),
                          ],
                        ),
                        Container(height: 48, width: 1, color: Colors.black,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _profileLabel(name: "it@loanmarket.co.id", icon: const Icon(Icons.mail_outlined)),
                            _profileLabel(name: "6281234567890", icon: const Icon(Icons.phone_outlined)),
                          ],
                        ),
                      ],
                    )
                  ],
                ))
              ],
            ),
            Image.asset(Assets.profile, height: 70, width: 70,),
          ],
        ),
        const SizedBox(height: 24,),
        AppBox(child: SizedBox(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(child: _menu(name: "Contact", icon: const Icon(Icons.layers_outlined), quantity: "41")),
                  Container(height: 56, width: 1, color: AppColors.borderColor,),
                  Expanded(child: _menu(name: "Loan", icon: const Icon(Icons.file_copy_outlined), quantity: "50")),
                ],
              ),
              Container(width: double.infinity, height: 1, color: AppColors.borderColor,),
              Row(
                children: [
                  Expanded(child: _menu(name: "Product", icon: const Icon(Icons.shopping_bag_outlined), quantity: "73")),
                  Container(height: 56, width: 1, color: AppColors.borderColor,),
                  Expanded(child: _menu(name: "Bank", icon: const Icon(Icons.person_2_outlined), quantity: "28")),
                ],
              ),
            ],
          ),
        )),
        const SizedBox(height: 24,),
        AppBox(
            padding: const EdgeInsets.all(16),
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("Pinjaman Disetujui", style: TextStyle(fontWeight: FontWeight.w600),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("2", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16, height: 2),),
                Text("/ 5 Pinjaman", style: TextStyle(height: 2),),
              ],
            ),
            const Divider(
              thickness: 2,
            ),
            const Text("Target", style: TextStyle(fontWeight: FontWeight.w600),),
            const Text("280%",style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16, height: 1.5),),
            const Text("Rp14.000.000.000 / 5.000.000.000"),
          ],
        ))
      ],
    );
  }

  Widget _profileLabel({required String name, required Widget icon}){
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        icon,
        const SizedBox(width: 8,),
        Center(child: Text(name, style: const TextStyle(fontSize: 12), maxLines: 1,)),
      ],
    );

  }

  Widget _menu({required String name, required Widget icon, required String quantity}){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        icon,
        Column(
          children: [
            Text(name, style: const TextStyle(fontWeight: FontWeight.w600),),
            Text(quantity, style: const TextStyle(fontWeight: FontWeight.w600),),
          ],
        ),

      ],
    );

  }
}
