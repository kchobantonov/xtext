/*
 * generated by Xtext
 */
package org.eclipse.xtext.lexer.parser.antlr;

import com.google.inject.Inject;

import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.lexer.services.BacktrackingLexerTestLanguageGrammarAccess;

public class BacktrackingLexerTestLanguageParser extends org.eclipse.xtext.parser.antlr.AbstractAntlrParser {
	
	@Inject
	private BacktrackingLexerTestLanguageGrammarAccess grammarAccess;
	
	@Override
	protected void setInitialHiddenTokens(XtextTokenStream tokenStream) {
		tokenStream.setInitialHiddenTokens("RULE_WS", "RULE_SL_COMMENT");
	}
	
	@Override
	protected org.eclipse.xtext.lexer.parser.antlr.internal.InternalBacktrackingLexerTestLanguageParser createParser(XtextTokenStream stream) {
		return new org.eclipse.xtext.lexer.parser.antlr.internal.InternalBacktrackingLexerTestLanguageParser(stream, getGrammarAccess());
	}
	
	@Override 
	protected String getDefaultRuleName() {
		return "Model";
	}
	
	public BacktrackingLexerTestLanguageGrammarAccess getGrammarAccess() {
		return this.grammarAccess;
	}
	
	public void setGrammarAccess(BacktrackingLexerTestLanguageGrammarAccess grammarAccess) {
		this.grammarAccess = grammarAccess;
	}
	
}