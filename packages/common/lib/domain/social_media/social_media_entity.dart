import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class SocialMedia extends Equatable {
  final String name;
  final IconData icon;
  final String label;

  const SocialMedia({
    required this.name,
    required this.icon,
    required this.label,
  });

  @override
  List<Object?> get props => [name, icon, label];
}
