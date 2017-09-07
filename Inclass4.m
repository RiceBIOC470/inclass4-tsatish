%Inclass assignment 4. Due at the start of class on 9/12/17

%1. (a) Write code that makes a file with the words "Random numbers 1" on its
%own line, then 10 lines with 13 random numbers each, then "Random numbers
%2" on its own line, then 9 lines with 7 random numbers each. (b) Write code
%that reads only the first line of random numbers in the file and stores
%them as numbers in an array. 

%(a)

filename = "inclass3.txt";
fid = fopen(filename, 'w');
fprintf(fid, "Random numbers 1\n");
for i = 1:10
    random_number = randi(10,13,1);
    fprintf(fid, "%i %i %i %i %i %i %i %i %i %i %i %i %i\n", random_number);
end
fprintf(fid, "Random numbers 2\n");
for i = 1:9
      random_number = randi(10,7,1);
    fprintf(fid, "%i %i %i %i %i %i %i \n", random_number);
end

%(b)

filename = "inclass3.txt";
fid = fopen(filename, 'r');
fgetl(fid);
numbers = cellfun(@str2num, strsplit(fgetl(fid), " "));


% 2. Write a function that takes an array as input and returns a logical
% variable which is true if the sum of the numbers in the array is greater
% than or equal to 10 and false if it is less than 10. 


random_array = randi(10, 1, 3);
random_array
disp(sumcheck_inclass4(random_array));



