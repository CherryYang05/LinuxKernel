extern void foo_print(char* p, int len);

int  bar_func(int a, int b) {
    if (a > b) {
       foo_print("The first one\n", 14);
    } else {
       foo_print("The second one\n", 14);
    }
    return 0;
}
