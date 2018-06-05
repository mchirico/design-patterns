interface DrawAPI {
  drawCircle(radius: number, x: number, y: number): string;
}


abstract class Shape {
  protected drawAPI: DrawAPI;

  constructor() {
  }

  protected Shape(drawAPI: DrawAPI) {
    this.drawAPI = drawAPI;
  }

  public abstract draw(): string;
}



class Circle extends Shape {
  x: number;
  y: number;
  radius: number;

  public constructor(x: number, y: number, radius: number, drawAPI: DrawAPI) {
    super();
    super.Shape(drawAPI);
    this.x = x;
    this.y = y;
    this.radius = radius;
  }

  public draw(): string {
    return this.drawAPI.drawCircle(this.radius, this.x, this.y);

  }
}




class RedCircle implements DrawAPI {
  public drawCircle(radius: number, x: number, y: number): string {
    return `Drawing Circle[ color: red, radius:  ${radius} , x: ${x}, y: ${y} `;
  }
}

class GreenCircle implements DrawAPI {
  public drawCircle(radius: number, x: number, y: number): string {
    return `Drawing Circle[ color: green, radius:  ${radius} , x: ${x}, y: ${y} `;
  }

}



export class BridgeDemo {
  redCircle: Shape;
  greenCircle: Shape;

  constructor() {
    this.redCircle = new Circle(100, 100, 10, new RedCircle());
    this.greenCircle = new Circle(100, 100, 10, new GreenCircle());
  }

  draw(): string {
    let msg = this.redCircle.draw();
    msg += '\n';
    msg += this.greenCircle.draw();
    return msg;
  }

}
