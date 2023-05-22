import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/chats/bloc/chats_bloc.dart';
import 'package:tonight/injection.dart';
import 'package:tonight/presentation/chats/widgets/chat_list_tile.dart';
import 'package:translations/translations.dart';

class ChatsPage extends StatelessWidget {
  const ChatsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<ChatsBloc>()..add(const ChatsEvent.chatsInitialized()),
      child: BlocBuilder<ChatsBloc, ChatsState>(
        builder: (context, state) {
          switch (state.status) {
            case CubitStatus.initial:
              return const SizedBox.shrink();
            case CubitStatus.loading:
              return const WaveLoadingIndicator();
            case CubitStatus.failure:
              return FailureInfo(
                retryCallback: () => context
                    .read<ChatsBloc>()
                    .add(const ChatsEvent.chatsInitialized()),
              );
            case CubitStatus.success:
              return Padding(
                padding: const EdgeInsets.all(12),
                child: state.chats.isEmpty
                    ? Center(
                        child: Text(
                          S().noChats,
                          style: context.titleSmall,
                        ),
                      )
                    : ListView.separated(
                        itemCount: state.chats.length,
                        separatorBuilder: (_, __) => const Divider(
                          height: 25,
                          thickness: .5,
                        ),
                        itemBuilder: (_, i) => ChatListTile(
                          chat: state.chats[i],
                        ),
                      ),
              );
          }
        },
      ),
    );
  }
}
