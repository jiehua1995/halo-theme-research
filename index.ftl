<#include "module/macro.ftl">
<@layout title="${blog_title!}">


<#-- Annoucement -->


    <h1>Annoucement</h1>
    <p>
        ${settings.index_notice!}
    </p>

<#-- Posts list -->
    <h1>List</h1>
    <ul>
        <#list posts.content as post>
            <li>
                <div class="card card-side bg-base-100 shadow-xl">
                <figure><img src="${post.coverimg!"}></figure>
                <div class="card-body">
                    <h2 class="card-title"><a href="${post.fullPath!">${post.title}</a></h2>
                    <p>${post.abstract}</p>
                </div>
                </div>
            </li>
        </#list>
    </ul>



    <h1>Pagination</h1>

    <div class="btn-group">

    <#if posts.totalPages gt 1>
        <ul>
            <@paginationTag method="index" page="${posts.number}" total="${posts.totalPages}" display="3">
                <#if pagination.hasPrev>
                    <li>
                    <button class="btn>
                        <a href="${pagination.prevPageFullPath!}">
                            Pre One
                        </a>
                    </button>
                    </li>
                </#if>
                <#list pagination.rainbowPages as number>
                    <li>
                    <button class="btn>
                        <#if number.isCurrent>
                            <span class="current">Page ${number.page!}</span>
                        <#else>
                            <a href="${number.fullPath!}">Page ${number.page!}</a>
                        </#if>
                    </button>
                    </li>
                </#list>
                <#if pagination.hasNext>
                    <li>
                    <button class="btn>
                        <a href="${pagination.nextPageFullPath!}">
                            Next One
                        </a>
                    </button>
                    </li>
                </#if>
            </@paginationTag>
        </ul>

    <#else>
        <button class="btn>
        <span>Only One Page</span>
        </button>
    </#if>
    </div>

</@layout>
