import { Component, OnInit } from '@angular/core';

import { BridgeDemo } from './bridge_lib/BridgeDemo';

@Component({
  selector: 'app-bridge',
  templateUrl: './bridge.component.html',
  styleUrls: ['./bridge.component.css']
})
export class BridgeComponent implements OnInit {
  text0 = '';

  constructor() {
  }

  ngOnInit() {
  }

  public drawDemo() {
    const bd = new BridgeDemo();
    this.text0 = bd.draw();
  }
}
