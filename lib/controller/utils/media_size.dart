late double mediaHeight;
late double mediaWidth;

const double designHeight = 690;
const double designWidth = 350;

double fixedRatio(double h0w) {
  double functionWidth =
      ((mediaWidth < mediaHeight ? mediaWidth : mediaHeight) *
          (h0w / designWidth));
  return functionWidth;
}
