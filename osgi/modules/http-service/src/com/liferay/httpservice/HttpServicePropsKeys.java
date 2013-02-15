/**
 * Copyright (c) 2000-2012 Liferay, Inc. All rights reserved.
 *
 * This library is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Lesser General Public License as published by the Free
 * Software Foundation; either version 2.1 of the License, or (at your option)
 * any later version.
 *
 * This library is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more
 * details.
 */

package com.liferay.httpservice;

/**
 * @author Miguel Pastor
 * @author Raymond Augé
 */
public interface HttpServicePropsKeys {
	public static final String ALIAS = "alias";

	public static final String BUNDLE_ID = "bundle.id";

	public static final String BUNDLE_SYMBOLICNAME = "bundle.symbolicName";

	public static final String BUNDLE_VERSION = "bundle.version";

	public static final String CONTEXT_ID = "contextId";

	public static final String INIT_PREFIX = "init.";

	public static final String NAME = "name";

	public static final String SERVICE_RANKING = "service.ranking";

	public static final String WEB_CONTEXTPATH = "Web-ContextPath";

	public static enum Action {
		ADDING, REMOVED, MODIFIED
	}

}