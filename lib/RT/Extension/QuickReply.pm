use strict;
use warnings;
package RT::Extension::QuickReply;

our $VERSION = '0.01';

RT->AddStyleSheets("rt-extension-quickreply.css");

=head1 NAME

RT-Extension-QuickReply - QuickReply on ticket display pages, etc.

=head1 INSTALLATION 

=over

=item C<perl Makefile.PL>

=item C<make>

=item C<make install>

May need root permissions

=item apply etc/search_results.diff only for RT older than 4.2.1

    patch /path/to/rt/share/html/Search/Results.html < etc/search_results.diff

=item Edit your F</opt/rt4/etc/RT_SiteConfig.pm>

If you are using RT 4.2 or greater, add this line:

    Plugin('RT::Extension::QuickReply');

For RT 4.0, add this line:

    Set(@Plugins, qw(RT::Extension::QuickReply));

or add C<RT::Extension::QuickReply> to your existing C<@Plugins> line.

By default, Quick reply is not enabled in search results page, you can turn it
on by:

    Set($QuickReplyInSearchResults, 1);

By default, Quick reply shows up in Ticket Display page after History section,
you can customize the position by:

    Set($QuickReplyPositionInDisplay, 'BeforeShowHistory');

or

    Set($QuickReplyPositionInDisplay, 'BeforeShowSummary');

=item Clear your mason cache

    rm -rf /opt/rt4/var/mason_data/obj

=item Restart your webserver

=back

=head1 AUTHOR

sunnavy <sunnavy@bestpractical.com>

=head1 BUGS

All bugs should be reported via email to
L<bug-RT-Extension-QuickReply@rt.cpan.org|mailto:bug-RT-Extension-QuickReply@rt.cpan.org>
or via the web at
L<rt.cpan.org|http://rt.cpan.org/Public/Dist/Display.html?Name=RT-Extension-QuickReply>.

=head1 LICENSE AND COPYRIGHT

This software is Copyright 2013 Best Practical Solutions, LLC.

This is free software, licensed under:

  The GNU General Public License, Version 2, June 1991

=cut

1;
