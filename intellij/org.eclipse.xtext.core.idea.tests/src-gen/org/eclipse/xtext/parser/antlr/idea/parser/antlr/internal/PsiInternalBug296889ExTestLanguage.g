/*
 * generated by Xtext
 */
grammar PsiInternalBug296889ExTestLanguage;

options {
	superClass=AbstractPsiAntlrParser;
	backtrack=true;
}

@lexer::header {
package org.eclipse.xtext.parser.antlr.idea.parser.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.parser.antlr.Lexer;
}

@parser::header {
package org.eclipse.xtext.parser.antlr.idea.parser.antlr.internal;

import org.eclipse.xtext.idea.parser.AbstractPsiAntlrParser;
import org.eclipse.xtext.parser.antlr.idea.lang.Bug296889ExTestLanguageElementTypeProvider;
import org.eclipse.xtext.idea.parser.TokenTypeProvider;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.parser.antlr.services.Bug296889ExTestLanguageGrammarAccess;

import com.intellij.lang.PsiBuilder;
}

@parser::members {

/*
  This grammar contains a lot of empty actions to work around a bug in ANTLR.
  Otherwise the ANTLR tool will create synpreds that cannot be compiled in some rare cases.
*/

	protected Bug296889ExTestLanguageGrammarAccess grammarAccess;

	protected Bug296889ExTestLanguageElementTypeProvider elementTypeProvider;

	public PsiInternalBug296889ExTestLanguageParser(PsiBuilder builder, TokenStream input, Bug296889ExTestLanguageElementTypeProvider elementTypeProvider, Bug296889ExTestLanguageGrammarAccess grammarAccess) {
		this(input);
		setPsiBuilder(builder);
    	this.grammarAccess = grammarAccess;
		this.elementTypeProvider = elementTypeProvider;
	}

	@Override
	protected String getFirstRuleName() {
		return "Model";
	}

}

//Entry rule entryRuleModel
entryRuleModel:
	{ markComposite(elementTypeProvider.getModelElementType()); }
	ruleModel
	EOF;

// Rule Model
ruleModel:
	(
		(
			{
				markLeaf(elementTypeProvider.getModel_ModelKeyword_0_0ElementType());
			}
			otherlv_0='Model'
			{
				doneLeaf(otherlv_0);
			}
			(
				(
					{
						markComposite(elementTypeProvider.getModel_ExpressionsExpressionParserRuleCall_0_1_0ElementType());
					}
					lv_expressions_1_0=ruleExpression
					{
						doneComposite();
					}
				)
			)*
		)
		    |
		(
			{
				markLeaf(elementTypeProvider.getModel_DataTypeKeyword_1_0ElementType());
			}
			otherlv_2='DataType'
			{
				doneLeaf(otherlv_2);
			}
			(
				(
					{
						markComposite(elementTypeProvider.getModel_ValuesDataTypeExpressionParserRuleCall_1_1_0ElementType());
					}
					lv_values_3_0=ruleDataTypeExpression
					{
						doneComposite();
					}
				)
			)*
		)
	)
;

//Entry rule entryRuleExpression
entryRuleExpression:
	{ markComposite(elementTypeProvider.getExpressionElementType()); }
	ruleExpression
	EOF;

// Rule Expression
ruleExpression:
	(
		{
			/* */
		}
		{
			markComposite(elementTypeProvider.getExpression_PostopParserRuleCall_0ElementType());
		}
		rulePostop
		{
			doneComposite();
		}
		    |
		{
			/* */
		}
		{
			markComposite(elementTypeProvider.getExpression_PreopParserRuleCall_1ElementType());
		}
		rulePreop
		{
			doneComposite();
		}
	)
;

//Entry rule entryRulePreop
entryRulePreop:
	{ markComposite(elementTypeProvider.getPreopElementType()); }
	rulePreop
	EOF;

// Rule Preop
rulePreop:
	(
		(
			{
				/* */
			}
			{
				precedeComposite(elementTypeProvider.getPreop_PreopAction_0ElementType());
				doneComposite();
			}
		)
		(
			(
				{
					markLeaf(elementTypeProvider.getPreop_FunctionNameHyphenMinusHyphenMinusKeyword_1_0ElementType());
				}
				lv_functionName_1_0='--'
				{
					doneLeaf(lv_functionName_1_0);
				}
			)
		)
		(
			(
				{
					markComposite(elementTypeProvider.getPreop_ExprVariableParserRuleCall_2_0ElementType());
				}
				lv_expr_2_0=ruleVariable
				{
					doneComposite();
				}
			)
		)
	)
