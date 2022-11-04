import 'package:flutter/material.dart' hide ErrorWidget;
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../util/widgets/error_widget.dart';
import '../view_model/fortnite_map_provider.dart';

class FortniteMapScreen extends ConsumerStatefulWidget {
  const FortniteMapScreen({super.key});

  @override
  FortniteMapScreenState createState() => FortniteMapScreenState();
}

class FortniteMapScreenState extends ConsumerState<FortniteMapScreen> {
  void _retrieveFortniteMap() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ref.read(fortniteMapProvider.notifier).retrieveFortniteMap();
    });
  }

  @override
  void initState() {
    super.initState();
    _retrieveFortniteMap();
  }

  @override
  Widget build(BuildContext context) {
    final provider = ref.watch(fortniteMapProvider);
    final size = MediaQuery.of(context).size;
    final appLocalizations = AppLocalizations.of(context);

    return Scaffold(
      appBar: AppBar(),
      body: InteractiveViewer(
        scaleEnabled: true,
        child: provider.when(
          data: (data) {
            final imageUrl = data.fortniteMapUrl;

            return imageUrl.isEmpty
                ? Container(
                    key: const Key('fortnite_map_container_widget'),
                  )
                : Image.network(
                    data.fortniteMapUrl,
                    key: const Key('fortnite_map_image_widget'),
                    height: size.height,
                    width: size.width,
                  );
          },
          error: (error, stack) {
            return ErrorWidget(
              key: const Key('fortnite_map_error_widget'),
              error: error,
            );
          },
          loading: () {
            return const Center(
              child: CircularProgressIndicator(
                key: Key('fortnite_map_loading_widget'),
              ),
            );
          },
        ),
      ),
    );
  }
}
