function stringcmp --description "Compares two string arguments for equality"
    if [ (count $argv) -ne 2 ]
        echo "Usage: stringcmp <string1> <string2>" >&2
        echo "Error: Expected exactly two arguments, but got "(count $argv)"." >&2
        return 1
    end

    if [ "$argv[1]" = "$argv[2]" ]
        echo "The strings are the same"
    else
        echo "The strings are different"
    end
end
