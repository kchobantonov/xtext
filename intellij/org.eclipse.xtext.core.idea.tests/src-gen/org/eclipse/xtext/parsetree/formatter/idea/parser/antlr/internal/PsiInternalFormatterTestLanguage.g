/*
 * generated by Xtext
 */
grammar PsiInternalFormatterTestLanguage;

options {
	superClass=AbstractPsiAntlrParser;
}

@lexer::header {
package org.eclipse.xtext.parsetree.formatter.idea.parser.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.parser.antlr.Lexer;
}

@parser::header {
package org.eclipse.xtext.parsetree.formatter.idea.parser.antlr.internal;

import org.eclipse.xtext.idea.parser.AbstractPsiAntlrParser;
import org.eclipse.xtext.parsetree.formatter.idea.lang.FormatterTestLanguageElementTypeProvider;
import org.eclipse.xtext.idea.parser.TokenTypeProvider;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.parsetree.formatter.services.FormatterTestLanguageGrammarAccess;

import com.intellij.lang.PsiBuilder;
}

@parser::members {

	protected FormatterTestLanguageGrammarAccess grammarAccess;

	protected FormatterTestLanguageElementTypeProvider elementTypeProvider;

	public PsiInternalFormatterTestLanguageParser(PsiBuilder builder, TokenStream input, FormatterTestLanguageElementTypeProvider elementTypeProvider, FormatterTestLanguageGrammarAccess grammarAccess) {
		this(input);
		setPsiBuilder(builder);
    	this.grammarAccess = grammarAccess;
		this.elementTypeProvider = elementTypeProvider;
	}

	@Override
	protected String getFirstRuleName() {
		return "Root";
	}

}

//Entry rule entryRuleRoot
entryRuleRoot:
	{ markComposite(elementTypeProvider.getRootElementType()); }
	ruleRoot
	EOF;

// Rule Root
ruleRoot:
	(
		{
			markLeaf(elementTypeProvider.getRoot_TestKeyword_0ElementType());
		}
		otherlv_0='test'
		{
			doneLeaf(otherlv_0);
		}
		(
			{
				markComposite(elementTypeProvider.getRoot_TestLinewrapParserRuleCall_1_0ElementType());
			}
			ruleTestLinewrap
			{
				doneComposite();
			}
			    |
			{
				markComposite(elementTypeProvider.getRoot_TestIndentationParserRuleCall_1_1ElementType());
			}
			ruleTestIndentation
			{
				doneComposite();
			}
			    |
			{
				markComposite(elementTypeProvider.getRoot_TestLinewrapMinMaxParserRuleCall_1_2ElementType());
			}
			ruleTestLinewrapMinMax
			{
				doneComposite();
			}
			    |
			{
				markComposite(elementTypeProvider.getRoot_WrappingDataTypeTestParserRuleCall_1_3ElementType());
			}
			ruleWrappingDataTypeTest
			{
				doneComposite();
			}
		)
	)
;

//Entry rule entryRuleLine
entryRuleLine:
	{ markComposite(elementTypeProvider.getLineElementType()); }
	ruleLine
	EOF;

