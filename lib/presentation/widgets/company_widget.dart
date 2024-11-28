import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ticketya/data/models/company.dart';

import '../../logic/providers/company_provider.dart';

class CompanyWidget extends StatelessWidget {
  final Company company;

  const CompanyWidget({super.key, required this.company});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CompanyProvider>(context);

    return Card.outlined(
      color: Colors.transparent,
      elevation: 0,
      borderOnForeground: true,
      clipBehavior: Clip.hardEdge,
      margin: EdgeInsets.zero,
      child: InkWell(
        onTap: () {
          provider.toogleFavorite(company.id);
        },
        // onTap: () => context.go('/show/${agency.id}'),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
              child: Image.asset(
                'assets/onboarding/01.jpg',
                height: 110,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    company.companyName,
                    style: Theme.of(context).textTheme.titleSmall,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      Text(
                        company.location!,
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      Spacer(),
                      Icon(provider.isFavorite(company.id) ? Icons.favorite : Icons.favorite_outline),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
