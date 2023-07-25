cmake_minimum_required(VERSION 3.16)

project(TodoV1 VERSION 0.1 LANGUAGES CXX)

set(CMAKE_AUTOMOC ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.2 COMPONENTS Quick REQUIRED)

qt_add_executable(appTodoV1
    main.cpp
)
# Add the img directory to the QRC resources
qt6_add_resources(RESOURCE_FILES res.qrc)


# Add the generated resource files to your target
target_sources(appTodoV1 PRIVATE ${RESOURCE_FILES})


qt_add_qml_module(appTodoV1
    URI TodoV1
    VERSION 1.0
    QML_FILES main.qml
    BottomNavigationBar.qml
    AddTaskDialog.qml
    ui/SplashScreen.qml
    ui/MyTabButton.qml
    ui/Theme.qml
    ui/TabEnum.qml
    ui/MyButton.qml
)

set_target_properties(appTodoV1 PROPERTIES
    MACOSX_BUNDLE_GUI_IDENTIFIER my.example.com
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_compile_definitions(appTodoV1
    PRIVATE $<$<OR:$<CONFIG:Debug>,$<CONFIG:RelWithDebInfo>>:QT_QML_DEBUG>)
target_link_libraries(appTodoV1
    PRIVATE Qt6::Quick)