// Rule Line
ruleLine:
	(
		(
			{
				markComposite(elementTypeProvider.getLine_DeclParserRuleCall_0_0ElementType());
			}
			ruleDecl
			{
				doneComposite();
			}
			    |
			{
				markComposite(elementTypeProvider.getLine_AssignParserRuleCall_0_1ElementType());
			}
			ruleAssign
			{
				doneComposite();
			}
			    |
			{
				markComposite(elementTypeProvider.getLine_MethParserRuleCall_0_2ElementType());
			}
			ruleMeth
			{
				doneComposite();
			}
			    |
			{
				markComposite(elementTypeProvider.getLine_FqnObjParserRuleCall_0_3ElementType());
			}
			ruleFqnObj
			{
				doneComposite();
			}
			    |
			{
				markComposite(elementTypeProvider.getLine_FqnRefParserRuleCall_0_4ElementType());
			}
			ruleFqnRef
			{
				doneComposite();
			}
			    |
			{
				markComposite(elementTypeProvider.getLine_EnumerationParserRuleCall_0_5ElementType());
			}
			ruleEnumeration
			{
				doneComposite();
			}
			    |
			(
				{
					markComposite(elementTypeProvider.getLine_SuppressedHiddenParserRuleCall_0_6_0ElementType());
				}
				ruleSuppressedHidden
				{
					doneComposite();
				}
				{
					markLeaf(elementTypeProvider.getLine_PostKeyword_0_6_1ElementType());
				}
				otherlv_7='post'
				{
					doneLeaf(otherlv_7);
				}
			)
			    |
			{
				markComposite(elementTypeProvider.getLine_SpaceParserRuleCall_0_7ElementType());
			}
			ruleSpace
			{
				doneComposite();
			}
			    |
			{
				markComposite(elementTypeProvider.getLine_DatatypesParserRuleCall_0_8ElementType());
			}
			ruleDatatypes
			{
				doneComposite();
			}
		)
		{
			markLeaf(elementTypeProvider.getLine_SemicolonKeyword_1ElementType());
		}
		otherlv_10=';'
		{
			doneLeaf(otherlv_10);
		}
	)
;

//Entry rule entryRuleDecl
entryRuleDecl:
	{ markComposite(elementTypeProvider.getDeclElementType()); }
	ruleDecl
	EOF;

// Rule Decl
ruleDecl:
	(
		(
			(
				{
					markLeaf(elementTypeProvider.getDecl_TypeIDTerminalRuleCall_0_0ElementType());
				}
				lv_type_0_0=RULE_ID
				{
					doneLeaf(lv_type_0_0);
				}
			)
		)
		(
			(
				{
					markLeaf(elementTypeProvider.getDecl_NameIDTerminalRuleCall_1_0ElementType());
				}
				lv_name_1_0=RULE_ID
				{
					doneLeaf(lv_name_1_0);
				}
			)
		)
	)
;

//Entry rule entryRuleAssign
entryRuleAssign:
	{ markComposite(elementTypeProvider.getAssignElementType()); }
	ruleAssign
	EOF;

// Rule Assign
ruleAssign:
	(
		(
			(
				{
					markLeaf(elementTypeProvider.getAssign_VarIDTerminalRuleCall_0_0ElementType());
				}
				lv_var_0_0=RULE_ID
				{
					doneLeaf(lv_var_0_0);
				}
			)
		)
		(
			(
				(
					{
						markLeaf(elementTypeProvider.getAssign_OpEqualsSignKeyword_1_0_0ElementType());
					}
					lv_op_1_1='='
					{
						doneLeaf(lv_op_1_1);
					}
					    |
					{
						markLeaf(elementTypeProvider.getAssign_OpPlusSignEqualsSignKeyword_1_0_1ElementType());
					}
					lv_op_1_2='+='
					{
						doneLeaf(lv_op_1_2);
					}
				)
			)
		)
		{
			markLeaf(elementTypeProvider.getAssign_LeftSquareBracketKeyword_2ElementType());
		}
		otherlv_2='['
		{
			doneLeaf(otherlv_2);
		}
		(
			(
				(
					{
						markLeaf(elementTypeProvider.getAssign_ValINTTerminalRuleCall_3_0_0ElementType());
					}
					lv_val_3_0=RULE_INT
					{
						doneLeaf(lv_val_3_0);
					}
				)
			)
			(
				{
					markLeaf(elementTypeProvider.getAssign_CommaKeyword_3_1_0ElementType());
				}
				otherlv_4=','
				{
					doneLeaf(otherlv_4);
				}
				(
					(
						{
							markLeaf(elementTypeProvider.getAssign_ValINTTerminalRuleCall_3_1_1_0ElementType());
						}
						lv_val_5_0=RULE_INT
						{
							doneLeaf(lv_val_5_0);
						}
					)
				)
			)*
		)?
		{
			markLeaf(elementTypeProvider.getAssign_RightSquareBracketKeyword_4ElementType());
		}
		otherlv_6=']'
		{
			doneLeaf(otherlv_6);
		}
	)
;

//Entry rule entryRuleMeth
entryRuleMeth:
	{ markComposite(elementTypeProvider.getMethElementType()); }
	ruleMeth
	EOF;

