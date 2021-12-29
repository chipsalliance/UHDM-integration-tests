extern "C" int get_1();

extern "C" int get_2() {
  return get_1() * 2;
}
