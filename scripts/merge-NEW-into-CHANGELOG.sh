#!/bin/bash
set -e
root_dir=$(dirname $0)/..
replace=`sed -n '/### Added/,/### Changed/p' NEW.md`
replace=${replace%
### Changed}
number_of_newline=`echo "$replace" | wc -l`
if test $number_of_newline -gt 1
then
	replace=`echo "$replace"|sed -e ':a' -e 'N' -e '$!ba' -e 's/\n/\[!@#\]/g'`
	sed -i '' "1,/### Added/s/### Added/$replace/" $root_dir/CHANGELOG.md
	sed -i '' 's/\[!@#\]/\
/g' $root_dir/CHANGELOG.md
fi

replace=`sed -n '/### Changed/,/### Removed/p' NEW.md`
replace=${replace%
### Removed}
number_of_newline=`echo "$replace" | wc -l`
if test $number_of_newline -gt 1
then
	replace=`echo "$replace"|sed -e ':a' -e 'N' -e '$!ba' -e 's/\n/\[!@#\]/g'`
	sed -i '' "1,/### Changed/s/### Changed/$replace/" $root_dir/CHANGELOG.md
	sed -i '' 's/\[!@#\]/\
/g' $root_dir/CHANGELOG.md
fi

replace=`sed -n '/### Removed/,/### Fixed/p' NEW.md`
replace=${replace%
### Fixed}
number_of_newline=`echo "$replace" | wc -l`
if test $number_of_newline -gt 1
then
	replace=`echo "$replace"|sed -e ':a' -e 'N' -e '$!ba' -e 's/\n/\[!@#\]/g'`
	sed -i '' "1,/### Removed/s/### Removed/$replace/" $root_dir/CHANGELOG.md
	sed -i '' 's/\[!@#\]/\
/g' $root_dir/CHANGELOG.md
fi

replace=`sed -n '/### Fixed/,/\Z/p' NEW.md`
number_of_newline=`echo "$replace" | wc -l`
if test $number_of_newline -gt 1
then
	replace=`echo "$replace"|sed -e ':a' -e 'N' -e '$!ba' -e 's/\n/\[!@#\]/g'`
	sed -i '' "1,/### Fixed/s/### Fixed/$replace/" $root_dir/CHANGELOG.md
	sed -i '' 's/\[!@#\]/\
/g' $root_dir/CHANGELOG.md
fi

echo -e "### Added\n### Changed\n### Removed\n### Fixed" > $root_dir/NEW.md


