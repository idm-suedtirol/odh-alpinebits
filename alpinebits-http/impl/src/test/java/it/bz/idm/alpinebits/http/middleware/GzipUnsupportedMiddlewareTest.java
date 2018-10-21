/*
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/.
 */

package it.bz.idm.alpinebits.http.middleware;

import it.bz.idm.alpinebits.http.GzipUnsupportedException;
import it.bz.idm.alpinebits.http.HttpContextKey;
import it.bz.idm.alpinebits.middleware.Context;
import it.bz.idm.alpinebits.middleware.Middleware;
import it.bz.idm.alpinebits.middleware.RequiredContextKeyMissingException;
import it.bz.idm.alpinebits.middleware.impl.SimpleContext;
import org.testng.annotations.DataProvider;
import org.testng.annotations.Test;

import javax.servlet.http.HttpServletRequest;

import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.when;
import static org.testng.Assert.assertTrue;

/**
 * Tests cases for {@link GzipUnsupportedMiddleware} class.
 */
public class GzipUnsupportedMiddlewareTest {

    @DataProvider(name = "contentEncoding")
    public static Object[][] contentEncoding() {
        return new Object[][]{
                {null},
                {""},
                {"some value"},
        };
    }

    @Test(expectedExceptions = RequiredContextKeyMissingException.class)
    public void testHandleContext_RequestIsNull() {
        Middleware middleware = new AlpineBitsClientProtocolMiddleware();

        Context ctx = new SimpleContext();
        middleware.handleContext(ctx, null);
    }

    @Test(expectedExceptions = GzipUnsupportedException.class)
    public void testHandleContext_ContentEncodingIsGzip() {
        HttpServletRequest request = mock(HttpServletRequest.class);
        when(request.getHeader(GzipUnsupportedMiddleware.CONTENT_ENCODING_HEADER))
                .thenReturn(GzipUnsupportedMiddleware.GZIP);

        Context ctx = new SimpleContext();
        ctx.put(HttpContextKey.HTTP_REQUEST, request);

        Middleware middleware = new GzipUnsupportedMiddleware();
        middleware.handleContext(ctx, null);
    }

    @Test(dataProvider = "contentEncoding")
    public void testHandleContext_ContentEncodingIsNotGzip(String contentEncoding) {
        HttpServletRequest request = mock(HttpServletRequest.class);
        when(request.getHeader(GzipUnsupportedMiddleware.CONTENT_ENCODING_HEADER))
                .thenReturn(contentEncoding);

        Context ctx = new SimpleContext();
        ctx.put(HttpContextKey.HTTP_REQUEST, request);

        Middleware middleware = new GzipUnsupportedMiddleware();
        middleware.handleContext(ctx, () -> {});

        // Just run an assert
        assertTrue(true);
    }


}