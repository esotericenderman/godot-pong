# Changelog

## Format

### Version

#### Additions

#### Changes

#### Removals

#### Fixes

## Log

### 3.0.0

#### Additions

- [CONTACT.md][contact].
- [Markdown linter][markdown-action] GitHub action.
- [Spell checker][spell-action] GitHub action.
- Configured [JetBrains IDE module][idea-modules].
- Configured [JetBrains IDE name][idea-name].

#### Changes

- Used Markdown link aliases in ALL Markdown files.
- Updated the [security policy][security].
- Simplified links in [README.md template][info-template].
- Removed some yap from [README.md][info].
- Moved most files to the [docs][documentation] directory.
- Updated the [Code of Conduct][conduct].
- Updated [Git ignore file][ignore].

#### Removals

- Removed the usage of [FEATURES.md][features] for the template as this is meant more to keep track of real software/asset features. This may be added back in the future, see [TODO.md][ideas].

#### Fixes

- Made sure LF line-endings are used everywhere.

### 2.2.0

#### Additions

- [FUNDING.yml][funding].
- [Issue templates][issue-templates].
- Added `.mrpack` files to [.gitignore][ignore].
- Added `.mcworld` files to [.gitignore][ignore].
- Added office file extensions to [.gitignore][ignore].
- [SECURITY.md][security].

#### Changes

- Renamed `.assets` to [assets][assets]. (Why was it `.assets` in the first place?)

### 2.1.0

#### Additions

- Credited this template.

### 2.0.2

#### Fixes

- Fixed [CITATION.cff][citation] being out-of-date.

### 2.0.1

#### Additions

- Added [IntelliJ IDEA .gitignore][idea-ignore].

### 2.0.0

#### Additions

- A [guide][guide] on how to create a new project using this template.
- Added more instructions to [README.md][info] for [updating the project][updating] and [releasing new versions][releasing-new-versions].
- Added instruction to commit changes to [the checklist][checklist].
- Added instruction to delete files if applicable to [the checklist][checklist].
- Added links to [README.md][info] and [README_TEMPLATE.md][info-template] that leads to [CITATION.cff][citation].
- Started using [FEATURES.md][features] and [IDEAS.md][ideas] in terms of the actual template repository.

#### Changes

- Separated the [template README.md][info-template] and the [README.md][info] of the template repository into two different files.
- Generalised project name and use cases in [README.md][info].
- Changed the logo of the "repository size" badge from GitHub to Git.
- Added back the usage of periods to end changes in [CHANGELOG.md][changelog].
- Moved instructions on updating the project from [README.md][info] to [README_TEMPLATE.md][info-template].
- Updated [copyright statement][license-heading].
- Indicated in [README.md][info] that issues, features, and ideas are also tracked with regards to the template.
- Moved `FEATURES.md` to the newly created `docs` folder for better organisation.

#### Fixes

- Fixed the heading level of the [issues heading][issues-heading] in [README.md][info].

### 1.2.0

#### Additions

- [FEATURES.md][features].
- [IDEAS.md][ideas].
- [ISSUES.md][issues].

#### Changes

- [CHANGELOG][changelog] format.

### 1.1.1

#### Fixes

- Fixed some issues in [README.md][info].

### 1.1.0

#### Changes

- [README.md][info].

### 1.0.3

#### Changes

- Added `dist` to [.gitignore][ignore].

### 1.0.2

#### Additions

- [.gitignore][ignore].

### 1.0.1

#### Changes

- [README.md][info] badges.

### 1.0.0

#### Additions

- [CITATION.cff][citation].

#### Changes

- [README.md][info].

### 0.5.0

#### Additions

- [README.md][info] badges.

#### Changes

- [README.md][info].

### 0.4.0

#### Changes

- [LICENSE][license].

### 0.3.0

#### Additions

- [Checklist][checklist].

### 0.2.1

#### Additions

- Link in [README.md][info] to [CODE_OF_CONDUCT.md][conduct].

### 0.2.0

#### Additions

- [CHANGELOG.md][changelog].

### 0.1.0

#### Additions

- [README.md][info].
- [CODE_OF_CONDUCT.md][conduct].

<!-- Link aliases -->

<!-- Files & folders -->

<!-- Project setup -->

<!-- Git -->

[ignore]: ../.gitignore

<!-- Documentation & assets -->

[documentation]: ../docs/

[info]: ./README.md

[contact]: ./CONTACT.md
[checklist]: ./README.md#checklist
[license-heading]: ./README.md#license
[issues-heading]: ./README.md#issues
[guide]: ./README.md#creating-a-new-project-using-this-template

[info-template]: ./README_TEMPLATE.md

[releasing-new-versions]: ./README_TEMPLATE.md#releasing-new-versions
[updating]: ./README_TEMPLATE.md#updating-this-project

[features]: ./FEATURES.md
[conduct]: ./CODE_OF_CONDUCT.md
[changelog]: ./CHANGELOG.md
[citation]: ../CITATION.cff
[security]: ./SECURITY.md
[ideas]: ./TODO.md
[issues]: ./ISSUES.md
[license]: ../LICENSE

[assets]: ../assets/

<!-- IDE files -->

<!-- JetBrains IDEs -->

[idea]: ../.idea
[idea-ignore]: ../.idea/.gitignore
[idea-name]: ../.idea/.name
[idea-modules]: ../.idea/modules.xml

<!-- GitHub -->

[issue-templates]: ./.github/ISSUE_TEMPLATE/
[funding]: ./.github/FUNDING.yml

<!-- Actions -->

[spell-action]: ../.github/workflows/spell.yaml
[markdown-action]: ../.github/workflows/markdown.yaml
