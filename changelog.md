<a name="2.0.0"></a>
# [2.0.0](https://github.com/packsaddle/ruby-uri-ssh_git/compare/v1.0.0...v2.0.0) (2015-12-06)


## Breaking changes

* **fix:** do not mangle path in Generic's to_s by stripping leading slashes ([59a1bf2](https://github.com/packsaddle/ruby-uri-ssh_git/commit/59a1bf2))


### v1 behavior

`#parse` always returns path which start with '/'.
`Generic#to_s` always returns path's first '/' stripped.

### v2 behavior

`#parse` returns path which depends on input (absolute path or relative path).

See: [Breaking change about path #14](https://github.com/packsaddle/ruby-uri-ssh_git/issues/14)


## Feature

* **feat:** support user-less URI ([b6abd20](https://github.com/packsaddle/ruby-uri-ssh_git/commit/b6abd20))


<a name="2.0.0.pre.1"></a>
# [2.0.0.pre.1](https://github.com/packsaddle/ruby-uri-ssh_git/compare/v1.0.0...v2.0.0.pre.1) (2015-12-03)


<a name="1.0.0"></a>
# [1.0.0](https://github.com/packsaddle/ruby-uri-ssh_git/compare/v0.1.2...v1.0.0) (2015-11-21)

(no change)

* This module is stable :)


<a name="0.1.2"></a>
## [0.1.2](https://github.com/packsaddle/ruby-uri-ssh_git/compare/v0.1.1...v0.1.2) (2015-11-21)

* Add documentation.
