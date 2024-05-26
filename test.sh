#!/bin/bash
make

echo "Test 1"
./cell_auto 2290659224 5 > my_test1.pbm
diff my_test1.pbm test1_expected.pbm
echo "Test 2"
./cell_auto 30 13 > my_test2.pbm
diff my_test2.pbm test2_expected.pbm
echo "Test 3"
./cell_auto 65510 9 > my_test3.pbm
diff my_test3.pbm test3_expected.pbm

echo "All tests passed!"
rm my_test1.pbm my_test2.pbm my_test3.pbm

make clean