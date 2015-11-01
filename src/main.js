// main.js
'use strict';

// bootstrap
import timerService from 'timer-service.js'; // import here to start the timerService singleton
import 'tags/app.tag';
import 'tags/timer.tag';
import 'tags/timetable.tag';

//timerService.on('updated', (newTime) => {
//	console.log(newTime);
//});

import riot from 'riot';

riot.mount('app');
