%module li_std_string_extra

#if defined SWIGSCILAB
// Not sure what's going on here but we get:
// .././../li_std_string_extra.i:12: Warning 402: Base class 'std::string' is incomplete.
// ../../../../Lib/typemaps/std_string.swg:16: Warning 402: Only forward declaration 'std::string' was found.
%warnfilter(SWIGWARN_TYPE_INCOMPLETE) A;
#endif

%naturalvar A;


%include <std_basic_string.i>
%include <std_string.i>


%inline %{

struct A : std::string 
{
  A(const std::string& s) : std::string(s)
  {
  }
};

struct B 
{
  B(const std::string& s) : cname(0), name(s), a(s)
  {
  }
  
  char *cname;
  std::string name;
  A a;

};
 

const char* test_ccvalue(const char* x) {
   return x;
}

char* test_cvalue(char* x) {
   return x;
}

std::basic_string<char> test_value_basic1(std::basic_string<char> x) {
   return x;
}

std::basic_string<char,std::char_traits<char> > test_value_basic2(std::basic_string<char,std::char_traits<char> > x) {
   return x;
}

std::basic_string<char,std::char_traits<char>,std::allocator<char> > test_value_basic3(std::basic_string<char,std::char_traits<char>,std::allocator<char> > x) {
   return x;
}

std::basic_string<char,std::char_traits<char>,std::allocator<char> > test_value_basic_overload(std::basic_string<char,std::char_traits<char>,std::allocator<char> > x) {
   return x;
}

std::basic_string<char,std::char_traits<char>,std::allocator<char> > test_value_basic_overload(int) {
   return "int";
}

#ifdef SWIGPYTHON_BUILTIN
bool is_python_builtin() { return true; }
#else
bool is_python_builtin() { return false; }
#endif

%}

%include "li_std_string.i"

