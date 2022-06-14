extension DurationEX on Duration {

  // return time output as string  => "20:30"
 String get toTimeAsString {
    String twoDigits(int n) => n.toString().padLeft(2,'0');
    String twoDigitsMinutes = twoDigits(inMinutes.remainder(60));
    String result = "${twoDigits(inHours)}:$twoDigitsMinutes";
    return result;
  }
}
