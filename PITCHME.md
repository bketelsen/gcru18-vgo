# Repeatable Builds with vgo


---

## History of Building Go

- 2009 6g, 6l - Makefiles |
- 2010 goinstall |
- 2011 go command |
- 2014 gopkg.in |
- 2014 semver proposal |
- 2015 go 1.5 vendor experiment |
- 2013-2018 godep,glide,gb,others |

---


## 2018

<br>

@fa[star gp-tip](vgo)

Documentation [https://research.swtch.com/vgo](https://research.swtch.com/vgo)
Code [https://github.com/golang/vgo](https://github.com/golang/vgo)
---

## vgo

<br/>
@fa[check] Defines Go Modules


---
## vgo

<br/>
@fa[check] Proposed Modification to "go" Tool


---

## vgo

- The Import Compatibility Rule |
- Minimal Version Selection |
- Semantic Import Versioning |
- Graceful API Updates |
- Reproducible Builds |
- Verifiable Builds |
- Verified Builds |
- Proxy Server Support |


---

## The Import Compatibility Rule 

> If an old package and a new package have the same import path, the new package must be backwards-compatible with the old package.

---

## Minimal Version Selection

> Minimal version selection allows modules to specify only minimum requirements for their dependency modules.

---

## Semantic Import Versioning



---?image=assets/image/impver.png&size=auto 60%&color=white


---

## Graceful API Updates

---

@title[Graceful API Updates]

<p><span class="slide-title">Graceful API Updates</span></p>

```go
package p // v1
import v2 "p/v2"

func EnableFoo() {
	//go:fix
	v2.SetFoo(true)
}
func DisableFoo() {
	//go:fix
	v2.SetFoo(false)
}
```

@[1,2](v1 package imports v2, allows you to set compatibility defaults.)
@[4-7](Future "go fix" commands will inline the changes.)

---

## Reproducible Builds

@fa[clipboard-list] Dependencies specified in go.mod

---

## Reproducible Builds

```text
module "github.com/bketelsen/captainhook"

require (
	"github.com/gorilla/context" v0.0.0-20160226214623-1ea25387ff6f
	"github.com/gorilla/mux" v1.6.0
)
```
@[1](Module Declaration)
@[3-6](Dependencies, with version specified)

---

## Verifiable Builds

@fa[clipboard-list] Inspect dependencies in compiled binary

---

## Verifiable Builds

```text
goversion -m captainhook 
captainhook go1.10
	path  github.com/bketelsen/captainhook
	mod   github.com/bketelsen/captainhook  (devel)
	dep   github.com/gorilla/mux            v1.6.0
```
@[1](rsc.io/goversion)
@[2](Binary name and Go version used to build it)
@[3](Import Path)
@[4](Module Declaration)
@[5](Dependencies With Version)

---

## Verified Builds

@fa[clipboard-list] Version hashes listed in go.modverify

---

## Verified Builds

```text
github.com/gorilla/mux v1.6.0 h1:UykbtMB/w5No2LmE16gINgLj+r/vbziTgaoERQv6U+0=
```

---

## Verified Builds

```bash
$ vgo verify
all modules verified
```

---
## Verified Builds

```bash
$ vgo verify
github.com/gorilla/mux v1.6.0: dir has been modified (...)
```

---

## Demo



---

## Proxy Server Support

```bash
$ GOPROXY=https://gomods.io vgo build
...
```

---

## Template Help

- [Code Presenting](https://github.com/gitpitch/gitpitch/wiki/Code-Presenting)
  + [Repo Source](https://github.com/gitpitch/gitpitch/wiki/Code-Delimiter-Slides), [Static Blocks](https://github.com/gitpitch/gitpitch/wiki/Code-Slides), [GIST](https://github.com/gitpitch/gitpitch/wiki/GIST-Slides) 
- [Custom CSS Styling](https://github.com/gitpitch/gitpitch/wiki/Slideshow-Custom-CSS)
- [Slideshow Background Image](https://github.com/gitpitch/gitpitch/wiki/Background-Setting)
- [Slide-specific Background Images](https://github.com/gitpitch/gitpitch/wiki/Image-Slides#background)
- [Custom Logo](https://github.com/gitpitch/gitpitch/wiki/Logo-Setting) [TOC](https://github.com/gitpitch/gitpitch/wiki/Table-of-Contents) [Footnotes](https://github.com/gitpitch/gitpitch/wiki/Footnote-Setting)

---

## Go GitPitch Pro!

<br>
<div class="left">
    <i class="fa fa-user-secret fa-5x" aria-hidden="true"> </i><br>
    <a href="https://gitpitch.com/pro-features" class="pro-link">
    More details here.</a>
</div>
<div class="right">
    <ul>
        <li>Private Repos</li>
        <li>Private URLs</li>
        <li>Password-Protection</li>
        <li>Image Opacity</li>
        <li>SVG Image Support</li>
    </ul>
</div>

---

### Questions?

<br>

@fa[twitter gp-contact](@gitpitch)

@fa[github gp-contact](gitpitch)

@fa[medium gp-contact](@gitpitch)

---?image=assets/image/gitpitch-audience.jpg&opacity=100

@title[Download this Template!]

### Get your presentation started!
### [Download this template @fa[external-link gp-download]](https://gitpitch.com/template/download/black)

