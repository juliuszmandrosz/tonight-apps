import 'dart:async';

import 'package:account_settings/account_settings.dart';
import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:dartz/dartz.dart' as dartz;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight/application/challenge_story/cubit/challenge_story_cubit.dart';
import 'package:tonight/application/core/extensions/bloc_extensions.dart';
import 'package:tonight/application/dashboard/models/challenge_story_with_interactions_model.dart';
import 'package:tonight/application/dashboard/models/user_stories_with_interactions.dart';
import 'package:tonight/domain/participants/participant_entity.dart';
import 'package:tonight/injection.dart';
import 'package:tonight/presentation/core/tonight_app_bar.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';
import 'package:tonight/presentation/utils/show_sign_in_dialog.dart';
import 'package:video_player/video_player.dart';

// class ProgressBar extends StatefulWidget {
//   final Duration duration;
//   final bool isPaused;
//   final ValueNotifier<bool> restartNotifier;
//
//   const ProgressBar({
//     Key? key,
//     required this.duration,
//     this.isPaused = false,
//     required this.restartNotifier,
//   }) : super(key: key);
//
//   @override
//   _ProgressBarState createState() => _ProgressBarState();
// }
//
// class _ProgressBarState extends State<ProgressBar>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _controller;
//
//   @override
//   void initState() {
//     super.initState();
//     _initializeController();
//     widget.restartNotifier.addListener(_restartProgress);
//   }
//
//   void _initializeController() {
//     _controller = AnimationController(
//       duration: widget.duration,
//       vsync: this,
//     )..forward();
//
//     if (widget.isPaused) {
//       _controller.stop();
//     }
//   }
//
//   void _restartProgress() {
//     if (widget.restartNotifier.value) {
//       _controller.reset();
//       _controller.forward();
//       widget.restartNotifier.value = false;
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return AnimatedBuilder(
//       animation: _controller,
//       builder: (context, child) =>
//           LinearProgressIndicator(value: _controller.value),
//     );
//   }
//
//   @override
//   void dispose() {
//     widget.restartNotifier.removeListener(_restartProgress);
//     _controller.dispose();
//     super.dispose();
//   }
// }

class ChallengeStoriesPage extends StatefulWidget {
  final List<UserStoriesWithInteractions> userStories;
  final int initialStoryIndex;
  final bool isCurrentUser;
  final dartz.Option<UserAccount> currentUser;

  const ChallengeStoriesPage({
    required this.userStories,
    required this.initialStoryIndex,
    required this.isCurrentUser,
    required this.currentUser,
    Key? key,
  }) : super(key: key);

  @override
  State<ChallengeStoriesPage> createState() => _ChallengeStoriesPageState();
}

class _ChallengeStoriesPageState extends State<ChallengeStoriesPage> {
  var _currentUserIndex = 0;
  var _currentStoryIndex = 0;
  var hasPopped = false;

  @override
  void initState() {
    super.initState();
    _currentUserIndex = widget.initialStoryIndex;
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<ChallengeStoryCubit>()..initData(widget.userStories),
      child: BlocConsumer<ChallengeStoryCubit, ChallengeStoryState>(
        listener: (context, state) {
          state.snackbarMessage.fold(
            () {},
            (msg) => context.showSnackbarMessage(msg),
          );

          if (state.deleteStoryStatus.isSuccess() && !hasPopped) {
            hasPopped = true;
            context.popRoute<List<UserStoriesWithInteractions>>(
              state.userStoriesWithInteractions,
            );
          }
        },
        builder: (context, state) {
          final user =
              (_currentUserIndex < state.userStoriesWithInteractions.length)
                  ? state.userStoriesWithInteractions[_currentUserIndex]
                  : null;

          final story =
              (user != null && _currentStoryIndex < user.stories.length)
                  ? user.stories[_currentStoryIndex]
                  : null;

          if (user == null || story == null) {
            return const SizedBox.shrink();
          }
          return WillPopScope(
            onWillPop: () async {
              if (!hasPopped) {
                hasPopped = true;
                Navigator.pop<List<UserStoriesWithInteractions>>(
                  context,
                  state.userStoriesWithInteractions,
                );
                return true;
              }
              return true;
            },
            child: SafeArea(
              child: Scaffold(
                appBar: TonightAppBar(
                  title: story.challengeTitle,
                  backgroundColor: context.backgroundColor,
                ),
                body: GestureDetector(
                  onHorizontalDragUpdate: (details) {
                    if (details.primaryDelta! > 0) {
                      _previousStory();
                    } else if (details.primaryDelta! < 0) {
                      _nextStory();
                    }
                  },
                  onTapUp: (details) {
                    if (details.localPosition.dx <
                        MediaQuery.of(context).size.width / 2) {
                      _previousStory();
                    } else {
                      _nextStory();
                    }
                  },
                  child: StoryWidget(
                    story: story,
                    onStoryCompleted: _onStoryCompleted,
                    username: user.username,
                    userId: user.userId,
                    userProfilePictureUrl: user.userProfilePhotoUrl,
                    currentUser: widget.currentUser,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  void _onStoryCompleted() {
    if (_currentStoryIndex <
        widget.userStories[_currentUserIndex].stories.length - 1) {
      setState(() {
        _currentStoryIndex++;
      });
    } else if (_currentUserIndex < widget.userStories.length - 1) {
      setState(() {
        _currentUserIndex++;
        _currentStoryIndex = 0;
      });
    } else {
      context.popRoute();
    }
  }

  void _nextStory() {
    if (_currentStoryIndex <
        widget.userStories[_currentUserIndex].stories.length - 1) {
      setState(() {
        _currentStoryIndex++;
      });
    } else if (_currentUserIndex < widget.userStories.length - 1) {
      setState(() {
        _currentUserIndex++;
        _currentStoryIndex = 0;
      });
    } else {
      Navigator.pop(context);
    }
  }

  void _previousStory() {
    if (_currentStoryIndex > 0) {
      setState(() {
        _currentStoryIndex--;
      });
    } else if (_currentUserIndex > 0) {
      setState(() {
        _currentUserIndex--;
        _currentStoryIndex =
            widget.userStories[_currentUserIndex].stories.length - 1;
      });
    }
  }
}

class StoryWidget extends StatefulWidget {
  final ChallengeStoryWithInteractions story;
  final String userId;
  final String username;
  final String userProfilePictureUrl;
  final Function onStoryCompleted;
  final dartz.Option<UserAccount> currentUser;

  const StoryWidget({
    Key? key,
    required this.story,
    required this.userId,
    required this.username,
    required this.userProfilePictureUrl,
    required this.onStoryCompleted,
    required this.currentUser,
  }) : super(key: key);

  @override
  State<StoryWidget> createState() => _StoryWidgetState();
}

class _StoryWidgetState extends State<StoryWidget> {
  VideoPlayerController? _controller;
  var _isLoading = true;

  // final _restartNotifier = ValueNotifier<bool>(false);
  Timer? _imageTimer;

  @override
  void initState() {
    super.initState();
    _initializeStory();
  }

  _initializeStory() async {
    setState(() {
      _isLoading = true;
    });

    if (!widget.story.seen) {
      await context
          .read<ChallengeStoryCubit>()
          .markStoryAsSeen(widget.userId, widget.story);
    }

    if (widget.story.isVideo) {
      _controller =
          VideoPlayerController.networkUrl(Uri.parse(widget.story.storyUrl));
      await _controller!.initialize();
      await _controller!.play();
      _controller!.addListener(_checkVideoCompletion);
      // _controller!.addListener(_videoProgressListener);
      setState(() {
        _isLoading = false;
      });
    } else {
      setState(() {
        _isLoading = false;
      });
      _startImageTimer();
    }
  }

  _startImageTimer() {
    _imageTimer?.cancel();
    _imageTimer = Timer(const Duration(seconds: 5), () {
      if (mounted) {
        widget.onStoryCompleted();
      }
    });
    // _restartNotifier.value = true;
  }

  void _pauseStory() {
    if (widget.story.isVideo) {
      if (_controller != null && _controller!.value.isPlaying) {
        _controller!.pause();
      }
    } else {
      _imageTimer?.cancel();
    }

    // _restartNotifier.value = true;
  }

  void _resumeStory() {
    if (widget.story.isVideo) {
      if (_controller != null && !_controller!.value.isPlaying) {
        _controller!.play();
      }
    } else {
      _startImageTimer();
    }

    // _restartNotifier.value = false;
  }

  @override
  void didUpdateWidget(StoryWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    _imageTimer?.cancel();
    if (widget.story.storyUrl != oldWidget.story.storyUrl) {
      if (_controller != null) {
        _controller!.removeListener(_checkVideoCompletion);
        _controller!.dispose();
        _controller = null;
      }
      _initializeStory();
    }
  }

  _checkVideoCompletion() {
    if (_controller!.value.position == _controller!.value.duration) {
      // _restartNotifier.value = true;
      widget.onStoryCompleted();
    }
  }

  // void _videoProgressListener() {
  //   if (_controller!.value.position == _controller!.value.duration) {
  //     // _restartNotifier.value = true;
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChallengeStoryCubit, ChallengeStoryState>(
      buildWhen: (p, c) => p.deleteStoryStatus != c.deleteStoryStatus,
      builder: (context, state) {
        if (_isLoading || state.deleteStoryStatus.isLoading()) {
          return const WaveLoadingIndicator();
        }
        return GestureDetector(
          onLongPress: _pauseStory,
          onLongPressEnd: (_) => _resumeStory(),
          child: Column(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    AspectRatio(
                      aspectRatio: 9 / 16,
                      child: widget.story.isVideo
                          ? widget.story.isSelfie
                              ? TransformHorizontally(
                                  child: VideoPlayer(_controller!))
                              : VideoPlayer(_controller!)
                          : NetworkPhoto(
                              photoUrl: widget.story.storyUrl,
                              loaderSize: 20,
                              loaderWidget: const WaveLoadingIndicator(),
                            ),
                    ),
                    Positioned(
                      left: 12,
                      top: 16,
                      child: InkWell(
                        onTap: () async {
                          _pauseStory();
                          await context.pushRoute(
                            UserDetailsRoute(userId: widget.userId),
                          );
                          _resumeStory();
                        },
                        child: Row(
                          children: [
                            ProfilePictureContainer(
                              imageSize: 30,
                              profilePictureUrl: widget.userProfilePictureUrl,
                              username: widget.username,
                              textStyle: context.titleSmall,
                              backgroundColor: context.primaryColor,
                              textColor: Colors.white,
                            ),
                            const SizedBox(width: 8),
                            Text(
                              widget.username,
                              style: context.titleSmall,
                            ),
                          ],
                        ),
                      ),
                    ),
                    if (widget.userId == context.readAuthCubit.currentUserId)
                      Positioned(
                        bottom: 40,
                        right: 5,
                        child: IconButton(
                          onPressed: () async {
                            _pauseStory();
                            final result =
                                await context.showDeleteConfirmationDialog();
                            if (result == true && context.mounted) {
                              await context
                                  .read<ChallengeStoryCubit>()
                                  .deleteStory(
                                    widget.story.id,
                                    widget.story.storyUrl,
                                  );
                              return;
                            }
                            _resumeStory();
                          },
                          icon: const FaIcon(
                            FontAwesomeIcons.trash,
                            size: 28,
                          ),
                        ),
                      ),
                    Positioned(
                      bottom: 100,
                      right: 5,
                      child: Column(
                        children: [
                          IconButton(
                            onPressed: () async {
                              if (context.readAuthCubit
                                  .checkIfUserIsAnonymous()) {
                                _pauseStory();
                                await showSignInDialog(context);
                                _resumeStory();
                                return;
                              }
                              _pauseStory();
                              await context.pushRoute(
                                StoryCommentsRoute(
                                  storyOwnerId: widget.userId,
                                  storyId: widget.story.id,
                                  currentUser: widget.currentUser.fold(
                                    () => const Participant(
                                      userId: '',
                                      username: '',
                                    ),
                                    (u) => Participant(
                                      userId: u.id,
                                      username: u.username,
                                      profilePictureUrl: u.profilePictureUrl,
                                    ),
                                  ),
                                  blocContext: context,
                                ),
                              );
                              _resumeStory();
                            },
                            icon: const FaIcon(
                              FontAwesomeIcons.solidComment,
                              size: 28,
                            ),
                          ),
                          Text(widget.story.commentsCount.toString()),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 175,
                      right: 5,
                      child: Column(
                        children: [
                          IconButton(
                            onPressed: () async {
                              if (context.readAuthCubit
                                  .checkIfUserIsAnonymous()) {
                                _pauseStory();
                                await showSignInDialog(context);
                                _resumeStory();
                                return;
                              }
                              widget.story.liked
                                  ? context
                                      .read<ChallengeStoryCubit>()
                                      .unlikeStory(widget.userId, widget.story)
                                  : context
                                      .read<ChallengeStoryCubit>()
                                      .likeStory(widget.userId, widget.story);
                            },
                            icon: widget.story.liked
                                ? const FaIcon(
                                    FontAwesomeIcons.solidHeart,
                                    size: 28,
                                  )
                                : const FaIcon(
                                    FontAwesomeIcons.heart,
                                    size: 28,
                                  ),
                          ),
                          Text(widget.story.likesCount.toString()),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    _imageTimer?.cancel();
    if (_controller != null) {
      _controller!.removeListener(_checkVideoCompletion);
      // _controller!.removeListener(_videoProgressListener);
      _controller!.dispose();
    }
  }
}
