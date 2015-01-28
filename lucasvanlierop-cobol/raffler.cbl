        >>source format is free
identification division.
    program-id. domcode-raffler.
    author. Lucas van Lierop.

data division.
    working-storage section.
        01 file-name pic x(50).
procedure division.
    display 'ready to raffle!'.
    perform 100-initialize.
stop run.

100-initialize.
    accept file-name from argument-value
        on exception
            display
                "attempt to read beyond end of command line"
                upon syserr
            end-display
        not on exception
            display
                "reading " file-name
            end-display
    end-accept.

