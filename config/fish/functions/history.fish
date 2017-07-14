function history
    if is_greater_version $version "2.4.0";
        builtin history --show-time='%Y/%m/%d %H:%M:%S ' | sort;
    end
end