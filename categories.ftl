<#include "module/macro.ftl">
<@layout title="categories - ${blog_title!}">
    <h1>categories</h1>
    <ul>
        <@categoryTag method="list">
            <#if categories?? && categories?size gt 0>
                <#list categories as category>
                    <li><a href="${category.fullPath!}">${category.name}</a></li>
                </#list>
            </#if>
        </@categoryTag>
    </ul>
</@layout>
