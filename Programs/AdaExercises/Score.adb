-- Kyle Kaminski
-- Ada Score Program

with Ada.Text_IO;
with Ada.Integer_Text_IO;
use Ada.Text_IO;
use Ada.Integer_Text_IO;

procedure Score is

	N: Integer;
  score: Integer;
	
begin

  score := 0; -- Default value

	Put_Line("Enter N: ");
	Get(N); -- Gets user input

	if (N mod 2) = 0 then -- If N is even
		score := score + 5; -- Add 5 to score
  else
    score := score + 1; -- Add 1 to score
  end if;
    
  if N < 0 then -- If N is positive
    score := score + 2; -- Add 2 to score
  end if;
    
  if N > 100 then -- If N is greater than 100
    score := score + 10; -- Add 10 to score
  end if;
  
  Put_Line("Score of:" & natural'image(score)); 
  -- Concatenate to display output
  
end Score;