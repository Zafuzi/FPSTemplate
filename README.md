# FPSTemplate - A godot template with auto-publish to itch using github actions
![Game Screenshot](images/readme_screenshot_001.png?raw=true)

Adapted from: [Ainlind - first_person_exploration_template](https://github.com/Ainlid/first_person_exploration_template)

## Publishing Setup

- Create a new game on itch and name it something good. The URL is important here.
![Itch New Project Page](images/readme_screenshot_005.png?raw=true)

- Go to your itch settings and generate a new API Key
![Itch Settings Page](images/readme_screenshot_002.png?raw=true)

- Then add the API key to Github naming it `BUTLER_CREDENTIALS`
![Github Secrets](images/readme_screenshot_003.png?raw=true)
![Github Secrets Page 2](images/readme_screenshot_004.png?raw=true)

- Then generate a personal token for github on the [Personal Tokens](https://github.com/settings/tokens) page.
- Add that token as a secret in your reposistory as `GH_CREDENTIALS` just like we did for `BUTLER_CREDENTIALS`

-Change `.github/workflows/publish-to-itchio.yaml` to use your games name instead of FPSTemplate-<PLATFORM>, and change the username to your own itch username
![YAML](images/readme_screenshot_006.png?raw=true)
- Do the above step for EVERY platform in that file (Search and replace all helps)
- Change godot build directory output names to your games name

![Godot Export Settings](images/readme_screenshot_009.png?raw=true)

- Create a new branch named `production`

![Creating Production Branch](images/readme_screenshot_007.png?raw=true)
- Github actions should automatically start building and attempting to publish

![Github Actions](images/readme_screenshot_008.png?raw=true)

- Just push to production or use a pull request to retrigger the actions and auto-publish