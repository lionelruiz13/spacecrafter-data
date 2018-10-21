#!/usr/bin/perl

#
# Convert gettext po translation files to json format  
# 

# 20100901 Rob

my($infile, $outfile) = @ARGV;

if($infile eq "" || $outfile eq "") {
	print "USAGE: infile outfile\n";
	exit;
}


open(IN, "<$infile") || die "Could not read $infile\n";
open(OUT, ">$outfile") || die "Could not write $outfile\n";

print OUT "{\n";

my $fuzzy = 0;
my $skip = 0;
my $msgid = "";
my $msgstr = "";
my $count = 0;

while(<IN>) {

	chomp();

	if($_ eq "") {
		# new entry coming

		if(!$skip && $msgid ne "") {

			if($count) {
				print OUT ",\n";
			}

			if($fuzzy || $msgstr eq "") {
				# default to English
				print OUT "\t\"$msgid\" : \"$msgid\"";
			} else {
				print OUT "\t\"$msgid\" : \"$msgstr\"";
			}
			$count++;
		}

		$msgid = $msgstr = "";
		$skip = $fuzzy = 0;
	}

	next if( $_ =~ /^\#[: ]+/);
	
	if($_ =~ /^\#, fuzzy/) {
		$fuzzy = 1;
		next;
	}

	if($_ =~ /^\#, c-format/) {
		$skip = 1;
		next;
	}

	if($_ =~ /^msgid "([^"]*)"/) {
		$msgid = $1;
		next;
	}

	if($_ =~ /^msgstr "([^"]*)"/) {
		$msgstr .= $1;
		next;
	}

	if($_ =~ /^"([^"]+)"/) {
		$msgstr .= $1;
		next;
	}
	
}


close IN;

print OUT "\n}\n";
close OUT;

print( "$count strings converted\n");
