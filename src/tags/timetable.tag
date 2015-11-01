<timetable>
	<span each={items}><yield/></div>
	<script>
		'use strict';

		this.ts = Date.now();

		this.items = Array.apply(null, Array(parseInt(this.opts.times, 10))).map(Number.prototype.valueOf,0);

		this.time = opts.start || 0;

		var _tick = () => {
			this.update({ time: ++this.time });
		};

		var _index = 0;
		this.getIndex = () => {
			return ++_index;
		};

		var _timer = setInterval(_tick, 1000);

		this.on('unmount', () => {
			clearInterval(_timer);
		});
	</script>
</timetable>