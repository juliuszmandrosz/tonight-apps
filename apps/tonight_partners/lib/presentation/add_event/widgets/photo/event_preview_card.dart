import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight_partners/application/add_event/add_event_cubit.dart';

class EventPreviewCard extends StatelessWidget {
  const EventPreviewCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddEventCubit, AddEventState>(
      builder: (context, state) {
        return Card(
          color: context.secondaryColor,
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          child: Column(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  state.eventPhoto.value == null
                      ? SizedBox(
                          height: 250,
                          child: Placeholder(
                            color: context.outlineColor,
                            strokeWidth: 5,
                          ),
                        )
                      : Container(
                          height: 250,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: Image.file(state.eventPhoto.value!).image,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                  Positioned(
                    bottom: 15,
                    right: 15,
                    left: 15,
                    child: Container(
                      decoration: BoxDecoration(
                        color: context.surfaceColor.withOpacity(0.9),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          state.eventName.value,
                          style: context.headline6,
                          textAlign: TextAlign.center,
                          softWrap: false,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
