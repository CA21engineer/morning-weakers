extension EnumString<T> on T {
  String getEnumString() {
    return toString().split('.')[1];
  }
}
