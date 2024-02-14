import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/dashboard/bloc/dashboard_bloc.dart';
import 'package:tonight/application/dashboard/models/dashboard_data_model.dart';
import 'package:tonight/application/dashboard/models/user_stories_with_interactions.dart';
import 'package:tonight/presentation/dashboard/dashboard_widgets/story_circle_avatar.dart';
import 'package:tonight/presentation/navigator/tonight_navigation_destinations.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';

class ChallengeStoriesRow extends StatelessWidget {
  const ChallengeStoriesRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocSelector<DashboardBloc, DashboardState, DashboardData>(
      selector: (state) => state.dashboardData,
      builder: (context, data) {
        return SizedBox(
          height: 120,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: data.otherUsersStories.length + 1,
            itemBuilder: (context, i) {
              if (i == 0) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: InkWell(
                    onTap: () async {
                      if (data.currentUserStories.isNotEmpty &&
                          data.currentUserStories.first.stories.isNotEmpty) {
                        final stories = await context
                            .pushRoute<List<UserStoriesWithInteractions>>(
                          ChallengeStoriesRoute(
                            userStories: data.currentUserStories,
                            initialStoryIndex: 0,
                            isCurrentUser: true,
                            currentUser: data.currentUser,
                          ),
                        );

                        if (stories != null && context.mounted) {
                          context.read<DashboardBloc>().add(
                                DashboardEvent.currentUserStoriesUpdated(
                                  stories,
                                ),
                              );
                        }
                        return;
                      }
                      context.tabsRouter.setActiveIndex(
                          TonightNavigationDestination.challenges.index);
                    },
                    child: StoryCircleAvatar(
                      username: data.currentUser.fold(
                        () => '',
                        (a) => a.username,
                      ),
                      userProfilePhotoUrl: data.currentUser.fold(
                        () => '',
                        (a) => a.profilePictureUrl,
                      ),
                      showAddStoryIcon: data.currentUserStories.isEmpty ||
                          data.currentUserStories.first.stories.isEmpty,
                      isCurrentUser: true,
                      unseen: data.currentUserStories.isEmpty
                          ? false
                          : data.currentUserStories.first.stories.any(
                              (s) => !s.seen,
                            ),
                    ),
                  ),
                );
              }
              final storyIndex = i - 1;
              final userStories = data.otherUsersStories[storyIndex];
              return InkWell(
                onTap: () async {
                  final stories = await context
                      .pushRoute<List<UserStoriesWithInteractions>>(
                    ChallengeStoriesRoute(
                      userStories: data.otherUsersStories,
                      initialStoryIndex: storyIndex,
                      isCurrentUser: false,
                      currentUser: data.currentUser,
                    ),
                  );

                  if (stories != null && context.mounted) {
                    context.read<DashboardBloc>().add(
                          DashboardEvent.otherUserStoriesUpdated(stories),
                        );
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: StoryCircleAvatar(
                    username: userStories.username,
                    userProfilePhotoUrl: userStories.userProfilePhotoUrl,
                    unseen: userStories.stories.any((s) => !s.seen),
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
