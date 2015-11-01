'use strict';

import timerService from 'timer-service'; // weird syntax but... it works!

<timetable>
	<span each={items}><yield/></span>
	<script>
		'use strict';

		var _getArrayOfZeros = (arrayLength) => {
			return Array.apply(null, Array(arrayLength)).map(Number.prototype.valueOf, 0);
		};

		this.items = _getArrayOfZeros(parseInt(this.opts.times, 10));

		this.time = opts.start || 0;

		var _index = 0;
		this.getIndex = () => {
			return ++_index;
		};

		this.on('mount', ()  => {
			timerService.on('updated', (newTime) => {
				this.update({ time: newTime });
			})
		});

		this.on('update', () => {
			// required to check for opts.times changes
			let _times = parseInt(this.opts.times, 10);
			if (this.items.length !== _times) {
				this.items = _getArrayOfZeros(_times);
			}
		});
	</script>
</timetable>