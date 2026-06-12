# Changelog


## [6.1.4-20](https://github.com/eea/msfd-backend/releases/tag/6.1.4-20) - 2026-06-12T23:47:30Z

### Dependency updates

##### [wise.msfd](https://pypi.org/project/wise.msfd/#changelog): 8.7 ~ 8.9


## [6.1.4-19](https://github.com/eea/msfd-backend/releases/tag/6.1.4-19) - 2026-06-11T23:54:45Z

### Dependency updates

##### [wise.msfd](https://pypi.org/project/wise.msfd/#changelog): 8.6 ~ 8.7


## [6.1.4-18](https://github.com/eea/msfd-backend/releases/tag/6.1.4-18) - 2026-06-10T23:53:11Z

### Dependency updates

##### [wise.msfd](https://pypi.org/project/wise.msfd/#changelog): 8.5 ~ 8.6


## [6.1.4-17](https://github.com/eea/msfd-backend/releases/tag/6.1.4-17) - 2026-06-10T00:14:34Z

### Dependency updates

##### [eea.api.dataconnector](https://github.com/eea/eea.api.dataconnector/releases): 12.7 ~ 12.8

* Fix: return 404 from ``@connector-data`` for content without a connector
  data provider instead of raising ``ValueError``
  [dobri1408]


## [6.1.4-16](https://github.com/eea/msfd-backend/releases/tag/6.1.4-16) - 2026-06-04T10:04:27Z

### Plone

#### Upgrade [eeacms/plone-backend](https://github.com/eea/plone-backend): 6.1.4-4 ~ 6.1.4-5 

##### eeacms/plone-backend:[6.1.4-5](https://github.com/eea/plone-backend/releases/tag/6.1.4-5)
###### Internal

