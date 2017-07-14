function is_greater_version
    test (printf '%s\n' $argv | sort -V | head -n 1) != $argv[1]
end