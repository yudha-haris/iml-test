import 'package:flutter/material.dart';
import 'package:lmi/design/constants/app_colors.dart';
import 'package:lmi/design/widgets/app_box.dart';
import 'package:lmi/design/widgets/app_flat_button.dart';

class DetailContactPage extends StatelessWidget {
  const DetailContactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Detail Contact',
          style: TextStyle(fontSize: 24),
        ),
        backgroundColor: AppColors.primary,
        elevation: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: [
          const SizedBox(
            height: 16,
          ),
          const Center(
              child: Text(
            "Dea Ananda",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
          )),
          const SizedBox(
            height: 8,
          ),
          const Center(child: Text("Date Created : December 21, 2022")),
          const SizedBox(
            height: 16,
          ),
          _appTableBox(
            title: 'Contact',
            action: Row(
              children: const [
                Icon(
                  Icons.edit_outlined,
                  color: AppColors.navy,
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  'Edit',
                  style: TextStyle(
                      color: AppColors.navy, fontWeight: FontWeight.w700),
                )
              ],
            ),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              color: Colors.white,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: const BoxDecoration(
                          border: Border(right: BorderSide())),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Phone",
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                          Text(
                            "Email",
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text("62812823772828"),
                            Text("dea.ananda@gmail.com"),
                          ],
                        ),
                      )),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          _appTableBox(
            title: 'Personal Information',
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              color: Colors.white,
              child: Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: const BoxDecoration(
                            border: Border(right: BorderSide())),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Type Contact",
                              style: TextStyle(fontWeight: FontWeight.w700),
                            ),
                            Text(
                              "KTP",
                              style: TextStyle(fontWeight: FontWeight.w700),
                            ),
                            Text(
                              "Birthday",
                              style: TextStyle(fontWeight: FontWeight.w700),
                            ),
                            Text(
                              "Gender",
                              style: TextStyle(fontWeight: FontWeight.w700),
                            ),
                            Text(
                              "Adviser",
                              style: TextStyle(fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      )),
                  Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text("Perorangan"),
                            Text("31756736378887"),
                            Text("07/12/2004"),
                            Text("Female"),
                            Text("Yohannes Affandy (Jojo)"),
                          ],
                        ),
                      )),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppFlatButton(title: "Share Access", icon: Icons.share, color: AppColors.primary, onTap: (){}),
              AppFlatButton(title: "Delete Channel", icon: Icons.delete_outline, color: Colors.red, onTap: (){}),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Container(
            color: AppColors.navy,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Application",
                  style: TextStyle(fontWeight: FontWeight.w700, color: Colors.white),
                ),
                Row(
                  children: const [
                    Icon(
                      Icons.add_circle,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      'Tambah',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w700),
                    )
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          AppBox(
            padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Container(
                    width: 80,
                    decoration: BoxDecoration(
                        color: AppColors.navy,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    padding: const EdgeInsets.all(4),
                    child: Column(
                      children: const [
                        Icon(Icons.wallet, color: Colors.white,),
                        Text('Kredit Pemilikan Rumah Secondary (KPR)', style: TextStyle(fontSize: 10, color: Colors.white), textAlign: TextAlign.center,),
                      ],
                    ),
                  ),
                  const SizedBox(width: 8,),
                  Expanded(
                    child: Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text("Nasabah", style: TextStyle(fontWeight: FontWeight.w700),),
                            Text("Loan Amount", style: TextStyle(fontWeight: FontWeight.w700),),
                            Text("Loan Step", style: TextStyle(fontWeight: FontWeight.w700),),
                            Text("Tenor", style: TextStyle(fontWeight: FontWeight.w700),),
                          ],
                        ),
                        const SizedBox(width: 8,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(":  Van Tomiko Can",),
                            Text(":  Rp 10.000.000.000",),
                            Text(":  Akad Kredit",),
                            Text(":  10 Tahun",),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              )),
          const SizedBox(
            height: 16,
          ),
          _appTableBox(
            title: 'Contact',
            action: Row(
              children: const [
                Icon(
                  Icons.add_circle,
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  'Tambah',
                  style: TextStyle(fontWeight: FontWeight.w700),
                )
              ],
            ),
            child: Container(
              color: Colors.white,
              padding: const EdgeInsets.all(8),
              height: 100,
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: AppColors.gray200,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    
                    child: Column(
                      children: [
                        const Text("Note", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: AppColors.gray),),
                        const SizedBox(height: 4,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text("February 9, 2023", style: TextStyle(fontSize: 10, color: AppColors.gray),),
                            SizedBox(height: 4,),
                            Text("Note", style: TextStyle(fontSize: 10, color: AppColors.gray),),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }

  Widget _appTableBox({
    required String title,
    Widget? action,
    required Widget child,
  }) {
    return AppBox(
        radius: 0,
        padding: EdgeInsets.zero,
        color: AppColors.gray200,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: const TextStyle(fontWeight: FontWeight.w700),
                  ),
                  action ?? const SizedBox()
                ],
              ),
            ),
            child,
          ],
        ));
  }
}
