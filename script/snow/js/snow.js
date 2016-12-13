var snow = function() {
	if (!browserSupportsAnimation()) {
		return false;
	}
	snow.instance = this;
	var targets = document.getElementsByClassName('container-fluid');
	// var targets = document.getElementsByClassName('top-level-nav-container');
	var targetDom = targets && targets[0];
	if (!targetDom) {
		return;
	}
	targetDom.style.position = 'relative';
	var fontHasLoadedState = false;
	var minDuration = 2;
	var maxDuration = 7;
	var minOpacity = 0.3;
	var maxOpacity = 0.8;
	var minSize = 1;
	var maxSize = 20;
	var minRotation = -360;
	var maxRotation = 360;
	var snowInterval = 2000;
	var maxAmountOfFlakesAtOnce = 20;
	var startColor = {
		r: 255,
		g: 255,
		b: 255
	};
	var endColor = {
		r: 0,
		g: 122,
		b: 192
	}; //#007ac0

	var flakeDoms = [];
	var flakePrototype = document.createElement('span');
	flakePrototype.style.fontFamily = 'snowflakes';
	flakePrototype.style.speak = 'none';
	flakePrototype.style.fontStyle = 'normal';
	flakePrototype.style.textTransform = 'none';
	flakePrototype.style.lineHeight = '1';
	flakePrototype.style.MozOsxFontSmoothing = 'grayscale';
	flakePrototype.style.WebkitFontSmoothing = 'antialiased';
	flakePrototype.style.position = 'absolute';
	flakePrototype.style.color = '#ffffff';
	flakePrototype.style.transitionProperty = 'top, transform, color';
	flakePrototype.style.transitionTimingFunction = 'linear';
	flakePrototype.style.top = '0';
	flakePrototype.style.cursor = 'default';
	flakePrototype.textContent = '\ue601';

	var sceneDom = document.createElement('div');
	sceneDom.id = 'SnowScene';
	sceneDom.style.position = 'absolute';
	sceneDom.style.zIndex = 0;
	sceneDom.style.top = '0';
	sceneDom.style.right = '0';
	sceneDom.style.bottom = '0';
	sceneDom.style.left = '0';
	sceneDom.style.overflow = 'hidden';
	targetDom.appendChild(sceneDom);

	var bottom = sceneDom.offsetHeight;

	//create the different 6 different flake variations
	for (var i = 1, len = 6; i <= len; ++i) {
		var flake = flakePrototype.cloneNode();
		flake.textContent = String.fromCharCode(parseInt('e6' + padLeft(i, 2), 16));
		flakeDoms.push(flake);
	}

	function browserSupportsAnimation() {
		var thisBody = document.body || document.documentElement;
		var thisStyle = thisBody.style;
		return thisStyle.transition !== undefined || thisStyle.WebkitTransition !== undefined || thisStyle.MozTransition !== undefined || thisStyle.MsTransition !== undefined || thisStyle.OTransition !== undefined;
	}

	function padLeft(nr, n, str) {
		return Array(n - String(nr).length + 1).join(str || '0') + nr;
	}

	function getRandomFlake() {
		var multiplier = flakeDoms.length - 1
		var num = Math.round(Math.random() * multiplier);
		var flake = flakeDoms[num].cloneNode(true);
		animateFlake(flake);
		return flake;
	}

	function animateFlake(flake) {
		var duration = Math.ceil((Math.random() * (maxDuration - minDuration) + minDuration));
		var rotation = Math.round((Math.random() * (maxRotation - minRotation) + minRotation));
		var size = (Math.random() * (maxSize - minSize) + minSize);
		var opacity = (Math.random() * (maxOpacity - minOpacity) + minOpacity);

		//figure out the opacity using javascript because its more efficient than the browser having to calc and animate opacity.
		//Also opacity was causing some wierd text flickering in safari.
		var startingColor = getColorTween(startColor, endColor, 1 - opacity);

		flake.style.color = startingColor;
		flake.style.left = (Math.random() * 100) + '%';
		flake.style.fontSize = size + 'px';
		flake.style.top = '-' + size + 'px';
		flake.style.transitionDuration = duration + 's';

		//delay the start animation time, so flakes dont all start together. min 1sec.
		var delay = (Math.random() * 1000) + 1000;
		setTimeout(function() {
			flake.style.top = bottom + 'px';
			flake.style.color = 'rgb(' + endColor.r + ',' + endColor.g + ',' + endColor.b + ')';;
			flake.style.transform = 'rotate(' + rotation + 'deg)';
		}, delay);
		var expiresIn = (duration * 1000) + delay;
		setTimeout(function() {
			//cleanup
			flake.parentNode.removeChild(flake);
		}, expiresIn);
	}

	function lerp(a, b, u) {
		return (1 - u) * a + u * b;
	}

	function getColorTween(start, end, u) {
		var r = Math.round(lerp(start.r, end.r, u));
		var g = Math.round(lerp(start.g, end.g, u));
		var b = Math.round(lerp(start.b, end.b, u));
		return 'rgb(' + r + ',' + g + ',' + b + ')';
	}

	function fontHasLoaded() {
		var flake = flakeDoms[0].cloneNode(true);
		flake.style.fontSize = '20px';
		sceneDom.appendChild(flake);
		var width = flake.offsetWidth;
		flake.parentNode.removeChild(flake);
		//if the width is not 21 we know the font hasn't loaded.
		if (width == '21') {
			return true;
		}
		return false;
	}

	function generateFlakes() {
		if (!fontHasLoadedState) {
			//keep checking it until its true
			fontHasLoadedState = fontHasLoaded();
			return;
		}
		var numberOfFlakes = Math.ceil(Math.random() * maxAmountOfFlakesAtOnce);
		for (var i = 1; i <= numberOfFlakes; ++i) {
			sceneDom.appendChild(getRandomFlake());
		}
	}
	generateFlakes();
	this.interval = setInterval(generateFlakes, snowInterval);
}
snow.getInstance = function() {
	return snow.instance;
}
snow.prototype = {
	stop: function() {
		if (snow && snow.instance && snow.instance.interval) {
			clearInterval(snow.instance.interval);
		}
	}
}
jQuery(document).ready(function() {
	new snow();
});
