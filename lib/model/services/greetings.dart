String getGreeting() {
  final hour = DateTime.now().hour;
  // final username = GetUserName();
  final username = "Abdulrahman";

  if (hour >= 5 && hour < 12) {
    // animation = "assets/animations/morning_animation.json";
    // return S.of(context).morning;
    return "Good morning $username";
  } else if (hour >= 12 && hour < 17) {
    // animation = "assets/animations/morning_animation.json";
    // return S.of(context).afternoon;
    return "Good afternoon $username";
  } else if (hour >= 17 && hour < 21) {
    // animation = "assets/animations/night_animation.json";
    // return S.of(context).evening;
    return "Good evening $username";
  } else {
    // animation = "assets/animations/night_animation.json";
    // return S.of(context).night;
    return "Good night $username";
  }
}
