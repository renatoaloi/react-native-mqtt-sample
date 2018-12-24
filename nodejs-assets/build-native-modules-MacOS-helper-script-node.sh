#!/bin/bash
      # Helper script for Gradle to call node on macOS in case it is not found
      export PATH=$PATH:/usr/local/lib/node_modules/npm/node_modules/npm-lifecycle/node-gyp-bin:/Users/macbook/desenv/mqtt/NodeMqtt1/node_modules/nodejs-mobile-react-native/node_modules/.bin:/Users/macbook/desenv/mqtt/NodeMqtt1/node_modules/.bin:/usr/local/opt/curl/bin:/usr/local/opt/php@7.1/sbin:/usr/local/opt/php@7.1/bin:/Library/Java/JavaVirtualMachines/jdk1.8.0_171.jdk/Contents/Home/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/Users/macbook/android-sdks/platform-tools/:/Users/macbook/android-sdks/tools/:/Users/macbook/Library/Android/sdk/tools:/Users/macbook/Library/Android/sdk/platform-tools
      node $@
    