class StateManagementSampleRepository {
  Future<void> waitFewSecond() async {
    await Future<void>.delayed(const Duration(seconds: 2));
  }
}
