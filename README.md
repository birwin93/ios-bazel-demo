# Bazel Playground Repo

## Components

- Modules
    | - All source code, each sub directory maps to a target + test target
- bazel
    | - custom bazel macros, each subdirectory maps to a language
- Vendor
    | - All 3rd parties. Right now just contains BUILD.bazel files for each dependency that's referenced in `WORKSPACE`

### Test

Just run `./bazel_test.sh`. It will
1) Run tests for all targets
2) Call `parse_build_events.py` which will fine all the `xcresult` bundles