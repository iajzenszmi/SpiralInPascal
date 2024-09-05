program CircularSpiral;
uses crt, math;

const
  MaxRadius = 20;
  AngleStep = 0.1;  // Controls the smoothness of the spiral
  Pi = 3.14159;

var
  x, y, angle, radius: real;
  cx, cy: integer;

begin
  clrscr;
  cx := 40; // X center of the spiral
  cy := 12; // Y center of the spiral
  
  radius := 0.0;
  angle := 0.0;
  
  while radius < MaxRadius do
  begin
    // Calculate coordinates based on polar to Cartesian conversion
    x := cx + round(radius * cos(angle));
    y := cy + round(radius * sin(angle));
    
    // Keep within screen bounds
    if (x >= 1) and (x <= 80) and (y >= 1) and (y <= 24) then
    begin
      gotoxy(round(x), round(y));
      write('*');
    end;
    
    // Increase the angle and radius to form a spiral
    angle := angle + AngleStep;
    radius := radius + 0.1;
  end;
  
  // Wait for user to close
  readln;
end.
