<#include "module/macro.ftl">
<@layout title="${blog_title!}">
    <h1>Annoucement</h1>
    <p>
        ${settings.index_notice!}
    </p>

    <h1>List</h1>
    <ul>
        <#list posts.content as post>
            <li>
                <a href="${post.fullPath!}">${post.title}</a>
            </li>
        </#list>
    </ul>

    <h1>Pagination</h1>

    <#if posts.totalPages gt 1>
        <ul>
            <@paginationTag method="index" page="${posts.number}" total="${posts.totalPages}" display="3">
                <#if pagination.hasPrev>
                    <li>
                        <a href="${pagination.prevPageFullPath!}">
                            Pre One
                        </a>
                    </li>
                </#if>
                <#list pagination.rainbowPages as number>
                    <li>
                        <#if number.isCurrent>
                            <span class="current">Page ${number.page!}</span>
                        <#else>
                            <a href="${number.fullPath!}">Page ${number.page!}</a>
                        </#if>
                    </li>
                </#list>
                <#if pagination.hasNext>
                    <li>
                        <a href="${pagination.nextPageFullPath!}">
                            Next One
                        </a>
                    </li>
                </#if>
            </@paginationTag>
        </ul>
    <#else>
        <span>Only One Page</span>
    </#if>
</@layout>
