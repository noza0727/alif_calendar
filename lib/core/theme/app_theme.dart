import 'package:flutter/material.dart';

import 'app_text_theme.dart';
import 'app_theme_color_scheme.dart';

class AppTheme {
  AppTheme({
    required this.colors,
    required this.textTheme,
    required this.themeData,
  });


  final AppThemeColorScheme colors;
  final AppTextTheme textTheme;
  final ThemeData themeData;


  static AppTheme lightTheme = _initializeTheme(
    colorScheme: AppThemeColorScheme.light,
    baseThemeData: ThemeData.light(),
  );

  static ThemeData _createBaseThemeData(
    AppThemeColorScheme colorScheme,
    AppTextTheme textTheme,
    ThemeData baseThemeData,
  ) =>
      baseThemeData;

  static AppTheme _initializeTheme({
    required AppThemeColorScheme colorScheme,
    required ThemeData baseThemeData,
  }) {
    final textTheme = AppTextTheme.byColorScheme(colorScheme);
    return AppTheme(
      colors: colorScheme,
      textTheme: textTheme,
      themeData: _createBaseThemeData(
        colorScheme,
        textTheme,
        baseThemeData,
      ),
    );
  }

  static AppTheme of(BuildContext context) {
    final scope =
        context.dependOnInheritedWidgetOfExactType<_AppThemeBindingScope>();
    return scope!.applicationThemeProviderState.currentTheme;
  }
}

class AppThemeProvider extends StatefulWidget {
  final Widget child;
  final AppTheme initialTheme;

  const AppThemeProvider({
    Key? key,
    required this.initialTheme,
    required this.child,
  }) : super(key: key);

  @override
  _AppThemeProviderState createState() => _AppThemeProviderState();
}

class _AppThemeProviderState extends State<AppThemeProvider> {
  late AppTheme currentTheme;

  @override
  Widget build(BuildContext context) {
    return _AppThemeBindingScope(
      applicationThemeProviderState: this,
      child: widget.child,
    );
  }

  @override
  void initState() {
    super.initState();
    currentTheme = widget.initialTheme;
  }

  void updateTheme(AppTheme newTheme) {
    if (newTheme != currentTheme) {
      setState(() {
        currentTheme = newTheme;
      });
    }
  }
}

class _AppThemeBindingScope extends InheritedWidget {
  final _AppThemeProviderState applicationThemeProviderState;

  const _AppThemeBindingScope({
    Key? key,
    required this.applicationThemeProviderState,
    required Widget child,
  }) : super(key: key, child: child);

  @override
  bool updateShouldNotify(_AppThemeBindingScope oldWidget) => true;
}
