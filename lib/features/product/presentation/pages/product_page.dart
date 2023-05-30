import 'package:flutter/material.dart';
import 'package:lmi/design/constants/app_colors.dart';
import 'package:lmi/design/widgets/app_box.dart';
import 'package:lmi/design/widgets/app_tabview.dart';
import 'package:lmi/features/product/presentation/widgets/product_item_card.dart';

import '../../../../design/widgets/app_flat_button.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 100,
        ),
        AppTabView(
            firstTab: 'Bank',
            secondTab: 'Developer',
            body: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: ListView(
                  children: [
                    const SizedBox(
                      height: 16,
                    ),
                    Container(
                        decoration: BoxDecoration(
                            border: Border.all(),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5)),
                        child: const TextField(
                          decoration: InputDecoration(
                              hintText: 'Cari nama bank',
                              suffixIcon: Icon(Icons.search),
                              contentPadding:
                                  EdgeInsets.only(left: 16, top: 16)),
                        )),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                            child: AppFlatButton(
                                title: "Tambah",
                                icon: Icons.add,
                                color: AppColors.primary,
                                onTap: () {})),
                        const SizedBox(
                          width: 48,
                        ),
                        Expanded(
                            child: AppFlatButton(
                          title: "Sort",
                          icon: Icons.sort,
                          color: Colors.white,
                          onTap: () {},
                          contentColor: AppColors.gray,
                        )),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    AppBox(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "ALL",
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                            Icon(
                              Icons.keyboard_arrow_down_outlined,
                              color: AppColors.primary,
                            )
                          ],
                        )),
                    const SizedBox(
                      height: 16,
                    ),
                    SizedBox(
                      height: 400,
                      child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: 5,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return const ProductItemCard();
                          }),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                  ],
                ))),
      ],
    );
  }
}
