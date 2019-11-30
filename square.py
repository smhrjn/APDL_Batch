from polygon import Polygon
from shape import Shape


class Square(Polygon, Shape):
    def area(self):
        return self.get_height() * self.get_width()
