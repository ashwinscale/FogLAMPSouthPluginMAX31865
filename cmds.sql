--- Database commands to insert the new plugin into FogLAMP

--- Create the south service instannce
INSERT INTO foglamp.scheduled_processes ( name, script ) VALUES ( 'MAX31865',   '["services/south"]' );

--- Add the schedule to start the service at system startup
INSERT INTO foglamp.schedules ( id, schedule_name, process_name, schedule_type,
                                schedule_time, schedule_interval, exclusive, enabled )
       VALUES ( '4f2ede4a-4867-4f05-8932-cede365422ee', -- id
                'MAX31865 async south',                 -- schedule_name
                'MAX31865',                             -- process_name
                1,                                      -- schedule_type (startup)
                NULL,                                   -- schedule_time
                '00:00:00',                             -- schedule_interval
                true,                                   -- exclusive
                true                                    -- enabled
              );

--- Insert the config needed to load the plugin
INSERT INTO foglamp.configuration ( key, description, value )
    VALUES ( 'MAX31865',
             'MAX31865 async South Plugin',
             ' { "plugin" : { "type" : "string", "value" : "max31865async", "default" : "max31865async", "description" : "Python module name of the plugin to load" } } '
           );

