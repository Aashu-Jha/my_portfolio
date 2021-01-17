import 'package:flutter/material.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

const kPrimaryColor = Color(0xFF035AA6);

const kDesktopNavBarTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 20.0,
  fontWeight: FontWeight.w600,
);

const kMobileNavBarTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 15.0,
);

const kSecondaryTextStyle = TextStyle(
  wordSpacing: 3.0,
  letterSpacing: 1,
  fontSize: 16.0,
  fontFamily: "Cabin",
  color: Colors.black87,
);

const kDefaultPadding = 20.0;

final kDefaultShadow = BoxShadow(
  offset: Offset(0, 50),
  blurRadius: 50,
  color: Color(0xFF0700B1).withOpacity(0.15),
);

final kDefaultCardShadow = BoxShadow(
  offset: Offset(0, 20),
  blurRadius: 50,
  color: Colors.black.withOpacity(0.1),
);

// #009CB4

void kLaunchGithubURL() {
  html.window.open('https://github.com/Aashu-Jha', 'github');
}
void kLaunchLinkedInURL() {
  html.window.open('https://www.linkedin.com/in/aashish-jha-8980001b4/', 'linkedIn');
}
void kLaunchMailURL() {
  html.window.open('https://github.com/Aashu-Jha', 'github');
}
void kLaunchTelegramURL() {
  html.window.open('https://t.me/aashu_jha', 'telegram');
}
void kLaunchLeetCodeURL() {
  html.window.open('https://leetcode.com/Night-bird/', 'leetCode');
}

void kLaunchFlashChat() {
  html.window.open('https://github.com/Aashu-Jha/flash_chat_flutter', 'flashChat');
}
void kLaunchClima() {
  html.window.open('https://github.com/Aashu-Jha/Weather-App', 'Clima');
}
void kLaunchBitCoin() {
  html.window.open('https://github.com/Aashu-Jha/CryptoCurrency-Converter', 'BitCoin');
}
void kLaunchTodo() {
  html.window.open('https://github.com/Aashu-Jha/todo_flutter', 'todo');
}

