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
- Custom Logo, TOC, and Footnotes |

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

```
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
---

## Reproducible Builds

@fa[clipboard-list] Dependencies specified in go.mod

---

## Reproducible Builds

```
module "github.com/bketelsen/captainhook"

require (
	"github.com/gorilla/context" v0.0.0-20160226214623-1ea25387ff6f
	"github.com/gorilla/mux" v1.6.0
)
```

---

## Verifiable Builds

@fa[clipboard-list] Dependencies specified in go.mod

---

## Verifiable Builds

```
goversion -m captainhook 
captainhook go1.10
	path  github.com/bketelsen/captainhook
	mod   github.com/bketelsen/captainhook  (devel)
	dep   github.com/gorilla/mux            v1.6.0
```

## Verified Builds

@fa[clipboard-list] Version hashes listed in go.modverify

---

## Verified Builds

```
github.com/gorilla/mux v1.6.0 h1:UykbtMB/w5No2LmE16gINgLj+r/vbziTgaoERQv6U+0=
```



@title[JavaScript Block]

<p><span class="slide-title">JavaScript Block</span></p>

```javascript
// Include http module.
var http = require("http");

// Create the server. Function passed as parameter
// is called on every request made.
http.createServer(function (request, response) {
  // Attach listener on end event.  This event is
  // called when client sent, awaiting response.
  request.on("end", function () {
    // Write headers to the response.
    // HTTP 200 status, Content-Type text/plain.
    response.writeHead(200, {
      'Content-Type': 'text/plain'
    });
    // Send data and end response.
    response.end('Hello HTTP!');
  });

// Listen on the 8080 port.
}).listen(8080);
```

@[1,2](You can present code inlined within your slide markdown too.)
@[9-17](Displayed using code-syntax highlighting just like your IDE.)
@[19-20](Again, all of this without ever leaving your slideshow.)

---?gist=onetapbeyond/494e0fecaf0d6a2aa2acadfb8eb9d6e8&lang=scala&title=Scala GIST

@[23](You can even present code found within any GitHub GIST.)
@[41-53](GIST source code is beautifully rendered on any slide.)
@[57-62](And code-presenting works seamlessly for GIST too, both online and offline.)

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

