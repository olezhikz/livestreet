{**
 * Страница добавления контента
 *}

{extends './layout.base.tpl'}

{block 'layout_options' append}
    {if $sEvent != 'edit'}
        {$_items = []}

        {* Формируем список пунктов *}
        {$_topicTypes = $LS->Topic_GetTopicTypes()}

        {foreach $_topicTypes as $type}
            {$_items[] = [ 'name' => $type->getCode(), 'url' => $type->getUrlForAdd(), 'text' => $type->getName() ]}
        {/foreach}

        {* Пункт "Черновики" *}
        {$_items[] = [
            'name'  => 'drafts',
            'url'   => "{router page='content'}drafts/",
            'text'  => $aLang.topic.drafts,
            'count' => $iUserCurrentCountTopicDraft
        ]}

        {* Пункт "Отложенные" *}
        {$_items[] = [
            'name'  => 'deferred',
            'url'   => "{router page='content'}deferred/",
            'text'  => $aLang.topic.deferred,
            'count' => $iUserCurrentCountTopicDeferred
            ]}

        {$layoutNav = [[
            hook       => 'content_form',
            activeItem => $sMenuSubItemSelect,
            items => $_items
        ]]}
    {/if}
{/block}

{block 'layout_page_title'}
    {if $sEvent == 'add'}
        {$aLang.topic.add.title.add}
    {else}
        {$aLang.topic.add.title.edit}
    {/if}{$topicType->getName()}
{/block}