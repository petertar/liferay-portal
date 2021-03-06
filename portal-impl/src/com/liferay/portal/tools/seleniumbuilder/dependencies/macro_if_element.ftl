<#if ifElement.getName() == "elseif">
	else
</#if>

if (
	<#if ifElement.element("condition")??>
		<#assign actionElement = ifElement.element("condition")>

		<#include "action_element.ftl">
	<#elseif ifElement.element("contains")??>
		<#assign containsElement = ifElement.element("contains")>

		<#assign string = containsElement.attributeValue("string")>

		<#if string?contains("${") && string?contains("}")>
			<#assign string = string?replace("${", "\" + commandScopeVariables.get(\"")>

			<#assign string = string?replace("}", "\") + \"")>
		</#if>

		<#assign substring = containsElement.attributeValue("substring")>

		<#if substring?contains("${") && substring?contains("}")>
			<#assign substring = substring?replace("${", "\" + commandScopeVariables.get(\"")>

			<#assign substring = substring?replace("}", "\") + \"")>
		</#if>

		("${string}").contains("${substring}")
	<#elseif ifElement.element("equals")??>
		<#assign equalsElement = ifElement.element("equals")>

		<#assign arg1 = equalsElement.attributeValue("arg1")>

		<#if arg1?contains("${") && arg1?contains("}")>
			<#assign arg1 = arg1?replace("${", "\" + commandScopeVariables.get(\"")>

			<#assign arg1 = arg1?replace("}", "\") + \"")>
		</#if>

		<#assign arg2 = equalsElement.attributeValue("arg2")>

		<#if arg2?contains("${") && arg2?contains("}")>
			<#assign arg2 = arg2?replace("${", "\" + commandScopeVariables.get(\"")>

			<#assign arg2 = arg2?replace("}", "\") + \"")>
		</#if>

		("${arg1}").equals("${arg2}")
	<#elseif ifElement.element("isset")??>
		<#assign equalsElement = ifElement.element("isset")>

		<#assign var = equalsElement.attributeValue("var")>

		<#if var?contains("${") && var?contains("}")>
			<#assign var = var?replace("${", "\" + commandScopeVariables.get(\"")>

			<#assign var = var?replace("}", "\") + \"")>
		</#if>

		commandScopeVariables.containsKey("${var}")
	</#if>
) {
	<#assign thenElement = ifElement.element("then")>

	<#assign blockElement = thenElement>

	<#include "macro_block_element.ftl">
}