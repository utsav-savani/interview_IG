import 'package:flutter/material.dart';

/// Returns a widget that displays song title and artist information.
Widget buildSongInfo(String title, String artist) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      if (artist.isNotEmpty)
        Text(
          artist,
          style: TextStyle(
            color: Colors.grey.shade600,
            fontSize: 14,
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
    ],
  );
}
