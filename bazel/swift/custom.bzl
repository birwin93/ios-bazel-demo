load("@build_bazel_rules_swift//swift:swift.bzl", "swift_library")
load("@build_bazel_rules_apple//apple:ios.bzl", "ios_unit_test")

def swift_unit_tests(name, srcs, deps):
    test_lib_name = name + "Lib"

    swift_library(
        name = test_lib_name,
        srcs = srcs,
        deps = deps,
    )

    ios_unit_test(
        name = name,
        deps = [":" + test_lib_name],
        minimum_os_version = "13.0",
        runner = "//:reddit_test_runner",
    )

def swift_module(name, libdeps = [], testdeps = []):
    swift_library(
        name = name,
        module_name = name,
        srcs = native.glob([
            "Sources/*.swift"
        ]),
        deps = libdeps,
        visibility = ["//visibility:public"],
    )

    swift_unit_tests(
        name = name + "Tests", 
        srcs = native.glob([
            "Tests/*.swift",
        ]),
        deps = [
            ":" + name
        ] + testdeps
    )