// Rule Meth
ruleMeth:
	(
		{
			markLeaf(elementTypeProvider.getMeth_VoidKeyword_0ElementType());
		}
		otherlv_0='void'
		{
			doneLeaf(otherlv_0);
		}
		(
			(
				{
					markLeaf(elementTypeProvider.getMeth_NameIDTerminalRuleCall_1_0ElementType());
				}
				lv_name_1_0=RULE_ID
				{
					doneLeaf(lv_name_1_0);
				}
			)
		)
		{
			markLeaf(elementTypeProvider.getMeth_LeftParenthesisKeyword_2ElementType());
		}
		otherlv_2='('
		{
			doneLeaf(otherlv_2);
		}
		(
			(
				(
					{
						markComposite(elementTypeProvider.getMeth_ParamParamParserRuleCall_3_0_0ElementType());
					}
					lv_param_3_0=ruleParam
					{
						doneComposite();
					}
				)
			)
			(
				{
					markLeaf(elementTypeProvider.getMeth_CommaKeyword_3_1_0ElementType());
				}
				otherlv_4=','
				{
					doneLeaf(otherlv_4);
				}
				(
					(
						{
							markComposite(elementTypeProvider.getMeth_ParamParamParserRuleCall_3_1_1_0ElementType());
						}
						lv_param_5_0=ruleParam
						{
							doneComposite();
						}
					)
				)
			)*
		)?
		{
			markLeaf(elementTypeProvider.getMeth_RightParenthesisKeyword_4ElementType());
		}
		otherlv_6=')'
		{
			doneLeaf(otherlv_6);
		}
	)
;

//Entry rule entryRuleParam
entryRuleParam:
	{ markComposite(elementTypeProvider.getParamElementType()); }
	ruleParam
	EOF;

// Rule Param
ruleParam:
	(
		(
			(
				{
					markLeaf(elementTypeProvider.getParam_NameIDTerminalRuleCall_0_0ElementType());
				}
				lv_name_0_0=RULE_ID
				{
					doneLeaf(lv_name_0_0);
				}
			)
		)
		{
			markLeaf(elementTypeProvider.getParam_ColonKeyword_1ElementType());
		}
		otherlv_1=':'
		{
			doneLeaf(otherlv_1);
		}
		(
			(
				{
					markLeaf(elementTypeProvider.getParam_TypeIDTerminalRuleCall_2_0ElementType());
				}
				lv_type_2_0=RULE_ID
				{
					doneLeaf(lv_type_2_0);
				}
			)
		)
	)
;

//Entry rule entryRuleSpace
entryRuleSpace:
	{ markComposite(elementTypeProvider.getSpaceElementType()); }
	ruleSpace
	EOF;

// Rule Space
ruleSpace:
	(
		{
			markLeaf(elementTypeProvider.getSpace_SpaceKeyword_0ElementType());
		}
		otherlv_0='space'
		{
			doneLeaf(otherlv_0);
		}
		(
			(
				{
					markLeaf(elementTypeProvider.getSpace_ValIDTerminalRuleCall_1_0ElementType());
				}
				lv_val_1_0=RULE_ID
				{
					doneLeaf(lv_val_1_0);
				}
			)
		)
	)
;

//Entry rule entryRuleTestLinewrap
entryRuleTestLinewrap:
	{ markComposite(elementTypeProvider.getTestLinewrapElementType()); }
	ruleTestLinewrap
	EOF;

// Rule TestLinewrap
ruleTestLinewrap:
	(
		(
			{
				precedeComposite(elementTypeProvider.getTestLinewrap_TestLinewrapAction_0ElementType());
				doneComposite();
			}
		)
		{
			markLeaf(elementTypeProvider.getTestLinewrap_LinewrapKeyword_1ElementType());
		}
		otherlv_1='linewrap'
		{
			doneLeaf(otherlv_1);
		}
		(
			(
				{
					markComposite(elementTypeProvider.getTestLinewrap_ItemsLineParserRuleCall_2_0ElementType());
				}
				lv_items_2_0=ruleLine
				{
					doneComposite();
				}
			)
		)*
	)
;

