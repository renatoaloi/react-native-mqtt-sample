// Rename this sample file to main.js to use on your project.
// The main.js file will be overwritten in updates/reinstalls.

var rn_bridge = require('rn-bridge');

// Echo every message received from react-native.
rn_bridge.channel.on('message', (msg) => {
  //rn_bridge.channel.send(msg);


  var mqtt = require('mqtt')
  var client = mqtt.connect('mqtt://192.168.15.17')

  client.on('connect', function () {
    client.subscribe('presence', function (err) {
      if (!err) {
        client.publish('presence', msg)
      }
    })
  })

  client.on('message', function (topic, message) {
    // message is Buffer
    //console.log(message.toString())
    rn_bridge.channel.send(message.toString());
    client.end()
  })

});

// Inform react-native node is initialized.
rn_bridge.channel.send("Node was initialized.");