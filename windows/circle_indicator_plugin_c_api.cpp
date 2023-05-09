#include "include/circle_indicator/circle_indicator_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "circle_indicator_plugin.h"

void CircleIndicatorPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  circle_indicator::CircleIndicatorPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
