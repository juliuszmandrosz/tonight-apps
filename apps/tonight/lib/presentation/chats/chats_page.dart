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
          getIt<ChatsBloc>()..add(const ChatsEvent.chatsFetched()),
      child: BlocBuilder<ChatsBloc, ChatsState>(
        builder: (context, state) {
          switch (state.fetchChatsStatus) {
            case CubitStatus.initial:
              return const SizedBox.shrink();
            case CubitStatus.loading:
              return const WaveLoadingIndicator();
            case CubitStatus.failure:
              return FailureInfo(
                retryCallback: () => context
                    .read<ChatsBloc>()
                    .add(const ChatsEvent.chatsFetched()),
              );
            case CubitStatus.success:
              return Padding(
                padding: const EdgeInsets.all(12),
                child: state.chats.isEmpty
                    ? Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              S().noChats,
                              style: context.titleSmall,
                            ),
                            const SizedBox(height: 20),
                            OutlinedButton(
                              onPressed: () => context
                                  .read<ChatsBloc>()
                                  .add(const ChatsEvent.chatsFetched()),
                              child: Text(S().refresh),
                            ),
                          ],
                        ),
                      )
                    : RefreshIndicator(
                        onRefresh: () async => context
                            .read<ChatsBloc>()
                            .add(const ChatsEvent.chatsFetched()),
                        child: InfiniteList(
                          isLoading: state.fetchNextPageStatus.isLoading(),
                          hasReachedMax: state.hasReachedMax,
                          hasError: state.fetchNextPageStatus.isFailure(),
                          itemCount: state.chats.length,
                          separatorBuilder: (_, __) => const Divider(
                            height: 25,
                            thickness: .5,
                          ),
                          onFetchData: () => context
                              .read<ChatsBloc>()
                              .add(const ChatsEvent.nextPageFetched()),
                          itemBuilder: (_, i) => ChatListTile(
                            chat: state.chats[i],
                          ),
                        ),
                      ),
              );
          }
        },
      ),
    );
  }
}