//Entry rule entryRuleTestLinewrapMinMax
entryRuleTestLinewrapMinMax:
	{ markComposite(elementTypeProvider.getTestLinewrapMinMaxElementType()); }
	ruleTestLinewrapMinMax
	EOF;

// Rule TestLinewrapMinMax
ruleTestLinewrapMinMax:
	(
		(
			{
				precedeComposite(elementTypeProvider.getTestLinewrapMinMax_TestLinewrapMinMaxAction_0ElementType());
				doneComposite();
			}
		)
		{
			markLeaf(elementTypeProvider.getTestLinewrapMinMax_WrapminmaxKeyword_1ElementType());
		}
		otherlv_1='wrapminmax'
		{
			doneLeaf(otherlv_1);
		}
		(
			(
				{
					markComposite(elementTypeProvider.getTestLinewrapMinMax_ItemsLineParserRuleCall_2_0ElementType());
				}
				lv_items_2_0=ruleLine
				{
					doneComposite();
				}
			)
		)*
	)
;

//Entry rule entryRuleTestIndentation
entryRuleTestIndentation:
	{ markComposite(elementTypeProvider.getTestIndentationElementType()); }
	ruleTestIndentation
	EOF;

// Rule TestIndentation
ruleTestIndentation:
	(
		(
			{
				precedeComposite(elementTypeProvider.getTestIndentation_TestIndentationAction_0ElementType());
				doneComposite();
			}
		)
		{
			markLeaf(elementTypeProvider.getTestIndentation_IndentationKeyword_1ElementType());
		}
		otherlv_1='indentation'
		{
			doneLeaf(otherlv_1);
		}
		{
			markLeaf(elementTypeProvider.getTestIndentation_LeftCurlyBracketKeyword_2ElementType());
		}
		otherlv_2='{'
		{
			doneLeaf(otherlv_2);
		}
		(
			(
				(
					{
						markComposite(elementTypeProvider.getTestIndentation_ItemsLineParserRuleCall_3_0_0ElementType());
					}
					lv_items_3_1=ruleLine
					{
						doneComposite();
					}
					    |
					{
						markComposite(elementTypeProvider.getTestIndentation_ItemsTestIndentationParserRuleCall_3_0_1ElementType());
					}
					lv_items_3_2=ruleTestIndentation
					{
						doneComposite();
					}
				)
			)
		)*
		{
			markLeaf(elementTypeProvider.getTestIndentation_RightCurlyBracketKeyword_4ElementType());
		}
		otherlv_4='}'
		{
			doneLeaf(otherlv_4);
		}
		(
			(
				{
					markLeaf(elementTypeProvider.getTestIndentation_SemiSemicolonKeyword_5_0ElementType());
				}
				lv_semi_5_0=';'
				{
					doneLeaf(lv_semi_5_0);
				}
			)
		)?
	)
;

//Entry rule entryRuleFqnObj
entryRuleFqnObj:
	{ markComposite(elementTypeProvider.getFqnObjElementType()); }
	ruleFqnObj
	EOF;

// Rule FqnObj
ruleFqnObj:
	(
		{
			markLeaf(elementTypeProvider.getFqnObj_FqnKeyword_0ElementType());
		}
		otherlv_0='fqn'
		{
			doneLeaf(otherlv_0);
		}
		(
			(
				{
					markComposite(elementTypeProvider.getFqnObj_NameFQNParserRuleCall_1_0ElementType());
				}
				lv_name_1_0=ruleFQN
				{
					doneComposite();
				}
			)
		)
	)
;

//Entry rule entryRuleFQN
entryRuleFQN:
	{ markComposite(elementTypeProvider.getFQNElementType()); }
	ruleFQN
	EOF;

// Rule FQN
ruleFQN:
	(
		{
			markLeaf(elementTypeProvider.getFQN_IDTerminalRuleCall_0ElementType());
		}
		this_ID_0=RULE_ID
		{
			doneLeaf(this_ID_0);
		}
		(
			{
				markLeaf(elementTypeProvider.getFQN_FullStopKeyword_1_0ElementType());
			}
			kw='.'
			{
				doneLeaf(kw);
			}
			{
				markLeaf(elementTypeProvider.getFQN_IDTerminalRuleCall_1_1ElementType());
			}
			this_ID_2=RULE_ID
			{
				doneLeaf(this_ID_2);
			}
		)*
	)
