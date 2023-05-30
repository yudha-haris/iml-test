import 'package:flutter/material.dart';
import 'package:lmi/design/constants/app_colors.dart';
import 'package:lmi/design/widgets/app_box.dart';
import 'package:lmi/design/widgets/app_tabview.dart';
import 'package:lmi/features/contact/presentation/pages/detail_contact_page.dart';

class ContactsPage extends StatelessWidget {
  const ContactsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 100,),
        AppTabView(
            firstTab: 'My Contact',
            secondTab: 'Other Contact',
            body: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: ListView(
                  children: [
                    const SizedBox(height: 16,),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(),
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5)
                              ),
                              child: const TextField(
                                decoration: InputDecoration(
                                    hintText: 'Cari berdasarkan nama',
                                    suffixIcon: Icon(Icons.search),
                                    contentPadding: EdgeInsets.only(left: 16, top: 16)
                                ),
                              )),
                        ),
                        const SizedBox(width: 16,),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(),
                              color: AppColors.primary,
                              borderRadius: BorderRadius.circular(5)
                          ),
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                elevation: 0,
                                backgroundColor: AppColors.primary,
                              ),
                              onPressed: (){},
                              child: const Text('Tambah',)),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12,),
                    ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: 5,
                        itemBuilder: (context, index){

                          return GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const DetailContactPage()));
                            },
                            child: AppBox(
                                margin: const EdgeInsets.only(bottom: 12),
                                child: Row(
                                  children: [
                                    Container(
                                      decoration: const BoxDecoration(
                                          color: AppColors.navy,
                                          shape: BoxShape.circle
                                      ),
                                      padding: const EdgeInsets.all(16),
                                      child: const Text('DA', style: TextStyle(fontSize: 20, color: Colors.white),),
                                    ),
                                    const SizedBox(width: 16,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: const [
                                        Text("Dea Ananda", style: TextStyle(fontWeight: FontWeight.w700),),
                                        Text("Perempuan", style: TextStyle(fontSize: 12, color: AppColors.gray),),
                                        Text("Karyawan | -", style: TextStyle(fontSize: 12, color: AppColors.gray),),
                                        Text("dea.ananda@gmail.com", style: TextStyle(fontSize: 12, color: AppColors.gray),),
                                        Text("6281282366176", style: TextStyle(fontSize: 12, color: AppColors.gray),),
                                      ],
                                    )
                                  ],
                                )),
                          );
                        })
                  ],
                )
            )),
      ],
    );
  }
}
