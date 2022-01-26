<#include "module/macro.ftl">
<@layout title="Links - ${blog_title!}">
    <h1>Links</h1>
    <ul>
        <@linkTag method="list">
            <#if links?? && links?size gt 0>
                <#list links as link>
                    <li>
                        <a href="${link.url}" target="_blank" rel="external">${link.name}</a>
                        <#if link.description!=''>
                            – ${link.description}
                        </#if>
                    </li>
                </#list>
            </#if>
        </@linkTag>
    </ul>
</@layout>
