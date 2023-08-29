#include <stdio.h>
#include <wctype.h>
#include <locale.h>
#include <wchar.h>

int main() {
    setlocale(LC_ALL, ""); // Set the locale to handle wide characters

    wint_t previous_char = WEOF;
    wint_t current_char;

    while ((current_char = getwchar()) != WEOF) {
        if ((iswalnum(current_char) || iswspace(current_char)) &&
            !(iswspace(previous_char) && iswspace(current_char))) {
            putwchar(current_char);
        }

        previous_char = current_char;
    }

    return 0;
}

