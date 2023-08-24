def function_that_retries
    max_retries = 3
    counter = 0
    
    begin
        puts "START"
        # a demo of an exception
        raise "Exception" if counter < max_retries
        
        puts "DONE"
    rescue
        if counter < max_retries
            counter += 1
            puts "RETRY #{counter}"
            retry        
        else
            puts "SORRY, YOU REACHED THE MAXIMUM NUMBER OF 3 RETRIES"
        end
    end
end

function_that_retries
