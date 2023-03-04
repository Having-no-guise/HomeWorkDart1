class Cuboid {
  final double _length;
  final double _width;
  final double _height;
  

  Cuboid.designer(this._length, this._width, this._height);

  double get surfaceArea {
    double area = 2*(_length*_width + _width*_height + _length*_height);
    return area;
  }

  double get volume {
    double v = _length * _width * _height;
    return v;
  }
}

class Cube extends Cuboid {
  Cube(double len): super.designer(len, len, len);
}


void main() {
  Cuboid cuboid = Cuboid.designer(1,2,3);

  Cube cube = Cube(2);

  print('''Cuboid Volume = ${cuboid.volume.round()} \n 
Cuboid Surface Area = ${cuboid.surfaceArea.round()}\n=====================\n''');

  print('''Cube Volume = ${cube.volume.round()} \n 
Cube Surface Area = ${cube.surfaceArea.round()}''');

}
