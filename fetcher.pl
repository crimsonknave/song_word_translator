#!/usr/bin/env perl

use Lyrics::Fetcher;
my ($title, $artist, $file);

$artist = $ARGV[0];
$title = $ARGV[1];
print $artist."\n";
print $title."\n";
exit unless ($artist && $title);
open($file, ">$artist-$title.lyric");
print $file Lyrics::Fetcher->fetch($artist, $title, "LyricWiki");
close($file);
