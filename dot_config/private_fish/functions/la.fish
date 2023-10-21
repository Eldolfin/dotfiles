function la --wraps=ls --wraps=timeout\ 0.5\ mosquitto_pub\ -h\ 192.168.1.1\ -t\ \'cmnd/tasmota_C1EEA3/Power\'\ -m\ \'TOGGLE\'\ \|\|\ curl\ \'http://192.168.1.31/cm\?cmnd=POWER+TOGGLE\' --description alias\ la=timeout\ 0.5\ mosquitto_pub\ -h\ 192.168.1.1\ -t\ \'cmnd/tasmota_C1EEA3/Power\'\ -m\ \'TOGGLE\'\ \|\|\ curl\ \'http://192.168.1.31/cm\?cmnd=POWER+TOGGLE\'
  timeout 0.5 mosquitto_pub -h 192.168.1.1 -t 'cmnd/tasmota_C1EEA3/Power' -m 'TOGGLE' || curl 'http://192.168.1.31/cm?cmnd=POWER+TOGGLE' $argv
        
end
