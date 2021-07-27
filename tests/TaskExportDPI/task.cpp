extern "C" void get_1(int* o);
extern "C" void get_2(int* o) {
  get_1(o);
  *o *= 2;
}
