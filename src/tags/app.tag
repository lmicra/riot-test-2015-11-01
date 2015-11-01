<app>
	<input type="number" value="{v}" onchange="{changed}" />
	<br>
	<yield/>
	<script>
		this.v = 10;

		this.changed = (evt) => {
			console.log(evt.target.value, this.v);
			this.update({ v: parseInt(evt.target.value, 10) });
			riot.update();
//
//			Object.keys(this.tags).map((tagName) => this.tags[tagName]).forEach((tag) => {
//				tag.update();
//				console.log(typeof tag);
//			});
//
//			this.tags.forEach((tag) => {
//				tag.update();
//			});
		};

//		this.on('update', () => {
//			console.log(this.v);
//		});
	</script>
</app>