- Add zodbpack configuration for RelStorage - [dobri1408 - [`16651a2`](https://github.com/eea/plone-backend/commit/16651a2e6890173e965330b89f4540232c9febed)]
- Add zodbpack.conf to Dockerfile - [dobri1408 - [`1cdbfc6`](https://github.com/eea/plone-backend/commit/1cdbfc61b64b485227f3e2bb290b7c5d065da760)]


## [6.1.4-11](https://github.com/eea/msfd-backend/releases/tag/6.1.4-11) - 2026-05-28T23:54:29Z

### Dependency updates

##### [wise.msfd](https://pypi.org/project/wise.msfd/#changelog): 8.0 ~ 8.1


## [6.1.4-10](https://github.com/eea/msfd-backend/releases/tag/6.1.4-10) - 2026-05-27T23:52:00Z

### Plone

#### Upgrade [eeacms/plone-backend](https://github.com/eea/plone-backend): 6.1.4-3 ~ 6.1.4-4 

##### eeacms/plone-backend:[6.1.4-4](https://github.com/eea/plone-backend/releases/tag/6.1.4-4)
###### Dependency updates

###### [eea.volto.policy](https://github.com/eea/eea.volto.policy/releases): 12.6 ~ 12.7

* Fix: Override Plone search RSS template to use feed item title property
 [dobri1408]

### Dependency updates

##### [eea.plotly](https://github.com/eea/eea.plotly/releases): 2.3 ~ 2.4

* Change: Implement eea.genai.summary customization
  [razvanMiu]


## [6.1.4-8](https://github.com/eea/msfd-backend/releases/tag/6.1.4-8) - 2026-05-22T00:29:40Z

### Plone

#### Upgrade [eeacms/plone-backend](https://github.com/eea/plone-backend): 6.1.4-2 ~ 6.1.4-3 

##### eeacms/plone-backend:[6.1.4-3](https://github.com/eea/plone-backend/releases/tag/6.1.4-3)
###### Dependency updates

###### [eea.volto.policy](https://github.com/eea/eea.volto.policy/releases): 12.4 ~ 12.6

* Fix: Restore Plone 5.2 / Plone 6 compatibility for Scripts/Styles viewlets
 (try scripts/styles modules, fall back to resource)
 [valipod]

* Fix: Point Scripts/Styles viewlets to their split modules (.scripts/.styles)
 [valipod]

###### Internal

- undo Release eea.volto.policy 12.5 - [valentinab25 - [`64cbda6`](https://github.com/eea/plone-backend/commit/64cbda678c004c2ed6a14b29fab9dc69b075d59f)]

### Dependency updates

##### [eea.progress.workflow](https://github.com/eea/eea.progress.workflow/releases): 3.1 ~ 3.2

* Change: Add integration tests for @workflow.progress REST API views
  [avoinea]

##### [eea.volto.policy](https://github.com/eea/eea.volto.policy/releases): 12.4 ~ 12.6

* Fix: Restore Plone 5.2 / Plone 6 compatibility for Scripts/Styles viewlets
  (try scripts/styles modules, fall back to resource)
  [valipod]

* Fix: Point Scripts/Styles viewlets to their split modules (.scripts/.styles)
  [valipod]


## [6.1.4-6](https://github.com/eea/msfd-backend/releases/tag/6.1.4-6) - 2026-05-15T23:35:15Z

### Dependency updates

##### [wise.msfd](https://pypi.org/project/wise.msfd/#changelog): 7.7 ~ 7.8


## [6.1.4-4](https://github.com/eea/msfd-backend/releases/tag/6.1.4-4) - 2026-05-08T23:34:16Z

### Dependency updates

##### [eea.api.dataconnector](https://github.com/eea/eea.api.dataconnector/releases): 12.6 ~ 12.7

* Fix: list index out of range
  [avoinea - sentry #420262]


## [6.1.4-2](https://github.com/eea/msfd-backend/releases/tag/6.1.4-2) - 2026-04-29T15:38:44Z

### Plone

#### Upgrade [eeacms/plone-backend](https://github.com/eea/plone-backend): 6.1.4-1 ~ 6.1.4-2 

##### eeacms/plone-backend:[6.1.4-2](https://github.com/eea/plone-backend/releases/tag/6.1.4-2)
###### Dependency updates

###### [eea.volto.policy](https://github.com/eea/eea.volto.policy/releases): 12.3 ~ 12.4

* Change: Cleanup printf - TeaserBlockSerializerBase._process_data called
 [avoinea]

### Dependency updates

##### [eea.volto.policy](https://github.com/eea/eea.volto.policy/releases): 12.3 ~ 12.4

* Change: Cleanup printf - TeaserBlockSerializerBase._process_data called
  [avoinea]


## [6.1.4-1](https://github.com/eea/msfd-backend/releases/tag/6.1.4-1) - 2026-04-29T09:08:29Z

### Plone

#### Upgrade [eeacms/plone-backend](https://github.com/eea/plone-backend): 6.1.3-21 ~ 6.1.4-1 

##### eeacms/plone-backend:[6.1.4-1](https://github.com/eea/plone-backend/releases/tag/6.1.4-1)
###### Plone

###### Upgrade 6.1.3 ~ 6.1.4 

* Plone [6.1.4](https://plone.org/download/releases/6.1.4)

###### Dependency updates

###### [eventlet](https://pypi.org/project/eventlet/#changelog): 0.40.3 ~ 0.41.0

###### [greenlet](https://pypi.org/project/greenlet/#changelog): 3.2.4 ~ 3.5.0

###### [ijson](https://pypi.org/project/ijson/#changelog): 3.4.0.post0 ~ 3.5.0

###### [odict](https://pypi.org/project/odict/#changelog): 1.9.0 ~ 2.0.0

###### [plumber](https://pypi.org/project/plumber/#changelog): 1.7 ~ 2.0.0

###### New packages

###### [authomatic](https://pypi.org/project/authomatic/#changelog): 1.3.0

###### [bda-cache](https://pypi.org/project/bda-cache/#changelog): 1.3.0

###### [hurry-filesize](https://pypi.org/project/hurry-filesize/#changelog): 0.9

###### [node-ext-ldap](https://pypi.org/project/node-ext-ldap/#changelog): 2.0.0

###### [node-ext-ugm](https://pypi.org/project/node-ext-ugm/#changelog): 2.0.0

###### [pyasn1](https://pypi.org/project/pyasn1/#changelog): 0.6.3

###### [pyyaml](https://pypi.org/project/pyyaml/#changelog): 6.0.3

###### [sentry-sdk](https://pypi.org/project/sentry-sdk/#changelog): 2.58.0

###### [yafowil-bootstrap](https://pypi.org/project/yafowil-bootstrap/#changelog): 2.0.0a2

###### [yafowil-plone](https://pypi.org/project/yafowil-plone/#changelog): 5.0.0

###### [yafowil-widget-array](https://pypi.org/project/yafowil-widget-array/#changelog): 1.8

###### [yafowil-widget-dict](https://pypi.org/project/yafowil-widget-dict/#changelog): 1.9

###### [yafowil-yaml](https://pypi.org/project/yafowil-yaml/#changelog): 2.1

###### [z3c-jbot](https://pypi.org/project/z3c-jbot/#changelog): 3.1

###### Removed packages

###### [Authomatic](https://pypi.org/project/Authomatic/#changelog): 1.3.0

###### [bda.cache](https://pypi.org/project/bda.cache/#changelog): 1.3.0

###### [five.globalrequest](https://pypi.org/project/five.globalrequest/#changelog): 99.1

###### [hurry.filesize](https://pypi.org/project/hurry.filesize/#changelog): 0.9

###### [node.ext.ldap](https://pypi.org/project/node.ext.ldap/#changelog): 1.2

###### [node.ext.ugm](https://pypi.org/project/node.ext.ugm/#changelog): 1.1

###### [plone.synchronize](https://pypi.org/project/plone.synchronize/#changelog): 1.0.4

###### [sentry.sdk](https://pypi.org/project/sentry.sdk/#changelog): 2.45.0

###### [yafowil.bootstrap](https://pypi.org/project/yafowil.bootstrap/#changelog): 2.0.0a2

###### [yafowil.plone](https://pypi.org/project/yafowil.plone/#changelog): 5.0.0

###### [yafowil.widget.array](https://pypi.org/project/yafowil.widget.array/#changelog): 1.7

###### [yafowil.widget.dict](https://pypi.org/project/yafowil.widget.dict/#changelog): 1.8

###### [yafowil.yaml](https://pypi.org/project/yafowil.yaml/#changelog): 2.0

###### Internal

- Upgrade Plone backend to 6.1.4 (#13)

* Upgrade Plone backend to 6.1.4

* fix resolutionimpossible

* Upgrade picked pins

---------

Co-authored-by: Alin Voinea <contact@avoinea.com> - [Teodor Voicu - [`b931d07`](https://github.com/eea/plone-backend/commit/b931d07f32827423ddcd971d45579b8f931ccd77)]
- fix: tests - [Alin Voinea - [`29aa349`](https://github.com/eea/plone-backend/commit/29aa3491676062d1733d692dcd4c189aff5d37c0)]
- CHANGELOG.md - [valentinab25 - [`c956dcd`](https://github.com/eea/plone-backend/commit/c956dcdc2b2c4e16b7533164bca11c74cfa848f8)]
- chore: Fix calculate version, remove wrong docs - [valentinab25 - [`20d7419`](https://github.com/eea/plone-backend/commit/20d74190e6c9475c2529be39b1371e7b857d8979)]


## [6.1.3-20](https://github.com/eea/msfd-backend/releases/tag/6.1.3-20) - 2026-04-22T00:27:53Z

### Plone

#### Upgrade [eeacms/plone-backend](https://github.com/eea/plone-backend): 6.1.3-20 ~ 6.1.3-21 

##### eeacms/plone-backend:[6.1.3-21](https://github.com/eea/plone-backend/releases/tag/6.1.3-21)
###### Dependency updates

###### [eea.volto.policy](https://github.com/eea/eea.volto.policy/releases): 12.2 ~ 12.3

* Change: Rename header settings control panel and add @layout-blocks-duplicates endpoint
 [razvanMiu]

### Dependency updates

##### [eea.volto.policy](https://github.com/eea/eea.volto.policy/releases): 12.2 ~ 12.3

* Change: Rename header settings control panel and add @layout-blocks-duplicates endpoint
  [razvanMiu]


## [6.1.3-19](https://github.com/eea/msfd-backend/releases/tag/6.1.3-19) - 2026-04-18T00:40:20Z

### Plone

#### Upgrade [eeacms/plone-backend](https://github.com/eea/plone-backend): 6.1.3-19 ~ 6.1.3-20 

##### eeacms/plone-backend:[6.1.3-20](https://github.com/eea/plone-backend/releases/tag/6.1.3-20)
###### Dependency updates

###### [eea.volto.policy](https://github.com/eea/eea.volto.policy/releases): 12.1 ~ 12.2

* Change: update default registry
 [razvanMiu]

### Dependency updates

##### [eea.volto.policy](https://github.com/eea/eea.volto.policy/releases): 12.1 ~ 12.2

* Change: update default registry
  [razvanMiu]


## [6.1.3-18](https://github.com/eea/msfd-backend/releases/tag/6.1.3-18) - 2026-04-17T00:36:20Z

### Plone

#### Upgrade [eeacms/plone-backend](https://github.com/eea/plone-backend): 6.1.3-18 ~ 6.1.3-19 

##### eeacms/plone-backend:[6.1.3-19](https://github.com/eea/plone-backend/releases/tag/6.1.3-19)
###### Dependency updates

###### [eea.volto.policy](https://github.com/eea/eea.volto.policy/releases): 12.0 ~ 12.1

* Change: Change header defaults
 [razvanMiu]

### Dependency updates

##### [eea.volto.policy](https://github.com/eea/eea.volto.policy/releases): 12.0 ~ 12.1

* Change: Change header defaults
  [razvanMiu]


## [6.1.3-17](https://github.com/eea/msfd-backend/releases/tag/6.1.3-17) - 2026-04-16T00:36:27Z

### Plone

#### Upgrade [eeacms/plone-backend](https://github.com/eea/plone-backend): 6.1.3-17 ~ 6.1.3-18 

##### eeacms/plone-backend:[6.1.3-18](https://github.com/eea/plone-backend/releases/tag/6.1.3-18)
###### Dependency updates

###### [eea.coremetadata](https://github.com/eea/eea.coremetadata/releases): 5.4 ~ 5.5

* Change: Add unit tests for seq_strip and tuplize functions
 [avoinea]

### Dependency updates

##### [eea.coremetadata](https://github.com/eea/eea.coremetadata/releases): 5.4 ~ 5.5

* Change: Add unit tests for seq_strip and tuplize functions
  [avoinea]


## [6.1.3-16](https://github.com/eea/msfd-backend/releases/tag/6.1.3-16) - 2026-04-15T00:41:11Z

### Plone

#### Upgrade [eeacms/plone-backend](https://github.com/eea/plone-backend): 6.1.3-16 ~ 6.1.3-17 

##### eeacms/plone-backend:[6.1.3-17](https://github.com/eea/plone-backend/releases/tag/6.1.3-17)
###### Dependency updates

###### [eea.api.layout](https://github.com/eea/eea.api.layout/releases): 3.3 ~ 3.4

* Change: Add unit tests for serializer blocks logic
 [avoinea]

###### [eea.banner](https://github.com/eea/eea.banner/releases): 1.5 ~ 1.7

* Change: Add unit tests for isTrue function
 [avoinea]

* Change: Add unit tests for isTrue function
 [avoinea]

###### [eea.geolocation](https://github.com/eea/eea.geolocation/releases): 2.7 ~ 2.8

* Change: feat: Add integration tests for @geolocation REST API views
 [avoinea]

###### [eea.kitkat](https://github.com/eea/eea.kitkat/releases): 8.3 ~ 8.4

* Change: Add integration tests for captchakey and CaptchaVerify
 [avoinea]

###### [eea.volto.policy](https://github.com/eea/eea.volto.policy/releases): 11.4 ~ 12.0

### Dependency updates

##### [eea.api.dataconnector](https://github.com/eea/eea.api.dataconnector/releases): 12.5 ~ 12.6

* Change: Add unit tests for queryparser and queryfilter modules
  [avoinea]

##### [eea.plotly](https://github.com/eea/eea.plotly/releases): 2.2 ~ 2.3

* Change: Add unit tests for utils, io_csv, and io_json modules
  [avoinea]

##### [eea.volto.policy](https://github.com/eea/eea.volto.policy/releases): 11.3 ~ 12.0



* Change: (FIX): Fix 404 page when parent is private refs #284281
  [dobri1408]


## [6.1.3-14](https://github.com/eea/msfd-backend/releases/tag/6.1.3-14) - 2026-04-02T23:33:43Z

### Plone

#### Upgrade [eeacms/plone-backend](https://github.com/eea/plone-backend): 6.1.3-2 ~ 6.1.3-16 

##### eeacms/plone-backend:[6.1.3-16](https://github.com/eea/plone-backend/releases/tag/6.1.3-16)
###### Dependency updates

###### [eea.volto.policy](https://github.com/eea/eea.volto.policy/releases): 11.3 ~ 11.4

* Change: (FIX): Fix 404 page when parent is private refs #284281
 [dobri1408]
##### eeacms/plone-backend:[6.1.3-15](https://github.com/eea/plone-backend/releases/tag/6.1.3-15)
###### Dependency updates

###### [collective.taxonomy](https://pypi.org/project/collective.taxonomy/#changelog): 3.1.7 ~ 3.1.8dev1

###### Internal

- Patch release collective.taxonomy 3.1.8dev1 - refs #285635 - [Alin Voinea - [`4b2a920`](https://github.com/eea/plone-backend/commit/4b2a9206481b84bf70fed0b9c830ce63ad35b78d)]
##### eeacms/plone-backend:[6.1.3-14](https://github.com/eea/plone-backend/releases/tag/6.1.3-14)
###### Dependency updates

###### [eea.volto.policy](https://github.com/eea/eea.volto.policy/releases): 11.2 ~ 11.3

* Fix: Override titles on cards when target is selected
 [tedw87 - refs #298262]
##### eeacms/plone-backend:[6.1.3-13](https://github.com/eea/plone-backend/releases/tag/6.1.3-13)
###### Dependency updates

###### [eea.coremetadata](https://github.com/eea/eea.coremetadata/releases): 5.3 ~ 5.4

* Bug fix: Lang support for taxonomies
 [dobri1408 - refs #282886]
##### eeacms/plone-backend:[6.1.3-12](https://github.com/eea/plone-backend/releases/tag/6.1.3-12)
###### Dependency updates

###### [pas.plugins.eea](https://pypi.org/project/pas.plugins.eea/#changelog): 1.5 ~ 1.7
##### eeacms/plone-backend:[6.1.3-11](https://github.com/eea/plone-backend/releases/tag/6.1.3-11)
###### Dependency updates

###### Downgrades 

###### [pas.plugins.eea](https://pypi.org/project/pas.plugins.eea/#changelog): 1.6 ~ 1.5

###### Internal

- Revert pas.plugins.eea to previous version - [Teodor - [`c6f89e2`](https://github.com/eea/plone-backend/commit/c6f89e2c0e0e8e71cf5250791c38f84f3cf54a6a)]
##### eeacms/plone-backend:[6.1.3-10](https://github.com/eea/plone-backend/releases/tag/6.1.3-10)
###### Dependency updates

###### [eea.volto.policy](https://github.com/eea/eea.volto.policy/releases): 11.1 ~ 11.2

* Fix: Index image scales with relative_path to context
 [avoinea - refs #295495]
##### eeacms/plone-backend:[6.1.3-9](https://github.com/eea/plone-backend/releases/tag/6.1.3-9)
###### Dependency updates

###### [eea.volto.policy](https://github.com/eea/eea.volto.policy/releases): 11.0 ~ 11.1

* Fix: Handle NoInteraction during inherited field lookup in indexing
 [avoinea - refs #295495]
##### eeacms/plone-backend:[6.1.3-8](https://github.com/eea/plone-backend/releases/tag/6.1.3-8)
###### Dependency updates

###### [eea.volto.policy](https://github.com/eea/eea.volto.policy/releases): 10.0 ~ 11.0

* Feature: Inheritable fields, for example inherit preview_image from parent if context doesn't have a preview_image
 [razvanMiu - refs #295495]
##### eeacms/plone-backend:[6.1.3-7](https://github.com/eea/plone-backend/releases/tag/6.1.3-7)
###### Dependency updates

###### [eea.volto.policy](https://github.com/eea/eea.volto.policy/releases): 9.3 ~ 10.0

###### What's Changed
* Advanced restricted block by @tedw87 in https://github.com/eea/eea.volto.policy/pull/88
* Release 10.0 by @avoinea in https://github.com/eea/eea.volto.policy/pull/89


**Full Changelog**: https://github.com/eea/eea.volto.policy/compare/9.3...10.0

###### Internal

- Release eea.volto.policy 10.0 - [Alin Voinea - [`505df34`](https://github.com/eea/plone-backend/commit/505df34459a3c50cf98ad63cdc4a6abe6f6c9c70)]
##### eeacms/plone-backend:[6.1.3-6](https://github.com/eea/plone-backend/releases/tag/6.1.3-6)
###### Dependency updates

###### [eea.volto.policy](https://github.com/eea/eea.volto.policy/releases): 9.2 ~ 9.3

* Fix: migration script to handle missing catalog entries for images
 [ichim-david refs #254622]

###### [pas.plugins.eea](https://pypi.org/project/pas.plugins.eea/#changelog): 1.5 ~ 1.6

###### Internal

- test: updated tests for 6.1.3 - refs #288125 - [Calin Vlad - [`e9884de`](https://github.com/eea/plone-backend/commit/e9884dec97f6ec1175052ca460927b0d01bff824)]
##### eeacms/plone-backend:[6.1.3-5](https://github.com/eea/plone-backend/releases/tag/6.1.3-5)
###### Dependency updates

###### [collective.exportimport](https://pypi.org/project/collective.exportimport/#changelog): 1.12 ~ 1.15

###### [pas.plugins.authomatic](https://pypi.org/project/pas.plugins.authomatic/#changelog): 2.0.0rc3 ~ 2.0.0

###### [pas.plugins.ldap](https://pypi.org/project/pas.plugins.ldap/#changelog): 1.8.3 ~ 1.8.4

###### [python-ldap](https://pypi.org/project/python-ldap/#changelog): 3.4.4 ~ 3.4.5

###### [sentry.sdk](https://pypi.org/project/sentry.sdk/#changelog): 2.42.1 ~ 2.45.0

###### Downgrades 

###### [ijson](https://pypi.org/project/ijson/#changelog): 3.4.0 ~ 3.4.0.post0

###### Removed packages

###### [PyYAML](https://pypi.org/project/PyYAML/#changelog): 6.0.2

###### [z3c.jbot](https://pypi.org/project/z3c.jbot/#changelog): 3.1

###### Internal

- Upgrade packages pins to the latest minor release - [Alin Voinea - [`515577d`](https://github.com/eea/plone-backend/commit/515577d355a2250e58d8f7765a9155106aad6c8b)]
- fix: Remove duplicate package pins - [Alin Voinea - [`24ea3ac`](https://github.com/eea/plone-backend/commit/24ea3acd606241cbc509278248ff2304f911adf0)]
##### eeacms/plone-backend:[6.1.3-4](https://github.com/eea/plone-backend/releases/tag/6.1.3-4)
###### Dependency updates

###### [eea.api.controlpanel](https://github.com/eea/eea.api.controlpanel/releases): 1.2 ~ 1.3

* Change: Release
 [avoinea]

###### [eea.api.glossary](https://pypi.org/project/eea.api.glossary/#changelog): 1.5 ~ 1.6

###### [eea.api.layout](https://github.com/eea/eea.api.layout/releases): 3.2 ~ 3.3

* Change: Replace Python linting to ruff
 [mihaidobrescu1111 = refs #286821]
* Change: Add plone6 tests
 [mihaidobrescu1111 = refs #293593]

###### [eea.banner](https://github.com/eea/eea.banner/releases): 1.4 ~ 1.5

* Change: Replace Python linting to ruff
 [mihaidobrescu1111 = refs #286821]
* Change: Add plone6 tests
 [mihaidobrescu1111 = refs #293593]

###### [eea.geolocation](https://github.com/eea/eea.geolocation/releases): 2.6 ~ 2.7

* Change: Replace Python linting to ruff
 [mihaidobrescu1111 = refs #286821]
* Change: Add plone6 tests
 [mihaidobrescu1111 = refs #293593]

###### [eea.kitkat](https://github.com/eea/eea.kitkat/releases): 8.2 ~ 8.3

* Change: Replace Python linting to ruff
 [mihaidobrescu1111 = refs #286821]
* Change: Add plone6 tests
 [mihaidobrescu1111 = refs #293593]

###### [eea.schema.slate](https://github.com/eea/eea.schema.slate/releases): 1.2 ~ 1.3

* Change: Replace Python linting to ruff
 [mihaidobrescu1111 = refs #286821]
* Change: Add plone6 tests
 [mihaidobrescu1111 = refs #293593]

###### [eea.sentry](https://github.com/eea/eea.sentry/releases): 3.0 ~ 3.1

* Change: Replace Python linting to ruff
 [mihaidobrescu1111 = refs #286821]
* Change: Add plone6 tests
 [mihaidobrescu1111 = refs #293593]

###### [eea.volto.policy](https://github.com/eea/eea.volto.policy/releases): 9.1 ~ 9.2

* Change: Replace Python linting to ruff
 [mihaidobrescu1111 = refs #286821]
* Change: Add plone6 tests
 [mihaidobrescu1111 = refs #293593]

###### [eea.zotero](https://github.com/eea/eea.zotero/releases): 1.4 ~ 1.5

* Change: Replace Python linting to ruff
 [mihaidobrescu1111 = refs #286821]
* Change: Add plone6 tests
 [mihaidobrescu1111 = refs #293593]

###### Internal

- fix: Plone upgrades steps from 6.0.15 to 6.1.3 - refs #288125 - [Alin Voinea - [`33ab97d`](https://github.com/eea/plone-backend/commit/33ab97d0ea7aa73347273e1f512e488efb27db37)]
##### eeacms/plone-backend:[6.1.3-3](https://github.com/eea/plone-backend/releases/tag/6.1.3-3)
###### Dependency updates

###### [eea.api.controlpanel](https://github.com/eea/eea.api.controlpanel/releases): 1.1 ~ 1.2

* Change: Replace Python linting to ruff
 [mihaidobrescu1111 = refs #286821]
* Change: Add plone6 tests
 [mihaidobrescu1111 = refs #293593]

### Dependency updates

##### [wise.msfd](https://pypi.org/project/wise.msfd/#changelog): 7.3 ~ 7.4

### Internal

- chore: [JENKINSFILE] add automated nightly release - [valentinab25 -  [`6b5a6d2`](https://github.com/eea/msfd-backend/commit/6b5a6d2ec161483d9ed7bff36dfe2ede2b060244)]
- test: fix tests - [valentinab25 -  [`6b6833e`](https://github.com/eea/msfd-backend/commit/6b6833e996a8d7c4bef0dcafca74a1438444f18a)]
- test: Increase timeout on test - [valentinab25 -  [`e4ae45b`](https://github.com/eea/msfd-backend/commit/e4ae45b1e4e7ec60331e0ba8eb11476a99b719cc)]
- test: remove plone-relstorage test - [laszlocseh -  [`6517c53`](https://github.com/eea/msfd-backend/commit/6517c539982673da41fb5887d61f123ad84c4347)]
- test: increase timetout - [laszlocseh -  [`86e0e74`](https://github.com/eea/msfd-backend/commit/86e0e742a15056badf47787e5eab6a8f5f404654)]
- test: increase timetout - [laszlocseh -  [`822314e`](https://github.com/eea/msfd-backend/commit/822314e49ce10f16e2615ac0f21b7cf66804f0a5)]
- test: increase timeout - [laszlocseh -  [`34c6b7a`](https://github.com/eea/msfd-backend/commit/34c6b7aa76046151b305cf877dba3bb785349a79)]
