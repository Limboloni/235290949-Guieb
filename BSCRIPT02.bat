@echo off
:: Script to calculate area and determine the type of shape

:menu
echo Choose a shape to calculate its area:
echo 1. Circle
echo 2. Triangle
echo 3. Quadrilateral
set /p shape="Enter your choice (1-3): "

if %shape%==1 goto circle
if %shape%==2 goto triangle
if %shape%==3 goto quadrilateral
echo Invalid choice. Please enter 1, 2, or 3.
goto menu

:circle
set /p radius="Enter the radius of the circle: "
set /a area=314 * %radius% * %radius% / 100
echo The area of the circle is %area% square units.
goto end

:triangle
set /p side1="Enter the length of the first side: "
set /p side2="Enter the length of the second side: "
set /p side3="Enter the length of the third side: "
set /a s=(%side1% + %side2% + %side3%) / 2
set /a area=!s! * (!s! - %side1%) * (!s! - %side2%) * (!s! - %side3%)
:: Using set /a only for simplicity, real calculation needs a square root
echo Approximate area of the triangle (without square root): !area!

if %side1%==%side2% if %side2%==%side3% (
    echo The triangle is equilateral.
) else if %side1%==%side2% if not %side2%==%side3% (
    echo The triangle is isosceles.
) else (
    echo The triangle is scalene.
)
goto end

:quadrilateral
set /p length="Enter the length: "
set /p width="Enter the width: "
set /a area=%length% * %width%
echo The area of the quadrilateral is %area% square units.

if %length%==%width% (
    echo The quadrilateral is a square.
) else (
    echo The quadrilateral is a rectangle.
)
goto end

:end
pause
