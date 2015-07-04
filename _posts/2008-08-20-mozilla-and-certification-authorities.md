---
comments: false
date: 2008-08-20 03:33:02+00:00
layout: post
slug: mozilla-and-certification-authorities
title: Mozilla and certification authorities
tags:
- mozilla
---

Johnathan Nightingale recently addressed a very common question, namely why [Firefox doesn't automatically accept self-signed SSL certificates as being valid](http://blog.johnath.com/2008/08/05/ssl-question-corner/). I don't have much to add to Johnathan's discussion of the issues with self-signed certificates, but speaking on behalf on the Mozilla Foundation I do want to address some of the comments that I've seen people make with regard to SSL certificates, certification authorities (CAs), and Mozilla.

First, a quick refresher: To support SSL web sites need a combination of a private key kept on the server and a public key embedded with other information (most notably the server's domain name, and also in some cases the name of the organization operating the server) in a digitally-signed document, the certificate. When a browser connects to an SSL-enabled web server the server sends its certificate to the browser. If the certificate was digitally signed by a third party certification authority known to the browser, the certificate is treated as valid and the browser proceeds to use the information in the certificate to kick off the SSL protocol. (The public key in the certificate is used in setting up SSL encryption, the domain name in the certificate is double-checked against the domain name the browser was supposedly connecting to, and for [Extended Validation certificates](http://en.wikipedia.org/wiki/Extended_Validation_Certificate) the organizational name in the certificate is displayed in the Firefox 3 [site identification button](http://www.dria.org/wordpress/archives/2008/05/06/635/) to the left of the location bar.)

Otherwise the browser displays an error page, with an option for the user to create a security exception to prevent the error from being displayed again. Among other things, this allows users to have an SSL-enabled site work properly if its certificate is signed by a CA unknown to Mozilla or if the certificate is digitally-signed using the server's own private key (a self-signed certificate).

Now, to correct a few common misconceptions:



	
  * SSL certificates are not (necessarily) expensive, and can in fact be free. To cite two examples, [Go Daddy](https://www.godaddy.com/) offers SSL certificates for $29.99 per year or less, while [ipsCA](http://certs.ipsca.com/) offers no-charge SSL certificates for organizations with .edu domain names, and $38/year certificates to others; certificates from these two CAs are recognized in all commonly-used browsers. Also, [StartCom](http://www.startcom.org/) offers SSL certificates at no charge whatsoever, though at present these certificates are recognized only in Firefox. (This may change in the future, if StartCom is able to persuade more browser vendors to support its certificates.)

	
  * Mozilla does not charge CAs to have their root certificates included in Mozilla. Back in the early days of SSL Netscape charged CAs rather large fees to have their root certificates included in Netscape products. The Mozilla Foundation has never done this; any CA is free to apply to have its certificate(s) included in Mozilla-based products, at no charge to itself or others.

	
  * Mozilla's goal is to open up the CA market and support both more CAs and a wider variety of CAs. In particular, the [Mozilla CA certificate policy](http://www.mozilla.org/projects/security/certs/policy/) was deliberately designed to make it possible for smaller CAs, including volunteer-run nonprofits CAs like [CAcert](http://http://www.cacert.org/), to have their certificates recognized in Firefox and other Mozilla-based products. (CAcert's certificates aren't yet recognized, but only because CAcert has not yet met Mozilla policy requirements.)


There are legitimate questions about what sort of user experience Firefox and other Mozilla-based products should provide in relation to SSL-enabled sites. However we can't have a fruitful discussion about what to do about this if people start out by repeating tired myths like SSL certs cost hundreds of dollars and browser vendors are just trying to maintain the traditional CAs' monopoly. If I have time I'll post again with my thoughts on what today's CA market is really like, and how it might evolve in the future.
