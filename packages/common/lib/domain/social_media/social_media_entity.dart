import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class SocialMedia extends Equatable {
  final IconData icon;
  final String label;

  const SocialMedia({
    required this.icon,
    required this.label,
  });

  @override
  List<Object?> get props => [icon, label];
}
