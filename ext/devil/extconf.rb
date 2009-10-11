require 'mkmf'

if RUBY_PLATFORM =~ /mingw/
    $CFLAGS += ' -I/home/john/.rake-compiler/ruby/ruby-1.8.6-p287/include/'
    $LDFLAGS += ' -L/home/john/.rake-compiler/ruby/ruby-1.8.6-p287/lib/'
end

if RUBY_PLATFORM =~ /win/
    exit unless have_library("DevIL");
else
    exit unless have_library("IL");
end

exit unless have_library("ILU");

#have_library("ILUT", "ilutInit");

create_makefile('devil')
