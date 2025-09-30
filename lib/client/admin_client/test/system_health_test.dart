import 'package:test/test.dart';
import 'package:openapi/openapi.dart';

// tests for SystemHealth
void main() {
  final instance = SystemHealthBuilder();
  // TODO add properties to the builder and call build()

  group(SystemHealth, () {
    // Overall system health status
    // String status
    test('to test the property `status`', () async {
      // TODO
    });

    // System uptime in seconds
    // int uptime
    test('to test the property `uptime`', () async {
      // TODO
    });

    // SystemHealthCpu cpu
    test('to test the property `cpu`', () async {
      // TODO
    });

    // SystemHealthMemory memory
    test('to test the property `memory`', () async {
      // TODO
    });

    // SystemHealthDisk disk
    test('to test the property `disk`', () async {
      // TODO
    });

    // BuiltList<SystemHealthServicesInner> services
    test('to test the property `services`', () async {
      // TODO
    });

  });
}
