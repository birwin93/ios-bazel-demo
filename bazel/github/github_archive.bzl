load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def github_archive(name, repo, commit, sha256=None, **kwargs):
    _url = "https://github.com/{repo}/archive/{commit}.zip".format(repo=repo, commit=commit)
    _prefix = "{}-{}".format(repo.rsplit('/', 1)[-1], commit)
    http_archive(
        name = name,
        url = _url,
        strip_prefix = _prefix,
        **kwargs
    )