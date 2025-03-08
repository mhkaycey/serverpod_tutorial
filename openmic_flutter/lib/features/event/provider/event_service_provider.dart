import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:openmic_flutter/core/providers/client_provider.dart';
import 'package:openmic_flutter/features/event/services/event_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'event_service_provider.g.dart';

@riverpod
EventService eventService(Ref ref) => EventService(
      ref.read(clientProvider),
    );
