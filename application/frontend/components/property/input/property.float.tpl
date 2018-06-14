{component 'field' template='text'
    name    = "property[{$property->getId()}]"
    value   = $property->getValue()->getValueForForm()
    note    = $property->getDescription()
    rules   = $property->getValidateRulesForm()
    label   = $property->getTitle()}