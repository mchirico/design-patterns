import { async, ComponentFixture, TestBed } from '@angular/core/testing';
import {FormsModule, ReactiveFormsModule} from '@angular/forms';

import { BridgeComponent } from './bridge.component';
import {BrowserModule} from '@angular/platform-browser';

describe('BridgeComponent', () => {
  let component: BridgeComponent;
  let fixture: ComponentFixture<BridgeComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      imports: [  BrowserModule, FormsModule, ReactiveFormsModule],
      declarations: [ BridgeComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(BridgeComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
