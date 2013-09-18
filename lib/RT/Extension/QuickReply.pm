use strict;
use warnings;
package RT::Extension::QuickReply;

our $VERSION = '0.01';

=head1 NAME

RT-Extension-QuickReply - QuickReply on ticket display pages, etc.

=head1 INSTALLATION 

=over

=item C<perl Makefile.PL>

=item C<make>

=item C<make install>

May need root permissions

=item apply etc/search_results.diff

    patch /path/to/rt/share/html/Search/Results.html < etc/search_results.diff

=item Edit your F</opt/rt4/etc/RT_SiteConfig.pm>

Add this line:

    Set(@Plugins, qw(RT::Extension::QuickReply));

or add C<RT::Extension::QuickReply> to your existing C<@Plugins> line.

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

Shipwright is Copyright 2013 Best Practical Solutions, LLC.

This is free software, licensed under:

  The GNU General Public License, Version 2, June 1991

=cut

1;
