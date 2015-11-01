'use strict';

import riot from 'riot';

var timeField = Symbol();
var intervalField = Symbol();

class TimerService {
	constructor(time, start) {
		riot.observable(this); // enable events: "updated" (on / trigger)
		var _start = start || false;
		this[timeField] = time || 0;
		this[intervalField] = null;
		if (_start) {
			this.start();
		}
	}

	start() {
		if (this[intervalField] === null) {
			this[intervalField] = setInterval(() => this._tick(), 1000);
		}
	}

	stop() {
		if (this[intervalField] !== null) {
			clearInterval(this[intervalField]);
		}
	}

	getTime() {
		return this[timeField];
	}

	_tick() {
		this[timeField] = this[timeField] + 1;
		this.trigger('updated', this[timeField]);
	}
}

export default new TimerService(0, true);
