import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

final Map<String, IconData> iconMap = {
  'fitness_center': Icons.fitness_center,
  'psychology': Icons.psychology,
  'track_changes': Icons.track_changes,
  'restaurant': Icons.restaurant,
  'login': Icons.login,
  'arrow_back': Icons.arrow_back,
  'add': Icons.add,
  'trending_down': Icons.trending_down,
  'directions_run': Icons.directions_run,
  'sports_gymnastics': Icons.sports_gymnastics,
  'self_improvement': Icons.self_improvement,
  'favorite': Icons.favorite,
  'spa': Icons.spa,
  'emojii_events': Icons.emoji_events,
  'chat': Icons.chat,
  'music_note': Icons.music_note,
  'sports_mma': Icons.sports_mma,
  'accessibility_new': Icons.accessibility_new,
  'nordic_walking': Icons.nordic_walking,
  'sports_kabaddi': Icons.sports_kabaddi,
  'directions_bike': Icons.directions_bike,
  'terrain': Icons.terrain,
  'pool': Icons.pool,
  'surfing': Icons.surfing,
  'downhill_skiing': Icons.downhill_skiing,
  'hiking': Icons.hiking,
  'landscape': Icons.landscape,
  'do_not_disturb_on': Icons.do_not_disturb_on,
  'straighten': Icons.straighten,
  'horizontal_rule': Icons.horizontal_rule,
  'crop_landscape': Icons.crop_landscape,
  'directions_walk': Icons.directions_walk,
  'calendar_today': Icons.calendar_today,
  'schedule': Icons.schedule,
  'light_bulb': Icons.lightbulb,
};

IconData getIconByName(String name) {
  return iconMap[name] ?? Icons.help_outline;
}
