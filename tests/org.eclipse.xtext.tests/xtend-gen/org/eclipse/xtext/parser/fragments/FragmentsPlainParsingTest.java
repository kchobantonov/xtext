/**
 * Copyright (c) 2015 itemis AG (http://www.itemis.eu) and others.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 */
package org.eclipse.xtext.parser.fragments;

import org.eclipse.xtext.parser.fragments.AbstractFragmentsPlainParsingTest;
import org.eclipse.xtext.parser.fragments.FragmentTestLanguageStandaloneSetup;

/**
 * @author Sebastian Zarnekow - Initial contribution and API
 */
@SuppressWarnings("all")
public class FragmentsPlainParsingTest extends AbstractFragmentsPlainParsingTest {
  @Override
  public void setUp() throws Exception {
    super.setUp();
    FragmentTestLanguageStandaloneSetup _fragmentTestLanguageStandaloneSetup = new FragmentTestLanguageStandaloneSetup();
    this.with(_fragmentTestLanguageStandaloneSetup);
  }
}