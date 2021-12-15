load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")
load("//bazel/github:github_archive.bzl", "github_archive")

# overrides test runner to resolve https://github.com/google/xctestrunner/issues/26
# this test runner will always use xcodebuild to run tests which means we'll always
# have a .xcresult as an output for post-processing
github_archive(
    name = "xctestrunner",
    repo = "birwin93/xctestrunner",
    commit = "766469e89b0f5bf37cf93927f466a9834f008e46",
)

http_archive(
    name = "build_bazel_rules_apple",
    sha256 = "77e8bf6fda706f420a55874ae6ee4df0c9d95da6c7838228b26910fc82eea5a2",
    url = "https://github.com/bazelbuild/rules_apple/releases/download/0.32.0/rules_apple.0.32.0.tar.gz",
)

load(
    "@build_bazel_rules_apple//apple:repositories.bzl",
    "apple_rules_dependencies",
)

apple_rules_dependencies()

load(
    "@build_bazel_rules_swift//swift:repositories.bzl",
    "swift_rules_dependencies",
)

swift_rules_dependencies()

load(
    "@build_bazel_rules_swift//swift:extras.bzl",
    "swift_rules_extra_dependencies",
)

swift_rules_extra_dependencies()

load(
    "@build_bazel_apple_support//lib:repositories.bzl",
    "apple_support_dependencies",
)

apple_support_dependencies()

# PYTHON

load("//bazel/python:interpreter.bzl", "python_build_standalone_interpreter")

python_build_standalone_interpreter(
    name = "python_interpreter",
)

register_toolchains("py_toolchain")

# Dependencies

http_archive(
    name = "RxSwift",
    url = "https://github.com/ReactiveX/RxSwift/archive/6.2.0.tar.gz",
    sha256 = "999f584411d649069d56ab4faee8a4a057c528223cb7781646c31e5a927392b6",
    strip_prefix = "RxSwift-6.2.0",
    build_file = "@//:Vendor/RxSwift/BUILD.bazel"
)
