import 'package:flutter/material.dart';

class ThemeLight {
  ThemeData obter() {
    return ThemeData.light().copyWith(
      textTheme: const TextTheme(
        titleSmall: TextStyle(
          color: Colors.black,
          fontSize: 15,
        ),
        titleMedium: TextStyle(
          color: Colors.black,
          fontSize: 16,
        ),
        titleLarge: TextStyle(
          color: Colors.black,
          fontSize: 17,
        ),
        labelSmall: TextStyle(
          color: Colors.black,
          fontSize: 15,
        ),
        labelMedium: TextStyle(
          color: Colors.black,
          fontSize: 17,
        ),
        labelLarge: TextStyle(
          color: Colors.black,
          fontSize: 19,
        ),
        bodySmall: TextStyle(
          color: Colors.black,
          fontSize: 15,
        ),
        bodyMedium: TextStyle(
          color: Colors.black,
          fontSize: 17,
        ),
        bodyLarge: TextStyle(
          color: Colors.black,
          fontSize: 19,
        ),
        displaySmall: TextStyle(
          color: Colors.black,
          fontSize: 15,
        ),
        displayMedium: TextStyle(
          color: Colors.black,
          fontSize: 17,
        ),
        displayLarge: TextStyle(
          color: Colors.black,
          fontSize: 19,
        ),
        headlineSmall: TextStyle(
          color: Colors.black,
          fontSize: 15,
        ),
        headlineMedium: TextStyle(
          color: Colors.black,
          fontSize: 17,
        ),
        headlineLarge: TextStyle(
          color: Colors.black,
          fontSize: 19,
          fontWeight: FontWeight.bold,
        ),
      ),
      colorScheme: const ColorScheme.light(
        background: Colors.white,
        primary: Color(0xFF0F547D),
      ),
      inputDecorationTheme: InputDecorationTheme(
        fillColor: Colors.white,
        filled: true,
        isDense: true,
        counterStyle: const TextStyle(
          color: Colors.black,
          fontSize: 15,
        ),
        labelStyle: const TextStyle(
          color: Colors.black,
          fontSize: 15,
        ),
        hintStyle: const TextStyle(
          color: Colors.grey,
          fontSize: 15,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(width: 1, color: Colors.grey),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(width: 1, color: Colors.grey.withOpacity(0.7)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            width: 1.5,
            color: Colors.black26,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      textSelectionTheme: const TextSelectionThemeData(
        cursorColor: Colors.black26,
      ),
    );
  }
}

class ThemeDark {
  ThemeData obter() {
    return ThemeData.dark().copyWith(
      textTheme: const TextTheme(
        titleSmall: TextStyle(
          color: Colors.white,
          fontSize: 15,
        ),
        titleMedium: TextStyle(
          color: Colors.white,
          fontSize: 16,
        ),
        titleLarge: TextStyle(
          color: Colors.white,
          fontSize: 17,
        ),
        labelSmall: TextStyle(
          color: Colors.white,
          fontSize: 15,
        ),
        labelMedium: TextStyle(
          color: Colors.white,
          fontSize: 17,
        ),
        labelLarge: TextStyle(
          color: Colors.white,
          fontSize: 19,
        ),
        bodySmall: TextStyle(
          color: Colors.white,
          fontSize: 15,
        ),
        bodyMedium: TextStyle(
          color: Colors.white,
          fontSize: 17,
        ),
        bodyLarge: TextStyle(
          color: Colors.white,
          fontSize: 19,
        ),
        displaySmall: TextStyle(
          color: Colors.white,
          fontSize: 15,
        ),
        displayMedium: TextStyle(
          color: Colors.white,
          fontSize: 17,
        ),
        displayLarge: TextStyle(
          color: Colors.white,
          fontSize: 19,
        ),
        headlineSmall: TextStyle(
          color: Colors.white,
          fontSize: 15,
        ),
        headlineMedium: TextStyle(
          color: Colors.white,
          fontSize: 17,
        ),
        headlineLarge: TextStyle(
          color: Colors.white,
          fontSize: 19,
          fontWeight: FontWeight.bold,
        ),
      ),
      colorScheme: const ColorScheme.light(
        background: Colors.black26,
        primary: Colors.black38,
      ),
      inputDecorationTheme: InputDecorationTheme(
        fillColor: const Color(0xFF212121),
        filled: true,
        isDense: true,
        counterStyle: const TextStyle(
          color: Colors.white,
          fontSize: 15,
        ),
        labelStyle: const TextStyle(
          color: Colors.white,
          fontSize: 15,
        ),
        hintStyle: const TextStyle(
          color: Colors.grey,
          fontSize: 15,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(width: 1, color: Colors.grey),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(width: 1, color: Colors.grey.withOpacity(0.7)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            width: 1.5,
            color: Colors.white,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      textSelectionTheme: const TextSelectionThemeData(
        cursorColor: Colors.white,
      ),
    );
  }
}

/*
counterStyle: TextStyle(
          fontSize: tamFonteNormal,
          color: _cinzaFraco,
          fontFamily: fontFamilyLight,
        ),
        labelStyle: TextStyle(
          fontSize: tamFonteNormal,
          color: _cinzaFraco,
          fontFamily: fontFamilyLight,
        ),
        hintStyle: TextStyle(
          fontSize: tamFontePequena,
          color: _cinzaFraco,
          fontFamily: fontFamilyLight,
        ),
        floatingLabelStyle: TextStyle(
          fontSize: tamFontePequena,
          color: _cinzaFraco,
          fontFamily: fontFamilyLight,
        ),
        filled: true,
        isDense: true,
        fillColor: _cinzaExtraForte,
        contentPadding: const EdgeInsets.only(
          top: 15,
          bottom: 15,
          left: 10,
          right: 10,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(width: 1, color: _cinza),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(width: 1, color: _cinzaFraco),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1.5,
            color: _cinzaMedioForte,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        suffixIconColor: _cinzaFraco,
 */
