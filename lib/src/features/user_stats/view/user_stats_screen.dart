import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fortnite_app/src/features/user_stats/view_model/user_stats_provider.dart';

class UserStatsScreen extends ConsumerStatefulWidget {
  const UserStatsScreen({super.key});

  @override
  UserStatsScreenState createState() => UserStatsScreenState();
}

class UserStatsScreenState extends ConsumerState<UserStatsScreen> {
  late TextEditingController _textEditingController;

  void _retrieveFortniteShop() {
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        ref
            .read(userStatsProvider.notifier)
            .retrieveUserStats(userName: _textEditingController.text);
      },
    );
  }

  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    final provider = ref.watch(userStatsProvider);

    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        children: [
          TextField(
            controller: _textEditingController,
            decoration: InputDecoration(
              suffixIcon: IconButton(
                onPressed: _retrieveFortniteShop,
                icon: const Icon(Icons.search),
              ),
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(4),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: provider.when(
              data: (data) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(child: Image.asset('assets/images/icon.png')),
                    Text('Wins: ${data.wins}'),
                    Text('Kills: ${data.kills}'),
                    Text('Deaths: ${data.deaths}'),
                    Text('KD: ${data.kd}'),
                  ],
                );
              },
              error: (error, stack) {
                return Center(child: Text(error.toString()));
              },
              loading: () {
                return const Center(child: CircularProgressIndicator());
              },
            ),
          ),
        ],
      ),
    );
  }
}
