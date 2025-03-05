// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'venue_details_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$venueDetailHash() => r'eb8455623bf153f15c34a9efd67f887660634cf9';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [venueDetail].
@ProviderFor(venueDetail)
const venueDetailProvider = VenueDetailFamily();

/// See also [venueDetail].
class VenueDetailFamily extends Family<AsyncValue<Venue?>> {
  /// See also [venueDetail].
  const VenueDetailFamily();

  /// See also [venueDetail].
  VenueDetailProvider call(
    int id,
  ) {
    return VenueDetailProvider(
      id,
    );
  }

  @override
  VenueDetailProvider getProviderOverride(
    covariant VenueDetailProvider provider,
  ) {
    return call(
      provider.id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'venueDetailProvider';
}

/// See also [venueDetail].
class VenueDetailProvider extends AutoDisposeFutureProvider<Venue?> {
  /// See also [venueDetail].
  VenueDetailProvider(
    int id,
  ) : this._internal(
          (ref) => venueDetail(
            ref as VenueDetailRef,
            id,
          ),
          from: venueDetailProvider,
          name: r'venueDetailProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$venueDetailHash,
          dependencies: VenueDetailFamily._dependencies,
          allTransitiveDependencies:
              VenueDetailFamily._allTransitiveDependencies,
          id: id,
        );

  VenueDetailProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final int id;

  @override
  Override overrideWith(
    FutureOr<Venue?> Function(VenueDetailRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: VenueDetailProvider._internal(
        (ref) => create(ref as VenueDetailRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Venue?> createElement() {
    return _VenueDetailProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is VenueDetailProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin VenueDetailRef on AutoDisposeFutureProviderRef<Venue?> {
  /// The parameter `id` of this provider.
  int get id;
}

class _VenueDetailProviderElement
    extends AutoDisposeFutureProviderElement<Venue?> with VenueDetailRef {
  _VenueDetailProviderElement(super.provider);

  @override
  int get id => (origin as VenueDetailProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