;

//Entry rule entryRuleFqnRef
entryRuleFqnRef:
	{ markComposite(elementTypeProvider.getFqnRefElementType()); }
	ruleFqnRef
	EOF;

// Rule FqnRef
ruleFqnRef:
	(
		{
			markLeaf(elementTypeProvider.getFqnRef_FqnrefKeyword_0ElementType());
		}
		otherlv_0='fqnref'
		{
			doneLeaf(otherlv_0);
		}
		(
			(
				{
					markComposite(elementTypeProvider.getFqnRef_RefFqnObjCrossReference_1_0ElementType());
				}
				ruleFQN
				{
					doneComposite();
				}
			)
		)
	)
;

//Entry rule entryRuleEnumeration
entryRuleEnumeration:
	{ markComposite(elementTypeProvider.getEnumerationElementType()); }
	ruleEnumeration
	EOF;

// Rule Enumeration
ruleEnumeration:
	(
		{
			markLeaf(elementTypeProvider.getEnumeration_EnumKeyword_0ElementType());
		}
		otherlv_0='enum'
		{
			doneLeaf(otherlv_0);
		}
		(
			(
				{
					markComposite(elementTypeProvider.getEnumeration_ValEnum1EnumRuleCall_1_0ElementType());
				}
				lv_val_1_0=ruleEnum1
				{
					doneComposite();
				}
			)
		)+
		(
			{
				markLeaf(elementTypeProvider.getEnumeration_CommaKeyword_2_0ElementType());
			}
			otherlv_2=','
			{
				doneLeaf(otherlv_2);
			}
			(
				(
					{
						markComposite(elementTypeProvider.getEnumeration_ValEnum1EnumRuleCall_2_1_0ElementType());
					}
					lv_val_3_0=ruleEnum1
					{
						doneComposite();
					}
				)
			)
		)*
	)
;

//Entry rule entryRuleSuppressedHidden
entryRuleSuppressedHidden@init {
	HiddenTokens myHiddenTokenState = ((XtextTokenStream)input).setHiddenTokens();
}:
	{ markComposite(elementTypeProvider.getSuppressedHiddenElementType()); }
	ruleSuppressedHidden
	EOF;
finally {
	myHiddenTokenState.restore();
}

// Rule SuppressedHidden
ruleSuppressedHidden@init {
	HiddenTokens myHiddenTokenState = ((XtextTokenStream)input).setHiddenTokens();
}:
	(
		(
			{
				precedeComposite(elementTypeProvider.getSuppressedHidden_SuppressedHiddenAction_0ElementType());
				doneComposite();
			}
		)
		{
			markLeaf(elementTypeProvider.getSuppressedHidden_GraveAccentKeyword_1ElementType());
		}
		otherlv_1='`'
		{
			doneLeaf(otherlv_1);
		}
		(
			(
				(
					{
						markComposite(elementTypeProvider.getSuppressedHidden_ValsSuppressedHiddenSubParserRuleCall_2_0_0ElementType());
					}
					lv_vals_2_0=ruleSuppressedHiddenSub
					{
						doneComposite();
					}
				)
			)
			(
				{
					markLeaf(elementTypeProvider.getSuppressedHidden_PercentSignKeyword_2_1_0ElementType());
				}
				otherlv_3='%'
				{
					doneLeaf(otherlv_3);
				}
				(
					(
						{
							markComposite(elementTypeProvider.getSuppressedHidden_ValsSuppressedHiddenSubParserRuleCall_2_1_1_0ElementType());
						}
						lv_vals_4_0=ruleSuppressedHiddenSub
						{
							doneComposite();
						}
					)
				)
			)*
		)?
		{
			markLeaf(elementTypeProvider.getSuppressedHidden_GraveAccentKeyword_3ElementType());
		}
		otherlv_5='`'
		{
			doneLeaf(otherlv_5);
		}
	)
;
finally {
	myHiddenTokenState.restore();
}

