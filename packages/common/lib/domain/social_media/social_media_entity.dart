import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class SocialMedia extends Equatable {
  final String name;
  final IconData icon;
  final String label;
  final String url;

  const SocialMedia({
    required this.name,
    required this.icon,
    required this.label,
    this.url = '',
  });

  @override
  List<Object?> get props => [name, icon, label, url];

  SocialMedia copyWith({
    String? name,
    IconData? icon,
    String? label,
    String? url,
  }) {
    return SocialMedia(
      name: name ?? this.name,
      icon: icon ?? this.icon,
      label: label ?? this.label,
      url: url ?? this.url,
    );
  }
}
