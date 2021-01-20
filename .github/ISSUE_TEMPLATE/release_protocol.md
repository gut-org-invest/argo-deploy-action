---
name: Release Protocol
about: Actions to release a new version
title: Release Protocol for version A.B.C

---

- [ ] 🧞Choose release captain for the current version and assign him/her this issue 🚀

#### "What's new" store texts
- [ ] Create **dev-release-notes** containing changes since last version and add these to [Notion](https://www.notion.so/7mind/App-Store-Google-Play-c879067791334de4bcb1d8c187ff3c92) (marketing team will add store texts the following days)

#### Devops
- [ ] Make sure to **test** the update (on a real device) from the previous version to new alpha candidate version with a logged in user, taking into account the changes of this _milestone_ (preferably assign someone from another team).
- [ ] Release – all steps relevant are described in the [🍏 Readme](https://github.com/sevenmind/7mind-ios-v2#release-beta-version-to-testflight) or [🤖 Readme](https://github.com/sevenmind/7mind-android-v2/blob/develop/README.md#release-alpha-version-to-google-play)
- [ ] Create GitHub release for [🍏](https://github.com/sevenmind/7mind-ios-v2/releases) or [🤖](https://github.com/sevenmind/7mind-android-v2/releases)

#### Post release
- [ ] _(optional as discussed)_ Start app rollout in appstore, i.e. starting with 20% of users
- [ ] Post release notes in slack `#releases` channel
- [ ] Manually upload dysm to firebase if fastlane fails to do so. 🍏

#### Health checks
- [ ] Release health check 24h later in [crash/error reporting](https://console.firebase.google.com/project/sevenmind-android-v2/overview)
- [ ] Release health check 24h later with support team
