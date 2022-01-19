<#include "module/macro.ftl">
<@layout title="Archive - ${blog_title!}">
    <h1>Archive</h1>
    <ul>
        <#list archives as archive>
            <h2>${archive.year?c}</h2>
            <#list archive.posts as post>
                <li>
                    <a href="${post.fullPath!}">${post.title!}</a>
                </li>
            </#list>
        </#list>
    </ul>

    <h1>·</h1>

    <#if posts.totalPages gt 1>
        <ul>
            <@paginationTag method="archives" page="${posts.number}" total="${posts.totalPages}" display="3">
                <#if pagination.hasPrev>
                    <li>
                        <a href="${pagination.prevPageFullPath!}">
                            Pre
                        </a>
                    </li>
                </#if>
                <#list pagination.rainbowPages as number>
                    <li>
                        <#if number.isCurrent>
                            <span class="current">Page${number.page!}</span>
                        <#else>
                            <a href="${number.fullPath!}">Page${number.page!}</a>
                        </#if>
                    </li>
                </#list>
                <#if pagination.hasNext>
                    <li>
                        <a href="${pagination.nextPageFullPath!}">
                            Next
                        </a>
                    </li>
                </#if>
            </@paginationTag>
        </ul>
    <#else>
        <span>ONLY ONE PAGE</span>
    </#if>
</@layout>
