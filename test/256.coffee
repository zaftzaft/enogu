enogu = require "../src/index"

for i in [0..255]
  console.log enogu.c256(i)("#{i}"), enogu.bg256(i)("#{i}")

