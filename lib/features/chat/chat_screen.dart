import 'package:arzly/data/repositories/listing_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ChatScreen extends ConsumerWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.pink,
      body: Center(
        child: TextButton(
          child: Text('hello from chatscreen'),
          onPressed: () async {
            await ref.read(listingRepoProvider.notifier).fetchAll();
          },
        ),
      ),
    );
  }
}
