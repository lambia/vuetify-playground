<template>
    <component :is="component" v-bind="properties">
        {{body}}
        <template v-if="children && children.length">
            <GenericComponent
                v-for="(item,key) in children"
                :key="key"
                :component="item.component"
                :properties="item.properties"
                :body="item.body"
                :children="item.children"
                :slots="item.slots"
            ></GenericComponent>
        </template>
        <template v-for="slot in slots" v-slot:[slot.name] v-bind="slot.properties">
            <template v-if="slot.children && slot.children.length">
                <GenericComponent
                    v-for="(item,key) in slot.children"
                    :key="key"
                    :component="item.component"
                    :properties="item.properties"
                    :body="item.body"
                    :children="item.children"
                    :slots="item.slots"
                ></GenericComponent>
            </template>
        </template>
    </component>
</template>


<script>
import {
    VRow,
    VCardText,
    VCardTitle,
    VCardActions,
    VFlex,
    VAlert,
    VApp,
    VAppBar,
    VAutocomplete,
    VAvatar,
    VBadge,
    VBanner,
    VBottomNavigation,
    VBottomSheet,
    VBreadcrumbs,
    VBtn,
    VBtnToggle,
    VCalendar,
    VCard,
    VCarousel,
    VCheckbox,
    VChip,
    VChipGroup,
    VCol,
    VColorPicker,
    VCombobox,
    VContent,
    VCounter,
    VData,
    VDataIterator,
    VDataTable,
    VDatePicker,
    VDialog,
    VDivider,
    VExpansionPanel,
    VFileInput,
    VFooter,
    VForm,
    VGrid,
    VHover,
    VIcon,
    VImg,
    VInput,
    VItemGroup,
    VLabel,
    VList,
    VMenu,
    VMessages,
    VNavigationDrawer,
    VOverflowBtn,
    VOverlay,
    VPagination,
    VParallax,
    VPicker,
    VProgressCircular,
    VProgressLinear,
    VRadioGroup,
    VRangeSlider,
    VRating,
    VResponsive,
    VSelect,
    VSheet,
    VSlideGroup,
    VSlider,
    VSnackbar,
    VSparkline,
    VSpeedDial,
    VStepper,
    VSubheader,
    VSwitch,
    VSystemBar,
    VTabs,
    VTextarea,
    VTextField,
    VTimeline,
    VTimePicker,
    VToolbar,
    VTooltip,
    VTreeview,
    VWindow
} from "vuetify/lib";

export default {
    name: "GenericComponent",
    components: {
        GenericComponent: () => import("@/components/GenericComponent"),
        VRow,
        VCardText,
        VCardTitle,
        VCardActions,
        VFlex,
        VAlert,
        VApp,
        VAppBar,
        VAutocomplete,
        VAvatar,
        VBadge,
        VBanner,
        VBottomNavigation,
        VBottomSheet,
        VBreadcrumbs,
        VBtn,
        VBtnToggle,
        VCalendar,
        VCard,
        VCarousel,
        VCheckbox,
        VChip,
        VChipGroup,
        VCol,
        VColorPicker,
        VCombobox,
        VContent,
        VCounter,
        VData,
        VDataIterator,
        VDataTable,
        VDatePicker,
        VDialog,
        VDivider,
        VExpansionPanel,
        VFileInput,
        VFooter,
        VForm,
        VHover,
        VIcon,
        VImg,
        VInput,
        VItemGroup,
        VLabel,
        VList,
        VMenu,
        VMessages,
        VNavigationDrawer,
        VOverflowBtn,
        VOverlay,
        VPagination,
        VParallax,
        VPicker,
        VProgressCircular,
        VProgressLinear,
        VRadioGroup,
        VRangeSlider,
        VRating,
        VResponsive,
        VSelect,
        VSheet,
        VSlideGroup,
        VSlider,
        VSnackbar,
        VSparkline,
        VSpeedDial,
        VStepper,
        VSubheader,
        VSwitch,
        VSystemBar,
        VTabs,
        VTextarea,
        VTextField,
        VTimeline,
        VTimePicker,
        VToolbar,
        VTooltip,
        VTreeview,
        VWindow
    },
    props: {
        component: String,
        properties: Object,
        body: String,
        children: Array,
        slots: Array
    },
    data: () => ({})
};
</script>
