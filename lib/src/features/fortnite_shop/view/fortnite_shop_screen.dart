import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fortnite_app/src/features/fortnite_shop/view_model/fortnite_shop_provider.dart';

import '../model/model.dart';

class FortniteShopScreen extends ConsumerStatefulWidget {
  const FortniteShopScreen({super.key});

  @override
  FortniteShopScreenState createState() => FortniteShopScreenState();
}

class FortniteShopScreenState extends ConsumerState<FortniteShopScreen> {
  void _retrieveFortniteShop() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ref.read(fortniteShopProvider.notifier).retrieveFortniteShop();
    });
  }

  Future<void> _showDialog(Item item) async {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          key: const Key('fortnite_shop_dialod_widget'),
          title: Text(item.name),
          content: Image.network(
            item.images.featured ?? item.images.icon!,
          ),
        );
      },
    );
  }

  @override
  void initState() {
    super.initState();
    _retrieveFortniteShop();
  }

  @override
  Widget build(BuildContext context) {
    final provider = ref.watch(fortniteShopProvider);

    return Scaffold(
      appBar: AppBar(),
      body: provider.when(
        data: (data) {
          return ListView(
            key: const Key('fortnite_shop_listview_widget'),
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
            children: [
              Text(data.daily.name!),
              _mountSection(data.daily.entries),
              Text(data.featured.name!),
              _mountSection(data.featured.entries),
              Text(data.specialFeatured.name ?? 'SPECIAL FEATURED'),
              _mountSection(data.specialFeatured.entries),
            ],
          );
        },
        error: (error, stack) {
          return Text(
            error.toString(),
            key: const Key('fortnite_shop_error_widget'),
          );
        },
        loading: () {
          return const Center(
            child: CircularProgressIndicator(
              key: Key('fortnite_shop_loading_widget'),
            ),
          );
        },
      ),
    );
  }

  Column _mountSection(List<Entry> entries) {
    return Column(
      children: entries
          .map(
            (entry) => Column(
              children: entry.items
                  .map(
                    (item) => ListTile(
                      contentPadding: const EdgeInsets.all(1),
                      leading: CircleAvatar(
                        child: Image.network(
                          item.images.featured ?? item.images.icon!,
                        ),
                      ),
                      title: Text(item.name),
                      onTap: () => _showDialog(item),
                    ),
                  )
                  .toList(),
            ),
          )
          .toList(),
    );
  }
}
