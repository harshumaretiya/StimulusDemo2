import ApplicationController from './application_controller'

export default class extends ApplicationController {
  static targets = [
    'subregionPlaceholder',
    'countryPlaceholder',
    'detailPlaceholder'
  ]

  cancelEdit (event) {
    if (event.type === 'keyup' && !['Escape', 'Esc'].includes(event.key)) return
    this.stimulate('GeoSelectorReflex#cancel_edit')
  }

  beforeReflex (element, reflex) {
    super.beforeReflex(element, reflex)

    if (reflex === 'GeoSelectorReflex#select_company')
      this.subregionPlaceholderTarget.hidden = true

    if (reflex === 'GeoSelectorReflex#select_department')
      this.countryPlaceholderTarget.hidden = false

    if (reflex === 'GeoSelectorReflex#select_employee')
      this.detailPlaceholderTarget.hidden = false
  }
}
