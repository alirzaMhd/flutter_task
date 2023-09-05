import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_task/shared/presentation/widget/widget.dart';

import '../../../../constants/constants.dart';

class ScreenHolder extends ConsumerWidget {
  const ScreenHolder({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // int pageIndex = ref.watch(ScreenHolderProvider.bottomBarProvider);
    return Scaffold(
      body: const IndexedStack(
        index: 0,
        children: UIConstants.bottomTabBarPages,
      ),
      bottomNavigationBar: BottomNavBar(
        onTap: (i) {},
        selectedPageIndex: 0,
      ),
    );
  }
}
