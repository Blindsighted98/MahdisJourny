function output = echo_gen(input, Fs, delay, amp)
rounded_delay=round(Fs.*delay);
delayed_elements=zeros(rounded_delay,1);
echo=[delayed_elements;input*amp];

temp_output=echo+[input;delayed_elements];

if max(abs(temp_output))>1
    temp_output=temp_output./max(abs(temp_output));
end

output=temp_output;
end