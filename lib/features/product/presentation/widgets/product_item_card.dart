import 'package:flutter/material.dart';

import '../../../../design/constants/app_colors.dart';
import '../../../../design/constants/assets.dart';

class ProductItemCard extends StatelessWidget {
  const ProductItemCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 280,
      child: Card(
        elevation: 8,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(Assets.mandiri),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        const Text('Rating'),
                        const SizedBox(
                          height: 2,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.star,
                              color: AppColors.primary,
                              size: 18,
                            ),
                            Icon(
                              Icons.star,
                              color: AppColors.primary,
                              size: 18,
                            ),
                            Icon(
                              Icons.star,
                              color: AppColors.primary,
                              size: 18,
                            ),
                            Icon(
                              Icons.star,
                              color: AppColors.gray200,
                              size: 18,
                            ),
                            Icon(
                              Icons.star,
                              color: AppColors.gray200,
                              size: 18,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        const Text(
                          '14 Reviews',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                  Container(height: 40, width: 1, color: Colors.black,),
                  Expanded(
                    child: Column(
                      children: const [
                        Text('Rating'),
                        SizedBox(
                          height: 2,
                        ),
                        Text('220'),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          '14 Reviews',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              RichText(
                text: const TextSpan(
                    text: 'Mandiri ',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: AppColors.gray,
                        fontSize: 12),
                    children: <TextSpan>[
                      TextSpan(
                        text: "Bunga Special Tengah Imlek 2023",
                        style: TextStyle(
                            color: AppColors.primary,
                            fontWeight: FontWeight.w600,
                            fontSize: 12),
                      )
                    ]),
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: _info(
                        title: "Fix Rate (Year): 3.88",
                        icon: Icons.insert_chart_outlined),
                  ),
                  Expanded(
                    child: _info(
                        title: "Jaminan: Ruko, Rukan, Rumah, Apartemen",
                        icon: Icons.shield_outlined),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: _info(
                        title: "Max Tenor: 12",
                        icon: Icons.access_time_outlined),
                  ),
                  Expanded(
                    child: _info(
                        title: "Target: Karyawan, Pengusaha",
                        icon: Icons.person_2_outlined),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: _info(
                        title: "Loan to Value: 1",
                        icon: Icons.av_timer),
                  ),
                  Expanded(
                    child: _info(
                        title: "Komisi: 1",
                        icon: Icons.monetization_on_outlined),
                  ),
                ],
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      elevation: 4
                  ),
                  onPressed: (){}, child: const Text("Detail", style: TextStyle(color: AppColors.primary),))
            ],
          ),
        ),
      ),
    );
  }

  Widget _info({required String title, required IconData icon}) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            icon,
            size: 12,
            color: AppColors.gray,
          ),
          const SizedBox(
            width: 4,
          ),
          Expanded(
            child: Text(
              title,
              style: const TextStyle(color: AppColors.gray, fontSize: 12),
              maxLines: 2,
            ),
          )
        ],
      ),
    );
  }
}
