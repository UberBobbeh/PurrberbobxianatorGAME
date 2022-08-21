//Movement
x = lerp(x, idealx, 0.1);
y = lerp(y, idealy, 0.1);

//Cooldown
cooldown = max(cooldown - 1, 0);