//Entry rule entryRuleSuppressedHiddenSub
entryRuleSuppressedHiddenSub:
	{ markComposite(elementTypeProvider.getSuppressedHiddenSubElementType()); }
	ruleSuppressedHiddenSub
	EOF;

// Rule SuppressedHiddenSub
ruleSuppressedHiddenSub:
	(
		{
			markComposite(elementTypeProvider.getSuppressedHiddenSub_SuppressedHiddenSubSubParserRuleCall_0ElementType());
		}
		ruleSuppressedHiddenSubSub
		{
			doneComposite();
		}
		    |
		{
			markComposite(elementTypeProvider.getSuppressedHiddenSub_SuppressedHiddenSubIDParserRuleCall_1ElementType());
		}
		ruleSuppressedHiddenSubID
		{
			doneComposite();
		}
	)
;

//Entry rule entryRuleSuppressedHiddenSubSub
entryRuleSuppressedHiddenSubSub@init {
	HiddenTokens myHiddenTokenState = ((XtextTokenStream)input).setHiddenTokens("RULE_WS");
}:
	{ markComposite(elementTypeProvider.getSuppressedHiddenSubSubElementType()); }
	ruleSuppressedHiddenSubSub
	EOF;
finally {
	myHiddenTokenState.restore();
}

// Rule SuppressedHiddenSubSub
ruleSuppressedHiddenSubSub@init {
	HiddenTokens myHiddenTokenState = ((XtextTokenStream)input).setHiddenTokens("RULE_WS");
}:
	(
		{
			markLeaf(elementTypeProvider.getSuppressedHiddenSubSub_LessThanSignKeyword_0ElementType());
		}
		otherlv_0='<'
		{
			doneLeaf(otherlv_0);
		}
		(
			(
				{
					markLeaf(elementTypeProvider.getSuppressedHiddenSubSub_IdvalIDTerminalRuleCall_1_0ElementType());
				}
				lv_idval_1_0=RULE_ID
				{
					doneLeaf(lv_idval_1_0);
				}
			)
		)
		{
			markLeaf(elementTypeProvider.getSuppressedHiddenSubSub_GreaterThanSignKeyword_2ElementType());
		}
		otherlv_2='>'
		{
			doneLeaf(otherlv_2);
		}
	)
;
finally {
	myHiddenTokenState.restore();
}

//Entry rule entryRuleSuppressedHiddenSubID
entryRuleSuppressedHiddenSubID:
	{ markComposite(elementTypeProvider.getSuppressedHiddenSubIDElementType()); }
	ruleSuppressedHiddenSubID
	EOF;

// Rule SuppressedHiddenSubID
ruleSuppressedHiddenSubID:
	(
		(
			{
				markLeaf(elementTypeProvider.getSuppressedHiddenSubID_IdvalIDTerminalRuleCall_0ElementType());
			}
			lv_idval_0_0=RULE_ID
			{
				doneLeaf(lv_idval_0_0);
			}
		)
	)
;

//Entry rule entryRuleDatatype1
entryRuleDatatype1:
	{ markComposite(elementTypeProvider.getDatatype1ElementType()); }
	ruleDatatype1
	EOF;

// Rule Datatype1
ruleDatatype1:
	{
		markComposite(elementTypeProvider.getDatatype1_FQNParserRuleCallElementType());
	}
	ruleFQN
	{
		doneComposite();
	}
;

//Entry rule entryRuleDatatype2
entryRuleDatatype2:
	{ markComposite(elementTypeProvider.getDatatype2ElementType()); }
	ruleDatatype2
	EOF;

// Rule Datatype2
ruleDatatype2:
	{
		markComposite(elementTypeProvider.getDatatype2_FQNParserRuleCallElementType());
	}
	ruleFQN
	{
		doneComposite();
	}
;

//Entry rule entryRuleDatatype3
entryRuleDatatype3:
	{ markComposite(elementTypeProvider.getDatatype3ElementType()); }
	ruleDatatype3
	EOF;

// Rule Datatype3
ruleDatatype3:
	{
		markComposite(elementTypeProvider.getDatatype3_FQNParserRuleCallElementType());
	}
	ruleFQN
	{
		doneComposite();
	}
