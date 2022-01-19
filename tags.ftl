<#include "module/macro.ftl">
<@layout title="Tags - ${blog_title!}">
    <h1>Tags</h1>
    <ul>
        <@tagTag method="list">
            <#if tags?? && tags?size gt 0>
                <#list tags as tag>
                    <li><a href="${tag.fullPath!}">${tag.name}</a></li>
                </#list>
            </#if>
        </@tagTag>
    </ul>
</@layout>
