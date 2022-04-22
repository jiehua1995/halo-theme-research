<@menuTag method="list">
    <#--
        ?sort_by('priority')：根据菜单的排序编号排序
    -->

    <#-- navbar: title -->
    <div class="navbar bg-base-100">
      <div class="flex-1">
        <a class="btn btn-ghost normal-case text-1">
        ${blog_title!}
        <a>
      </div>

      <#-- menu -->
      <div class="flex-none">
        <ul class="menu menu-horizontal p-0">
          <#list menus?sort_by('priority') as menu>
          <li>
          <a href="${menu.url}" target="${menu.target!}">${menu.name} </a>
          </li>
          </#list>
        </ul>
      </div>
    </div>
</@menuTag>