;

//Entry rule entryRulePostop
entryRulePostop:
	{ markComposite(elementTypeProvider.getPostopElementType()); }
	rulePostop
	EOF;

// Rule Postop
rulePostop:
	(
		{
			/* */
		}
		{
			markComposite(elementTypeProvider.getPostop_VariableParserRuleCall_0ElementType());
		}
		ruleVariable
		{
			doneComposite();
		}
		(
			(
				{
					/* */
				}
				{
					precedeComposite(elementTypeProvider.getPostop_PostopExprAction_1_0ElementType());
					doneComposite();
				}
			)
			(
				(
					{
						markLeaf(elementTypeProvider.getPostop_FunctionNameHyphenMinusHyphenMinusKeyword_1_1_0ElementType());
					}
					lv_functionName_2_0='--'
					{
						doneLeaf(lv_functionName_2_0);
					}
				)
			)
		)?
	)
;

//Entry rule entryRuleVariable
entryRuleVariable:
	{ markComposite(elementTypeProvider.getVariableElementType()); }
	ruleVariable
	EOF;

// Rule Variable
ruleVariable:
	(
		(
			{
				/* */
			}
			{
				precedeComposite(elementTypeProvider.getVariable_VariableAction_0ElementType());
				doneComposite();
			}
		)
		(
			(
				{
					markLeaf(elementTypeProvider.getVariable_NameIDTerminalRuleCall_1_0ElementType());
				}
				lv_name_1_0=RULE_ID
				{
					doneLeaf(lv_name_1_0);
				}
			)
		)
	)
;

//Entry rule entryRuleDataTypeExpression
entryRuleDataTypeExpression:
	{ markComposite(elementTypeProvider.getDataTypeExpressionElementType()); }
	ruleDataTypeExpression
	EOF;

// Rule DataTypeExpression
ruleDataTypeExpression:
	(
		{
			markComposite(elementTypeProvider.getDataTypeExpression_DataTypePostopParserRuleCall_0ElementType());
		}
		ruleDataTypePostop
		{
			doneComposite();
		}
		    |
		{
			markComposite(elementTypeProvider.getDataTypeExpression_DataTypePreopParserRuleCall_1ElementType());
		}
		ruleDataTypePreop
		{
			doneComposite();
		}
	)
;

//Entry rule entryRuleDataTypePreop
entryRuleDataTypePreop:
	{ markComposite(elementTypeProvider.getDataTypePreopElementType()); }
	ruleDataTypePreop
	EOF;

// Rule DataTypePreop
ruleDataTypePreop:
	(
		{
			markLeaf(elementTypeProvider.getDataTypePreop_HyphenMinusHyphenMinusKeyword_0ElementType());
		}
		kw='--'
		{
			doneLeaf(kw);
		}
		{
			markComposite(elementTypeProvider.getDataTypePreop_DataTypeVariableParserRuleCall_1ElementType());
		}
		ruleDataTypeVariable
		{
			doneComposite();
		}
	)
;

//Entry rule entryRuleDataTypePostop
entryRuleDataTypePostop:
	{ markComposite(elementTypeProvider.getDataTypePostopElementType()); }
	ruleDataTypePostop
	EOF;

// Rule DataTypePostop
ruleDataTypePostop:
	(
		{
			markComposite(elementTypeProvider.getDataTypePostop_DataTypeVariableParserRuleCall_0ElementType());
		}
		ruleDataTypeVariable
		{
			doneComposite();
		}
		(
			{
				markLeaf(elementTypeProvider.getDataTypePostop_HyphenMinusHyphenMinusKeyword_1ElementType());
			}
			kw='--'
			{
				doneLeaf(kw);
			}
		)?
	)
;

//Entry rule entryRuleDataTypeVariable
entryRuleDataTypeVariable:
	{ markComposite(elementTypeProvider.getDataTypeVariableElementType()); }
	ruleDataTypeVariable
	EOF;

// Rule DataTypeVariable
ruleDataTypeVariable:
	{
		markLeaf(elementTypeProvider.getDataTypeVariable_IDTerminalRuleCallElementType());
	}
	this_ID_0=RULE_ID
	{
		doneLeaf(this_ID_0);
	}
;

RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' .|~(('\\'|'"')))* '"'|'\'' ('\\' .|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;