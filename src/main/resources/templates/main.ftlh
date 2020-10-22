<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as l>
<@c.page>
    <div>
        <@l.logout/>
    </div>
    <div>
        <form method="post" action="main">
            <input type="text" name="text" placeholder="Введите сообщение">
            <input type="text" name="tag" placeholder="Введите сообщение">
            <button type="submit">Отправить</button>
            <input type="hidden" name="_csrf" value="${_csrf.token}">
        </form>
    </div>
    <form action="/main" method="get">
        <input type="text" name="filter" value="${filter!}">
        <button type="submit">Найти</button>
    </form>
    <div>Список сообщений</div>
    <#list messages as message>
        <div>
            <b>${message.id}</b>
            <span>${message.text}</span>
            <i>${message.tag}</i>
            <strong>${message.authorName}</strong>
        </div>
    <#else>
        No Messages.
    </#list>
</@c.page>
