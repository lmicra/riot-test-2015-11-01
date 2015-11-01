'use strict';

import timerService from 'timer-service'; // weird syntax but... it works!

<timetable>
	<span each={items}><yield/></span>
	<script>
		'use strict';

		this.items = Array.apply(null, Array(parseInt(this.opts.times, 10))).map(Number.prototype.valueOf,0);

		this.time = opts.start || 0;

		var _index = 0;
		this.getIndex = () => {
			return ++_index;
		};

		var _timer = null;

		this.on('mount', ()  => {
			timerService.on('updated', (newTime) => {
				this.update({ time: newTime });
			})
//			_timer = setInterval(() => {
//				this.update({ time: timerService.getTime() });
//			}, 1000);
		});

		this.on('unmount', () => {
			clearInterval(_timer);
		});

		this.on('update', () => {
			if (this.items.length !== parseInt(this.opts.times, 10)) {
				this.items = Array.apply(null, Array(parseInt(this.opts.times, 10))).map(Number.prototype.valueOf,0);
			}
		});
	</script>
</timetable>