;

//Entry rule entryRuleDatatypes
entryRuleDatatypes:
	{ markComposite(elementTypeProvider.getDatatypesElementType()); }
	ruleDatatypes
	EOF;

// Rule Datatypes
ruleDatatypes:
	(
		{
			markLeaf(elementTypeProvider.getDatatypes_DatatypesKeyword_0ElementType());
		}
		otherlv_0='datatypes'
		{
			doneLeaf(otherlv_0);
		}
		(
			(
				{
					markComposite(elementTypeProvider.getDatatypes_Val1Datatype1ParserRuleCall_1_0ElementType());
				}
				lv_val1_1_0=ruleDatatype1
				{
					doneComposite();
				}
			)
		)
		{
			markLeaf(elementTypeProvider.getDatatypes_Kw1Keyword_2ElementType());
		}
		otherlv_2='kw1'
		{
			doneLeaf(otherlv_2);
		}
		(
			(
				{
					markComposite(elementTypeProvider.getDatatypes_Val2Datatype2ParserRuleCall_3_0ElementType());
				}
				lv_val2_3_0=ruleDatatype2
				{
					doneComposite();
				}
			)
		)
		(
			(
				{
					markComposite(elementTypeProvider.getDatatypes_Val3Datatype3ParserRuleCall_4_0ElementType());
				}
				lv_val3_4_0=ruleDatatype3
				{
					doneComposite();
				}
			)
		)
		{
			markLeaf(elementTypeProvider.getDatatypes_Kw3Keyword_5ElementType());
		}
		otherlv_5='kw3'
		{
			doneLeaf(otherlv_5);
		}
	)
;

//Entry rule entryRuleWrappingDataTypeTest
entryRuleWrappingDataTypeTest:
	{ markComposite(elementTypeProvider.getWrappingDataTypeTestElementType()); }
	ruleWrappingDataTypeTest
	EOF;

// Rule WrappingDataTypeTest
ruleWrappingDataTypeTest:
	(
		{
			markLeaf(elementTypeProvider.getWrappingDataTypeTest_WrappingdtKeyword_0ElementType());
		}
		otherlv_0='wrappingdt'
		{
			doneLeaf(otherlv_0);
		}
		(
			(
				{
					markComposite(elementTypeProvider.getWrappingDataTypeTest_DatatypeWrappingDataTypeParserRuleCall_1_0ElementType());
				}
				lv_datatype_1_0=ruleWrappingDataType
				{
					doneComposite();
				}
			)
		)
		{
			markLeaf(elementTypeProvider.getWrappingDataTypeTest_Kw1Keyword_2ElementType());
		}
		otherlv_2='kw1'
		{
			doneLeaf(otherlv_2);
		}
	)
;

//Entry rule entryRuleWrappingDataType
entryRuleWrappingDataType:
	{ markComposite(elementTypeProvider.getWrappingDataTypeElementType()); }
	ruleWrappingDataType
	EOF;

// Rule WrappingDataType
ruleWrappingDataType:
	(
		{
			markLeaf(elementTypeProvider.getWrappingDataType_IDTerminalRuleCallElementType());
		}
		this_ID_0=RULE_ID
		{
			doneLeaf(this_ID_0);
		}
	)+
;

// Rule Enum1
ruleEnum1:
	(
		(
			{
				markLeaf(elementTypeProvider.getEnum1_Lit1EnumLiteralDeclaration_0ElementType());
			}
			enumLiteral_0='lit1'
			{
				doneLeaf(enumLiteral_0);
			}
		)
		    |
		(
			{
				markLeaf(elementTypeProvider.getEnum1_Lit2EnumLiteralDeclaration_1ElementType());
			}
			enumLiteral_1='lit2'
			{
				doneLeaf(enumLiteral_1);
			}
		)
		    |
		(
			{
				markLeaf(elementTypeProvider.getEnum1_Lit3EnumLiteralDeclaration_2ElementType());
			}
			enumLiteral_2='lit3'
			{
				doneLeaf(enumLiteral_2);
			}
		)
	)
;

RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' .|~(('\\'|'"')))* '"'|'\'' ('\\' .|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;