import { PolymerElement, html } from '@polymer/polymer/polymer-element.js';
//import '@polymer/iron-icons/iron-icons.js';
//import '../icon-toggle.js';

//import Quagga from 'quagga/dist/quagga.js';

/*
 {position: fixed; width: 100%; height: 100%; ; text-align: center;}

*/

import Quagga from 'quagga';

class BarcodeScanner extends PolymerElement {
  static get template() {
    return html`
    <style>

    #barcodeScannerID.viewport {
      position: fixed;
      right: 0;
      bottom: 0;
      min-width: 100%;
      min-height: 100%;
    }

    #barcodeScannerID.viewport > canvas, #barcodeScannerID.viewport > video {max-width: 100%;width: 100%;}
    canvas.drawing, canvas.drawingBuffer {position: absolute; left: 0; top: 0;}


    </style>

    <div id="barcodeScannerID" class="viewport"></div>

    `;
  }
  static get properties () {
    return {
      result: {
        type: Object,
        notify: true,
        readOnly: true,
        value: null
      },
      code: {
        type: String,
        notify: true,
        reflectToAttribute: true,
        readOnly: true,
        value: ''
      },
      active: {
        type: Boolean,
        value: false,
        notify: true,
        readOnly: true,
        reflectToAttribute: true
      }
    };
  }
  constructor() {
    super();
  }
  ready() {
    super.ready();
    var self = this;
    var liveStreamConfig = {
    			inputStream: {
            name : "Live",
    				type : "LiveStream",
            target: this.shadowRoot.querySelector('#barcodeScannerID.viewport'),
    				constraints: {
    					facingMode: "environment" // or "user" for the front camera
    				},
            area: { // defines rectangle of the detection/localization area
              top: "30%",    // top offset
              right: "10%",  // right offset
              left: "10%",   // left offset
              bottom: "30%"  // bottom offset
            },
            singleChannel : false
    			},
          locate: true,
    			locator: {
    				patchSize: "medium",
    				halfSample: true
    			},
    			numOfWorkers: (navigator.hardwareConcurrency ? navigator.hardwareConcurrency : 2),
    			decoder: {
    				readers:[ {"format":"ean_reader","config":{}} ]
    			}
    		};
    // Start the live stream scanner when the modal opens
    Quagga.init(
      liveStreamConfig,
    	function(err) {
    				if (err) {
              console.log(err);
    					Quagga.stop();
              self._setActive(false);
    					return;
    				}
    				Quagga.start();
            self._setActive(true);
            //console.log("active=", self.active);
    	}
    );


    Quagga.onProcessed(function(result) {
        var drawingCtx = Quagga.canvas.ctx.overlay;
        var drawingCanvas = Quagga.canvas.dom.overlay;

        drawingCtx.clearRect(0, 0, parseInt(drawingCanvas.getAttribute("width")), parseInt(drawingCanvas.getAttribute("height")));

        var w = drawingCanvas.getAttribute("width");
        var h = drawingCanvas.getAttribute("height");
        var w10 = w*0.1;
        var h30 = h*0.3;

        var zoneBox = [[w10, h-h30], [w10, h30], [w-w10,h30], [w-w10, h-h30]];
        Quagga.ImageDebug.drawPath(zoneBox, {x: 0, y: 1}, drawingCtx, {color: 'blue', lineWidth: 5});

        if (result && self.active) {
          if (result.boxes) {
        	  result.boxes.filter(function (box) {
        	     return box !== result.box;
        		}).forEach(function (box) {
        		    Quagga.ImageDebug.drawPath(box, {x: 0, y: 1}, drawingCtx, {color: 'green', lineWidth: 2});
            });
          }

          if (result.box) {
            Quagga.ImageDebug.drawPath(result.box, {x: 0, y: 1}, drawingCtx, {color: 'blue', lineWidth: 2});
          }

          if (result.codeResult && result.codeResult.code) {
            Quagga.ImageDebug.drawPath(result.line, {x: 'x', y: 'y'}, drawingCtx, {color: 'red', lineWidth: 3});
          }
        }
    });

    Quagga.onDetected(function(result) {
        if (self.active && result && result.codeResult) {
          self._setResult(result.codeResult);
        if (result.codeResult.code){
          self._setCode(result.codeResult.code);
          self.dispatchEvent(new CustomEvent('recognize', {detail:{code: result.codeResult.code, result: result.codeResult}}));
        }
      }
    });

    //console.log("ready");
  }
  disconnectedCallback() {
    super.disconnectedCallback();
    Quagga.stop();
    this._setActive(false);
    //console.log("disconnectedCallback");
  }
  connectedCallback() {
    super.connectedCallback();
    //console.log("connectedCallback");
  }
}
customElements.define('barcode-scanner',BarcodeScanner);
