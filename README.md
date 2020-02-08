# ( Yarn | npm ) +  ( grunt | gulp )

This action will utilize either Yarn or npm to install dependencies from your package.json and will additionally run grunt or gulp tasks in order to build your theme or plugin during your workflow.

The action looks for the inclusion of a `gruntfile.js` `gulpfile,.js` or `gulpfile.babel.js` file in order to determine whether to use yarn or npm.

### Additional Note

Typically you would use this action in conjunction with [Linchpin WP Engine Git Deploy Action](https://github.com/linchpin/action-wpengine-deploy) or [Linchpin Rsync Deploy Action](https://github.com/linchpin/rsync-deploy) 

### Basic Workflow Example:
```
name: Deploy to WPEngine
on:
  push:
    branches:
      - 'master'

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout code
        uses: actions/checkout@v2
        with:
          path: build

      - name: Build Theme
        uses: linchpin/action-build-yarn-npm@master
        env:
          working_directory: "build/themes/theme-folder-name"
```

### What does this repo need

* Tests and Validation
* Community Feedback 

![Linchpin](https://github.com/linchpin/brand-assets/raw/master/github-opensource-banner.png)
