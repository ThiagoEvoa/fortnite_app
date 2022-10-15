import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fortnite_app/src/features/fortnite_shop/view_model/fortnite_shop_provider.dart';

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
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
            children: [
              Text(data.daily.name!),
              Column(
                children: data.daily.entries
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
                              ),
                            )
                            .toList(),
                      ),
                    )
                    .toList(),
              )
            ],
          );
        },
        error: (error, stack) {
          return Text(error.toString());
        },
        loading: () {
          return const CircularProgressIndicator();
        },
      ),
    );
  }
}
