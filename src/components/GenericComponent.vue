<template>
    <div>
        <component :is="component" v-bind="properties">
            <span>Component: {{body}}</span>
            <template v-if="children && children.length">
                <GenericComponent
                    v-for="(item,key) in children"
                    :key="key"
                    :component="item.component"
                    :properties="item.properties"
                    :body="item.body"
                    :children="item.children"
                ></GenericComponent>
            </template>
        </component>
    </div>
</template>


<script>
//import { VBtn, VCol } from "vuetify/lib"; //short per "vuetify/lib/components/index.js" ?

export default {
    name: "GenericComponent",
    components: {
        GenericComponent: () => import("@/components/GenericComponent"),
        VCol: () => import("vuetify/lib/components/VGrid/VCol.js"),
        VContainer: () => import("vuetify/lib/components/VGrid/VContainer.js"),
        VFlex: () => import("vuetify/lib/components/VGrid/VFlex.js"),
        VLayout: () => import("vuetify/lib/components/VGrid/VLayout.js"),
        VRow: () => import("vuetify/lib/components/VGrid/VRow.js"),
        VSpacer: () => import("vuetify/lib/components/VGrid/VSpacer.js"),
        VGrid: () => import("vuetify/lib/components/VGrid/grid.js"),
        VAlert: () => import("vuetify/lib/components/VAlert/VAlert.js"),
        VApp: () => import("vuetify/lib/components/VApp/VApp.js"),
        VAppBar: () => import("vuetify/lib/components/VAppBar/VAppBar.js"),
        VAutocomplete: () =>
            import("vuetify/lib/components/VAutocomplete/VAutocomplete.js"),
        VAvatar: () => import("vuetify/lib/components/VAvatar/VAvatar.js"),
        VBadge: () => import("vuetify/lib/components/VBadge/VBadge.js"),
        VBanner: () => import("vuetify/lib/components/VBanner/VBanner.js"),
        VBottomNavigation: () =>
            import(
                "vuetify/lib/components/VBottomNavigation/VBottomNavigation.js"
            ),
        VBottomSheet: () =>
            import("vuetify/lib/components/VBottomSheet/VBottomSheet.js"),
        VBreadcrumbs: () =>
            import("vuetify/lib/components/VBreadcrumbs/VBreadcrumbs.js"),
        VBtn: () => import("vuetify/lib/components/VBtn/VBtn.js"),
        VBtnToggle: () =>
            import("vuetify/lib/components/VBtnToggle/VBtnToggle.js"),
        VCalendar: () =>
            import("vuetify/lib/components/VCalendar/VCalendar.js"),
        VCard: () => import("vuetify/lib/components/VCard/VCard.js"),
        VCarousel: () =>
            import("vuetify/lib/components/VCarousel/VCarousel.js"),
        VCheckbox: () =>
            import("vuetify/lib/components/VCheckbox/VCheckbox.js"),
        VChip: () => import("vuetify/lib/components/VChip/VChip.js"),
        VChipGroup: () =>
            import("vuetify/lib/components/VChipGroup/VChipGroup.js"),
        VColorPicker: () =>
            import("vuetify/lib/components/VColorPicker/VColorPicker.js"),
        VCombobox: () =>
            import("vuetify/lib/components/VCombobox/VCombobox.js"),
        VContent: () => import("vuetify/lib/components/VContent/VContent.js"),
        VCounter: () => import("vuetify/lib/components/VCounter/VCounter.js"),
        VData: () => import("vuetify/lib/components/VData/VData.js"),
        VDataIterator: () =>
            import("vuetify/lib/components/VDataIterator/VDataIterator.js"),
        VDataTable: () =>
            import("vuetify/lib/components/VDataTable/VDataTable.js"),
        VDatePicker: () =>
            import("vuetify/lib/components/VDatePicker/VDatePicker.js"),
        VDialog: () => import("vuetify/lib/components/VDialog/VDialog.js"),
        VDivider: () => import("vuetify/lib/components/VDivider/VDivider.js"),
        VExpansionPanel: () =>
            import("vuetify/lib/components/VExpansionPanel/VExpansionPanel.js"),
        VFileInput: () =>
            import("vuetify/lib/components/VFileInput/VFileInput.js"),
        VFooter: () => import("vuetify/lib/components/VFooter/VFooter.js"),
        VForm: () => import("vuetify/lib/components/VForm/VForm.js"),
        VHover: () => import("vuetify/lib/components/VHover/VHover.js"),
        VIcon: () => import("vuetify/lib/components/VIcon/VIcon.js"),
        VImg: () => import("vuetify/lib/components/VImg/VImg.js"),
        VInput: () => import("vuetify/lib/components/VInput/VInput.js"),
        VItemGroup: () =>
            import("vuetify/lib/components/VItemGroup/VItemGroup.js"),
        VLabel: () => import("vuetify/lib/components/VLabel/VLabel.js"),
        VList: () => import("vuetify/lib/components/VList/VList.js"),
        VMenu: () => import("vuetify/lib/components/VMenu/VMenu.js"),
        VMessages: () =>
            import("vuetify/lib/components/VMessages/VMessages.js"),
        VNavigationDrawer: () =>
            import(
                "vuetify/lib/components/VNavigationDrawer/VNavigationDrawer.js"
            ),
        VOverflowBtn: () =>
            import("vuetify/lib/components/VOverflowBtn/VOverflowBtn.js"),
        VOverlay: () => import("vuetify/lib/components/VOverlay/VOverlay.js"),
        VPagination: () =>
            import("vuetify/lib/components/VPagination/VPagination.js"),
        VParallax: () =>
            import("vuetify/lib/components/VParallax/VParallax.js"),
        VPicker: () => import("vuetify/lib/components/VPicker/VPicker.js"),
        VProgressCircular: () =>
            import(
                "vuetify/lib/components/VProgressCircular/VProgressCircular.js"
            ),
        VProgressLinear: () =>
            import("vuetify/lib/components/VProgressLinear/VProgressLinear.js"),
        VRadioGroup: () =>
            import("vuetify/lib/components/VRadioGroup/VRadioGroup.js"),
        VRangeSlider: () =>
            import("vuetify/lib/components/VRangeSlider/VRangeSlider.js"),
        VRating: () => import("vuetify/lib/components/VRating/VRating.js"),
        VResponsive: () =>
            import("vuetify/lib/components/VResponsive/VResponsive.js"),
        VSelect: () => import("vuetify/lib/components/VSelect/VSelect.js"),
        VSheet: () => import("vuetify/lib/components/VSheet/VSheet.js"),
        VSlideGroup: () =>
            import("vuetify/lib/components/VSlideGroup/VSlideGroup.js"),
        VSlider: () => import("vuetify/lib/components/VSlider/VSlider.js"),
        VSnackbar: () =>
            import("vuetify/lib/components/VSnackbar/VSnackbar.js"),
        VSparkline: () =>
            import("vuetify/lib/components/VSparkline/VSparkline.js"),
        VSpeedDial: () =>
            import("vuetify/lib/components/VSpeedDial/VSpeedDial.js"),
        VStepper: () => import("vuetify/lib/components/VStepper/VStepper.js"),
        VSubheader: () =>
            import("vuetify/lib/components/VSubheader/VSubheader.js"),
        VSwitch: () => import("vuetify/lib/components/VSwitch/VSwitch.js"),
        VSystemBar: () =>
            import("vuetify/lib/components/VSystemBar/VSystemBar.js"),
        VTabs: () => import("vuetify/lib/components/VTabs/VTabs.js"),
        VTextarea: () =>
            import("vuetify/lib/components/VTextarea/VTextarea.js"),
        VTextField: () =>
            import("vuetify/lib/components/VTextField/VTextField.js"),
        VTimeline: () =>
            import("vuetify/lib/components/VTimeline/VTimeline.js"),
        VTimePicker: () =>
            import("vuetify/lib/components/VTimePicker/VTimePicker.js"),
        VToolbar: () => import("vuetify/lib/components/VToolbar/VToolbar.js"),
        VTooltip: () => import("vuetify/lib/components/VTooltip/VTooltip.js"),
        VTreeview: () =>
            import("vuetify/lib/components/VTreeview/VTreeview.js"),
        VWindow: () => import("vuetify/lib/components/VWindow/VWindow.js")
    },
    props: {
        component: String,
        properties: Object,
        body: String,
        children: Array
    },
    data: () => ({})
};
</script>
