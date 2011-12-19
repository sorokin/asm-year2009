                mov     ax, cs
                mov     ds, ax

                mov     ax, 0b800h
                mov     es, ax

                mov     si, msg
                xor     di,di

                mov     ah, 7
                mov     cx, msg_size

@@:
                lodsb
                stosw
                loop    @b

                cli
                hlt

msg:
                db      "Hello, world!"
msg_size = $ - msg