import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ticketya/data/models/company.dart';

import '../../data/models/favorite.dart';

class FavoriteWidget extends StatelessWidget {
  final Favorite favorite;
  final Company company;

  const FavoriteWidget({
    super.key,
    required this.favorite,
    required this.company,
  });

  @override
  Widget build(BuildContext context) {
    // final favoriteProvider = Provider.of<FavoriteProvider>(context);
    return ListTile(
      leading: const CircleAvatar(
        maxRadius: 32,
        foregroundImage: AssetImage(
          'assets/onboarding/01.jpg',
        ),
      ),
      title: Text(
        company.companyName,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      subtitle: Text(
        'RUC: ${favorite.dateAdded}',
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      trailing: IconButton(
        onPressed: () {
          print('favoriteId');
        },
        // onPressed: () => favoriteProvider.delete(favorite.id!),
        icon: const Icon(Icons.favorite),
      ),
      onTap: () => context.go('/show/${company.id}'),
    );
  }
}
