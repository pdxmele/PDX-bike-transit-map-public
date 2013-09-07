/* From https://github.com/shramov/leaflet-plugins/blob/master/layer/Marker.Rotate.js / http://psha.org.ru/b/leaflet-plugins.html by @shramov
 * Based on comments by @runanet and @coomsie 
 * https://github.com/CloudMade/Leaflet/issues/386
 *
 * Wrapping function is needed to preserve L.Marker.update function
 
Copyright (c) 2011-2012, Pavel Shramov
All rights reserved. 

Redistribution and use in source and binary forms, with or without modification, are 
permitted provided that the following conditions are met: 

   1. Redistributions of source code must retain the above copyright notice, this list of 
      conditions and the following disclaimer. 

   2. Redistributions in binary form must reproduce the above copyright notice, this list 
      of conditions and the following disclaimer in the documentation and/or other materials
      provided with the distribution. 

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY 
EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF 
MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE 
COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, 
EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF 
SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) 
HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR 
TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS 
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

 */

(function () {
var _old_update = L.Marker.prototype.update;
L.Marker.include({
	update: function() {
		this._icon.style[L.DomUtil.TRANSFORM] = "";
		_old_update.apply(this, []);

		if (this.options.iconAngle) {
			var a = this.options.icon.options.iconAnchor;
			var s = this.options.icon.options.iconSize;
			a = L.point(s).divideBy(2)._subtract(L.point(a));
			var transform = '';
			transform += ' translate(' + -a.x + 'px, ' + -a.y + 'px)';
			transform += ' rotate(' + this.options.iconAngle + 'deg)';
			transform += ' translate(' + a.x + 'px, ' + a.y + 'px)';
			this._icon.style[L.DomUtil.TRANSFORM] += transform;
		}
	},

	setIconAngle: function (iconAngle) {
		this.options.iconAngle = iconAngle;

		if (this._map) this.update();
	}
});
}());