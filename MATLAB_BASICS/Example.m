clc;
clear;

a = 9;
b = 5;

add = a + b;
disp(add);

div = a/b;
disp(div);

mul = a * b;
disp(mul);

arr1 = 5:5:25;

disp(arr1); 

arr2 = arr1 / 5;

disp(arr2);

r = struct('Favorite_Movie', 'Terminator', 'Favorite_Actor', 'sallu');
t = struct('Favorite_Movie', 'the witcher', 'Favorite_Actor', 'White');
person = [r,t];
disp(person);