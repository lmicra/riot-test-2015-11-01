<app>
	<input type="number" value="{v}" onchange="{changed}" />
	<br>
	<yield/>
	<script>
		this.v = 10;

		this.changed = (evt) => {
			this.update({ v: parseInt(evt.target.value, 10) });
			riot.update();
		};
	</script>
</app>