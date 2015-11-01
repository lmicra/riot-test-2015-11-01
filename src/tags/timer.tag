<timer>
	S:{ parent.time } I: { index }
	<style>
		timer {
			display: inline-block;
		}
	</style>
	<script>
		'use strict';

//		this.ts = Date.now();
		this.index = opts.index();

/*
		this.time = opts.start || 0;

		this.tick = () => {
			this.update({
				time: ++this.time
			});
		};

		var timer = setInterval(this.tick, 1000);

		this.on('unmount', function () {
			clearInterval(timer);
		});
*/
	</script>
</timer>