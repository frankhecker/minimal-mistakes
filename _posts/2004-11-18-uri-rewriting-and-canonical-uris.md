---
comments: false
date: 2004-11-18 07:10:19+00:00
layout: post
slug: uri-rewriting-and-canonical-uris
title: URI rewriting and canonical URIs
tags:
- blosxom
- site
---

NOTE: This post refers to the older Blosxom-based version of my blog. I've left the post as is in case it's of interest to anyone running Blosxom.

Here I document the way in which I use URI rewriting (along with redirection and a couple of Blosxom plugins) to help implement my personal [design philosophy](http://hecker.org/site/design-philosophy) for my web site. My goal is to create a unified URI space within which static and dynamic content can transparently co-exist, with publicly-visible URIs for human-readable content (i.e., HTML pages) having a canonical form that omits file extensions or other content type specifiers.

Achieving this goal requires solving two separate problems: intermixing dynamic and static content (in my case, Blosxom-generated and non-Blosxom content) in the same URI hierarchy, and recognizing and enforcing preferred canonical forms for URIs.


### Intermixing dynamic and static content


As an example of freely intermixing dynamically-generated content and static content (e.g., images) within the same URI hierarchy, consider a Blosxom-based web site where `http://www.example.com/foo` is a Blosxom category, `/foo/bar.html` is the HTML page displayed for an individual Blosxom entry in that category, and `/foo/baz.jpg` is an image referenced by that entry. (We assume that the site is already using one of the [suggested techniques](http://www.blosxom.com/faq/cgi/hide_cgi_bit.htm) for hiding the `/cgi-bin/blosxom.cgi` part of the URI.) With Blosxom there are at least two possible approaches to support such intermixing.

One approach would be to invoke Blosxom (i.e., `blosxom.cgi`) for each and every URI processed, and then to use the [binary plugin](http://www.blosxom.com/plugins/display/binary.htm) or the [static_file plugin](http://www.blosxom.com/plugins/files/static_file.htm) based on it; these Blosxom plugins check to see if a requested URI corresponds to an existing file in the file system and, if so, they return the file's contents as the output (as opposed to trying to generate a Blosxom page).

The second possible approach is the reverse: Have Apache serve up existing files (and indices for existing directories), and invoke Blosxom only when the URI references a file (or directory) that doesn't exist. This is the approach I've taken, for various reasons; in particular, I wanted to avoid the overhead of invoking Blosxom for each and every URI. This approach is also compatible with a strategy of converting all or part of the Blosxom-managed content into static files. For example, one could run `blosxom.cgi` in static mode to generate files and directories under the Apache document root; Apache
would then serve up those files and directories just as it would non-Blosxom content.


### Recognizing and enforcing canonical URIs


We want to enforce the following rules for how URIs should be represented:



	
  * URIs used to access HTML content for directories, Blosxom categories, and Blosxom date-based archive pages should have no `index.html` component and one (and only one) trailing slash:

    
    <code>http://www.example.com/foo/
    http://www.example.com/foo/2004/11/14/
    </code>




	
  * URIs used to access HTML content for static web pages and individual Blosxom entries should have no `.html` extension and no trailing slash:

    
    <code>http://www.example.com/foo/bar
    </code>




	
  * URIs used to access all other (non-HTML) content should have filename extensions; `index.*` components should be included for directories, Blosxom categories, and Blosxom date-based archives,
etc.:

    
    <code>http://www.example.com/foo/baz.png
    http://www.example.com/foo/index.rss
    http://www.example.com/foo/2004/11/14/index.rss
    </code>





Enforcing these conventions is relatively straightforward: if a requested URI does not follow the above rules then we simply force a redirect to the canonical URI. However determining whether a URI is already in the proper canonical form or not is less straightforward, especially when we intermix Blosxom and non-Blosxom content.

For example, if the URI `http://www.example.com/foo/bar` is requested then we have to do the following checks:



	
  * Is `/foo/bar` an existing directory?

	
  * Is there an existing HTML file `/foo/bar.html`?

	
  * Is `/foo/bar` a Blosxom category?

	
  * Is there an individual Blosxom entry `/foo/bar.html`?


In practice we do these checks in the order shown, both to eliminate ambiguity (for example, if there's a directory `/foo/bar` and also a Blosxom entry `/foo/bar.html`) and also because it's easier to implement: The first two checks are done by Apache in the course of doing URI rewriting, and the second two checks are done by a Blosxom plugin once the URI has been passed off to Blosxom for processing.


### Strategy


Here's the overall strategy we follow in doing URI rewriting:



	
  * We divide requests into those that can be satisfied by returning a static file or directory index and those that are for
dynamically-generated content; the latter are rewritten into URIs that invoke the necessary CGI script (`blosxom.cgi`). Note that in some cases we can make an immediate determination as to whether content is static or dynamic, while in other cases we have to wait for the results of subsequent URI rewriting rules.

	
  * If a request references an existing directory then if necessary we force a redirect to the canonical URI for the directory, namely a URI with one (and only one) trailing slash after the directory name.

	
  * If a request is for an existing `index.html` file then we force a redirect to the canonical URI for the directory in which that file is located.

	
  * If a request is for any other existing HTML file then we allow and require that the `.html` file extension be omitted. If the `.html` file extension is included in the requested URI then we force a redirect to the canonical URI for the file, namely a URI that omits the `.html` file extension and has no trailing slashes.

	
  * If a request is for an existing file (or a symbolic link to a file) then it is handled by Apache in the normal way. Any other requests are passed to Blosxom for processing.

	
  * Blosxom (actually, a Blosxom plugin) then performs its own set of checks on URIs, and rewrites URIs and/or forces redirects if needed.




### URI rewriting quirks


Before I discuss the URI rewriting rules themselves, here are various points to keep in mind when reading the rules; some of these points are not necessarily immediately apparent from reading the documentation for the [`mod_rewrite` module](http://httpd.apache.org/docs-2.0/mod/mod_rewrite.html) and the Apache [URL Rewriting Guide](http://httpd.apache.org/docs-2.0/misc/rewriteguide.html):



	
  * In our case we have root access to the system and can put our rewriting rules in the master Apache configuration file (`httpd.conf`). These rules will _not_ work as is if you do not have root access and have to put your rewriting rules in a `.htaccess` file. (I don't have time to revise the rules to work for the `.htaccess` case, but perhaps someone else can do so; unfortunately URI rewriting in a .htaccess file is much more complicated than when done in `httpd.conf`.)

	
  * [RewriteRule](http://httpd.apache.org/docs-2.0/mod/mod_rewrite.html#rewriterule) directives are evaluated in order looking for a match of the URI against the left-hand side of the RewriteRule directive. [RewriteCond](http://httpd.apache.org/docs-2.0/mod/mod_rewrite.html#rewritecond) directives are looked at _only_ if the corresponding RewriteRule directive matches. If the left-hand side of the RewriteRule directive matches and the corresponding RewriteCond directives (if any) evaluate true, then the URI is rewritten into the form specified by the right-hand side of the RewriteRule directive. Otherwise Apache just goes on to the next RewriteRule.

	
  * The URI matched against the RewriteRule directives is not the full URI but rather just the path component of the URI; it does _not_ include either the hostname part or any query string. Thus, for example, if the original request was for
`http://www.example.com/foo/bar?flav=baz` then the RewriteRule directives will be matched against `/foo/bar`. (At least this is true in my case; this works slightly differently if you have to put your rules in a `.htaccess` file.)

	
  * Rule matching is done using regular expressions modeled on those in Perl. However Apache doesn't support the full range of Perl regular expressions, and in particular doesn't support any options to address the "greedy matching" problem. For example, if you match URIs against an expression like `^(.*)//?$` (for example, to detect excess trailing slashes) then for a URI like `/foo//` Apache will assign `$1` to be `/foo/` instead of `/foo` as we'd like. We have to hack around this problem as described in the next section.

	
  * Once we have rewritten a URI to our satisfaction we normally want to stop URI rewriting at that point, and use the the `L` ("last") flag to do this; otherwise Apache would continue evaluating RewriteRule directives looking for further matches. However using `L` by itself is normally not sufficient to get Apache to do the right thing; typically we have to include other flags as discussed below.

	
  * Normally once rewriting ends Apache will simply take the (possibly rewritten) path component of the URI and append it to the defined "document root" value (i.e., the directory where static web content is located). This causes a problem if the URI actually refers to a path for which an Apache [Alias](http://httpd.apache.org/docs-2.0/mod/mod_alias.html#alias) or [ScriptAlias](http://httpd.apache.org/docs-2.0/mod/mod_alias.html#scriptalias) directive is defined. (For example, on my server `/cgi-bin` is not in the main document root, but is located elsewhere as defined by a ScriptAlias directive.) To fix this we use the `PT` ("pass through") flag where needed to tell Apache to first pass the URI through to the [`mod_alias` module](http://httpd.apache.org/docs-2.0/mod/mod_alias.html).

	
  * If the URI refers to an existing directory then after the first round of rewriting ends the Apache `mod_dir` module will initiate so-called "subrequests" for URIs with `index.html`, etc., appended, and each subrequest will start a new round of rewriting.  We don't want to have any of our rewriting rules invoked in that case (among other things, this can lead to problems with looping), so we also use the `NS` ("no subrequest") flag to note that our rules should not be invoked for such internal subrequests.

	
  * In some cases we don't simply want to rewrite the URI, we want to correct perceived mistakes in how the URI was originally requested. (For example, we want all URIs referring to existing directories to end in one--and only one--trailing slash.) For these cases we use the `R` flag to tell Apache to redirect the user's browser to a new and corrected URI. (We actually use `R=301` to specify the HTTP code returned, in this case a code meaning "the URI has permanently moved".) In combination with the `L` flag this immediately ends rewriting for the original URI; a new round of rewriting starts once the browser requests the new URI.




### The rewriting rules


Here are the actual Apache URI rewriting rules we use, in order of evaluation and application:



	
  1. We first enable the rewriting engine and specify a location for logging rewriting actions:

    
    <code>RewriteLog logs/hecker_error_log
    RewriteLogLevel 0
    RewriteEngine on
    </code>


Note that [RewriteLogLevel](http://httpd.apache.org/docs-2.0/mod/mod_rewrite.html#rewriteloglevel) should be set to a non-zero value to enable logging; a loglevel value of 9 produces lots of output and can be very useful when debugging rewriting rules and/or learning how rewriting works.

Also note that the [RewriteBase](http://httpd.apache.org/docs-2.0/mod/mod_rewrite.html#rewritebase) directive is not needed here because we are specifying rewriting rules in the `httpd.conf` configuration file; RewriteBase is typically needed only when specifying rewriting rules in a `.htaccess` file.

	
  2. We start the process of handling trailing slashes by stripping all but the last two trailing slashes off of all URIs:

    
    <code>RewriteRule  ^(.*)///  $1//  [N,NS]
    </code>


The form of this rule is a hack to get around the "greedy matching" problem described above, which prevents us from using the regular expression `^(.*)//+$` for this purpose. For any URI ending in at least three slashes, we rewrite the URI to remove a trailing slash and then use the `N` ("next round") flag to restart rewriting from the beginning. Since this is the first rule this simply repeats the rule until no more than two trailing slashes remain on the URI.

Why stop at two, as opposed to removing all but one slash? Because we want to keep track of URIs with excess trailing slashes and force a redirect further on down; hence we leave at least one excess slash on the URI.

	
  3. We protect against potential XST cross-site scripting attacks by rejecting all HTTP requests with either the TRACE or TRACK methods. (See the relevant [WhiteHat Security press release](http://www.whitehatsec.com/press_releases/WH-PR-20030120.pdf) and a related [VulnWatch list posting](http://archives.neohapsis.com/archives/vulnwatch/2003-q1/0035.html).) The `F` flag causes Apache to immediately send back an HTTP response of 403 ("FORBIDDEN"). (The `L` flag is not needed here because the `F` flag causes rewriting to stop automatically.)

    
    <code>RewriteCond  %{REQUEST_METHOD}  ^(TRACE|TRACK)
    RewriteRule  .*  -  [F,NS]
    </code>




	
  4. We eliminate duplicate trailing slashes at the end of URIs by redirecting to a new URI with only one trailing slash, to enforce canonical forms for directory URIs and also get rid of some potential problems when requesting Blosxom pages.Note that the first rule above guarantees that by the time we get to this rule we'll never see more than two trailing slashes on a URI.

    
    <code>RewriteRule  ^(.*)//$  $1/  [L,R=301,NS]
    </code>




	
  5. We don't attempt to do rewriting of URIs that are handled separately and do not correspond to either Blosxom content or content in our document root. In particular, we don't attempt to rewrite `/cgi-bin/...` or `/usage/...` URIs (for which we define aliases for the virtual host associated with the site) or `/icon/...` URIs (for which `httpd.conf` defines a server-wide alias). Instead we just pass these URIs through to be handled by
`mod_alias`.Note that there is also a server-wide alias for `/manual/` but we ignore this since we aren't serving up a copy of the Apache documentation.  (We include `/icons/` because it is needed for auto-generated directory listings.)

    
    <code>RewriteRule  ^/(cgi-bin|icons|usage)(/.*)?$  -  [L,PT,NS]
    </code>




	
  6. We have Blosxom override the directory index for `/` (the home page) and other existing directories that should be treated as Blosxom categories instead.  (References to other stuff under those directories, including `index.html` pages, is handled below.)Note that these rewrite rules must come first in order to handle these special cases before we check for existing directories in general. The URIs may or may not have a trailing slash; we need to handle both cases. We pass any trailing slash on to Blosxom, which can then force a redirect if the trailing slash is omitted; we do it this way (rather than forcing a redirect here) so that such redirection can be done consistently for all Blosxom categories.

Also note that in order for Blosxom to produce the correct results the directories in question should _not_ have any `index.*` files within the directory. Further on down we explicitly handle the case where an `index.html` page is requested (by redirecting to the canonical URI without `index.html`) but references to other `index.*` pages (e.g., `/misc/index.rss`) will not return the corresponding Blosxom page if a file of that name is already present in the directory.

    
    <code>RewriteRule  ^(/?)$  /cgi-bin/blosxom.cgi$1  [L,PT,NS]
    RewriteRule  ^/(blosxom|misc|mozilla)(/?)$
            /cgi-bin/blosxom.cgi/$1$2  [L,PT,NS]
    </code>




	
  7. We next check to see if the URI corresponds to an existing directory under the document root. If so and the URI has a trailing slash then we simply stop rewriting and use the URI as is; otherwise we add a trailing slash and force a redirect to the new URI.Note that we can't use `%{REQUEST_FILENAME}` in the directory existence check because that variable has not yet been set; hence we have to explicitly append the URI to the document root pathname.

    
    <code>ReWriteCond  %{DOCUMENT_ROOT}/$1  -d
    RewriteRule  ^/(.*)/$  -  [L,NS]
    
    ReWriteCond  %{DOCUMENT_ROOT}/$1  -d
    RewriteRule  ^/(.*)$  /$1/  [L,R=301,NS]
    </code>




	
  8. If the URI is explicitly requesting an index.html file for an existing directory (e.g., `/foo/index.html`) then we force a redirect to the canonical URI for that directory (e.g., `/foo/`).Note that we catch the case where the URI (incorrectly) includes a trailing slash (e.g., `/foo/index.html/`), and redirect that to the canonical URI as well. Note also that skipping this rule on internal subrequests is particularly important; otherwise we'd cause major looping problems with URIs requesting directory indices.

    
    <code>ReWriteCond  %{DOCUMENT_ROOT}$1  -d
    RewriteRule  ^(.*)/index.html(/?)$  $1/  [L,R=301,NS]
    </code>




	
  9. We check to see if the URI is explicitly requesting an existing HTML file (e.g., `/foo/bar.html` where `bar.html` exists). If so then we force a redirect to the canonical URI for the file, without the `.html` file extension (e.g., `/foo/bar`).As with the previous rule, we properly handle the case where the URI (incorrectly) includes a trailing slash, and we make sure to avoid problems with internal subrequests for directory index URIs.

Finally, note a minor bug in the rule: It incorrectly rewrites a URI like `/foo/.html` that references a hidden file named `.html`; I chose to ignore this uncommon (and arguably nonsensical) case.

    
    <code>ReWriteCond  %{DOCUMENT_ROOT}/$1.html  -f
    RewriteRule  ^/(.*).html/?$  /$1  [L,R=301,NS]
    </code>




	
  10. We check to see if the URI corresponds to an existing HTML file after adding a `.html` extension. If so, we rewrite the URI to include the extension and pass it through to Apache.Again we properly handle the case where a trailing slash has been incorrectly added. Also note that we use the `OR` flag on the RewriteCond directive because we are checking to see if the URI references a regular file _or_ a symbolic link; by default all RewriteCond directives must evaluate true in order for the
corresponding rewriting rule to be invoked.

    
    <code>RewriteCond  %{DOCUMENT_ROOT}/$1.html  -f [OR]
    RewriteCond  %{DOCUMENT_ROOT}/$1.html  -l
    RewriteRule  ^/(.*)/$  /$1.html  [L,R=301,NS]
    
    RewriteCond  %{DOCUMENT_ROOT}/$1.html  -f [OR]
    RewriteCond  %{DOCUMENT_ROOT}/$1.html  -l
    RewriteRule  ^/(.*)$  /$1.html  [L,NS]
    </code>




	
  11. We check to see if the URI corresponds to any other (non-HTML) existing file or symbolic link and, if so, we force a redirect if a trailing slash is present.

    
    <code>RewriteCond  %{DOCUMENT_ROOT}/$1  -f [OR]
    RewriteCond  %{DOCUMENT_ROOT}/$1  -l
    RewriteRule  ^/(.*)/$  /$1  [L,R=301,NS]
    </code>




	
  12. Finally, we pass the URI on to Blosxom if it does not correspond to an existing (non-HTML) file or symlink.

    
    <code>RewriteCond  %{DOCUMENT_ROOT}/$1  !-f
    RewriteCond  %{DOCUMENT_ROOT}/$1  !-l
    RewriteRule  ^/(.*)$  /cgi-bin/blosxom.cgi/$1  [L,PT,NS]
    </code>





This concludes the rewriting rules.


### After (Apache) rewriting ends


Once Apache has concluded all rewriting (including further rewriting done for new requests due to redirects) all URIs should be in one of the following forms, and are handled as indicated:



	
  * Canonical URIs for existing directories (e.g., `/foo/`). Each such URI is subsequently processed by the `mod_dir` module, which will attempt to look for a directory index file as specified by the [DirectoryIndex](http://httpd.apache.org/docs-2.0/mod/mod_dir.html#directoryindex) directive. The `mod_dir` module may generate internal subrequests, e.g., for `/foo/index.html`, but these will
not invoke our rewriting rules.If `mod_dir` cannot find an index file then a directory listing will be generated by the [`mod_autoindex` module](http://httpd.apache.org/docs-2.0/mod/mod_autoindex.html) if the `Indexes` option is specified for the [Options](http://httpd.apache.org/docs-2.0/mod/core.html#options) directive.

	
  * URIs for existing HTML files (e.g., `/foo/bar.html`) rewritten from the canonical form of such URIs (e.g., `/foo/bar`). Each such URI is handled normally by Apache (_without_ going through `mod_alias`, since there's no need to do so).

	
  * Canonical URIs for existing non-HTML files (e.g., `/foo/baz.png`). Each such URI is handled normally by Apache (again without going through `mod_alias`).

	
  * URIs to be handled by Blosxom (e.g., `/cgi-bin/blosxom.cgi/foo/`). Each such URI is passed to `mod_alias` (to determine the location of the `cgi-bin` directory) and then the `blosxom.cgi` script is invoked with the path specified (e.g., `/foo`). Note that the path in question is not necessarily (yet) in canonical form, except that it is guaranteed not to have more than one trailing slash.

	
  * Other (non-Blosxom) `cgi-bin` URIs or other URIs needing further translation (e.g., `/icon` URIs for images in auto-generated directory listings). Each such URI is passed to `mod_alias`.




### Canonical URIs in Blosxom


Once a URI is passed to Blosxom then we have to do the same sorts of URI checks, rewriting, and/or redirection done by the Apache URI rewriting rules. We divide this work into two separate plugins:



	
  * The [extensionless plugin](http://hecker.org/blosxom/extensionless) checks requests for which the requested URI lacks a flavour extension (e.g., `/foo/bar`) and adds the appropriate flavour extension (`.html` in our case) to the variable `$blosxom::path_info` if there is an individual entry corresponding to that URI.

	
  * The [canonicaluri plugin](http://blog.hecker.org/2004/11/19/enforcing-canonical-uris-for-blosxom-pages/) checks URIs to see if they are in canonical form and forces a redirect if necessary.


For more information see the documentation for those plugins.
