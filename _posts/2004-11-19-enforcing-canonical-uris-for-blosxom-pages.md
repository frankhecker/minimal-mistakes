---
comments: false
date: 2004-11-19 06:39:12+00:00
layout: post
slug: enforcing-canonical-uris-for-blosxom-pages
title: Enforcing canonical URIs for Blosxom pages
tags:
- blosxom
---

NOTE: This post refers to the old Blosxom-based version of my blog. I've left it unchanged since it may still be of interest to anyone running Blosxom.

As noted in my discussion of [URI rewriting](http://blog.hecker.org/2004/11/18/uri-rewriting-and-canonical-uris/), we can use Apache to enforce canonical URI forms for HTML files and directories, but need to use a plugin to enforce canonical forms for URIs handled by Blosxom. I've thus written a new [canonicaluri plugin](http://hecker.org/blosxom/plugins/canonicaluri) that checks to see whether the requested URI is in the canonical form for the type of page being requested, and if necessary does a browser redirect to the canonical form of the URI.
The canonical forms are defined as follows:



	
  * URIs for the blog root, categories, and date-based archives should not have an `index.*` component if the flavour being requested is the default flavour (normally "html"), and if an `index.*` component is not present then the URI should have one (and only one) trailing slash.

	
  * URIs for individual entry pages should not have a trailing slash, and also should not have a flavour extension if the flavour being requested is the default flavour (e.g., "html").


For example, if you request either of the URIs

    
    <code>http://www.example.com/blog/foo
    http://www.example.com/blog/foo/index.html
    </code>


where "foo" is a category and "html" is the default flavour, this plugin will force a redirect to the canonical URI

    
    <code>http://www.example.com/blog/foo/
    </code>


Similarly, if you request either of the URIs

    
    <code>http://www.example.com/blog/foo/
    http://www.example.com/blog/foo.html
    </code>


where "foo" is an individual entry and "html" is the default flavour, this plugin will force a redirect to the canonical URI

    
    <code>http://www.example.com/blog/foo
    </code>


Note that this plugin should be used in conjunction with the [extensionless plugin](http://hecker.org/blosxom/extensionless) and should be configured to run after that plugin, in order to recognize extensionless URIs for individual entries; otherwise redirection will fail for individual entry pages.

Also note that this plugin depends on the Apache URI rewriting rules to enforce the restriction that a URI should never have more than one trailing slash. The plugin as presently written can't handle this case because it depends on the `path_info()` function to get the URI path, and the `path_info()` value has already been stripped of any excess trailing slashes that might have been present in the original URI.

See the [plugin code](http://hecker.org/blosxom/plugins/canonicaluri) itself for the full documentation. If you encounter problems with the plugin (or if you just use it and like it) please [send me email](mailto:hecker@hecker.org).

