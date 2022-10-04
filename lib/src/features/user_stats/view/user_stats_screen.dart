import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fortnite_app/src/features/user_stats/view_model/user_stats_provider.dart';

class UserStatsScreen extends ConsumerStatefulWidget {
  const UserStatsScreen({super.key});

  @override
  UserStatsScreenState createState() => UserStatsScreenState();
}

class UserStatsScreenState extends ConsumerState<UserStatsScreen> {
  void _retrieveFortniteShop() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ref.read(userStatsProvider.notifier).retrieveUserStats(
            userName: 'vikingbonsai',
          );
    });
  }

  @override
  void initState() {
    super.initState();
    _retrieveFortniteShop();
  }

  @override
  Widget build(BuildContext context) {
    final provider = ref.watch(userStatsProvider);

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: provider.when(
          data: (data) {
            return Text(data.toString());
          },
          error: (error, stack) {
            return Text(error.toString());
          },
          loading: () {
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
