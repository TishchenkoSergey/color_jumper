// Color generator service parameters
/// Construct an sRGB color from the lower 8 bits of four integers.
/// a is the alpha value, with 0 being transparent and 255 being fully opaque.
const kColorTransparent = 255;
/// r,g,b is red,green,blue, from 0 to 255.
const kColorMaxRangeValue = 256;

/// If a color's luminance is below this threshold, it is treated as dark,
/// and a light-colored text (e.g., white) should be used on top of it for better readability.
const kLuminanceDarkThreshold = 0.5;

