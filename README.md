
# InfiniSolar-Voltronic-Home-Assistant-Integration

A way to get a InfiniSolar 10k-PAR-B inverter with PIP17 protocol (and many others) integrated into Home-Assistant with the help of the mpp-solar python project.

![grafik](https://github.com/dominikamann/InfiniSolar-Voltronic-Home-Assistant-Integration/assets/29973737/2d56d31c-ed31-42c8-a67a-d74205e5a2ee)

 **Step by Step**
 
 1. Install Home Assistant -> https://www.home-assistant.io/
 2. Install a MQTT Broker -> E.g https://mosquitto.org | In my example use Username "Test", Empty Password
 3. Install MPP-Solar Project -> https://github.com/jblance/mpp-solar
 4. Plugin USB Cable of Inverter
 5. Create a file named "solardataget.sh" and add the content of "solardataget.sh"
 6. Setup a cron job which runs every 5 Minutes with the command "sudo solardataget.sh" (run sudo crontab -e | and add line */5 * * * * sudo bash /home/smarthome/test/solardataget.sh)
 7. Add the content of "configuration.yaml" to your Home-Assistant configuration file
 8. Add a new dashboard in Home-Assistant, edit it with YAML and add the content of "ha_dashboard.yaml"
 9. Install Node-Red -> https://nodered.org/
 10. Open Node-Red and import flow "Node-Red-MPP_DAILY_YEARLY_TO_HA-Flow.txt"
 11. Enjoy it ;)

**Why Node-Red?**

MPP-SOLAR is sending e.g. the date / year / month as a mqtt topic content. This will not work for home assistant. My node-red flow converts to topic name in a HA conform name. E.g. "EY2021/value" to "EY/value".  

**How to use it with other voltronic/mpp-solar/... inverters?**

In the most cases you only have to adapt the "solardataget.sh" commands. There is a pretty good documentation for all supported inverters and protocols at https://github.com/jblance/mpp-solar
