.class public Lcom/miui/home/launcher/DeviceConfig;
.super Ljava/lang/Object;
.source "DeviceConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/DeviceConfig$_lancet;
    }
.end annotation


# static fields
.field public static final CAN_SWITCH_MINUS_SCREEN:Z

.field private static final CLIENT_ID_BASE:Ljava/lang/String;

.field private static final CURRENT_REGION:Ljava/lang/String;

.field private static final DEFAULT_DATABASE_SUFFIX:Ljava/lang/String;

.field public static final FORCE_TOUCH_MENU_PRESSURE:F

.field public static final FORCE_TOUCH_TRIGGER_PRESSURE:F

.field public static INVALIDATE_DEFAULT_SCREEN_ID:J

.field public static final IS_AMX_BUILD:Z

.field public static final IS_KDDI_BUILD:Z

.field public static IS_MEITU:Z

.field public static final IS_MIUI_10:Ljava/lang/Boolean;

.field public static final IS_MIUI_11:Ljava/lang/Boolean;

.field public static final IS_MIUI_12:Z

.field public static final IS_MIUI_LITE_DEVICE:Z

.field public static final IS_ORANGE_BUILD:Z

.field public static final IS_SURRPORT_FORCE_TOUCH:Z

.field public static IS_USE_GOOGLE_MINUS_SCREEN:Z

.field public static final MIUI_BIG_VERSION:Ljava/lang/String;

.field public static MIUI_VERSION:I

.field public static final ONLY_USE_GOOGLE_MINUS_SCREEN:Z

.field private static final SELECT_MINUS_SCREEN_CLIENT_ID:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static TEMP_SHARE_MODE_FOR_WORLD_READABLE:I

.field public static TEMP_SHARE_MODE_FOR_WORLD_WRITEABLE:I

.field private static final USE_GOOGLE_MINUS_SCREEN_CLIENT_ID:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final USE_GOOGLE_MINUS_SCREEN_REGIONS:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sAllAppsBackgroundAlpha:I

.field private static sAllAppsCellHeight:I

.field private static sAllAppsColorMode:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

.field private static sAllAppsDividerBottom:I

.field private static sAllAppsDividerTop:I

.field private static sApplicationIconContainerHeight:I

.field private static sApplicationIconContainerWidth:I

.field private static sCellCountX:I

.field private static sCellCountXR:I

.field private static sCellCountY:I

.field private static sCellCountYR:I

.field private static sCellHeight:I

.field private static sCellHorizontalSpacing:I

.field private static sCellVerticalSpacing:I

.field private static sCellWidth:I

.field private static sCellWorkingHeight:I

.field private static sCellWorkingWidth:I

.field private static sCellXMigratedFrom:I

.field private static sCellYMigratedFrom:I

.field private static sCheckTitleRunnable:Ljava/lang/Runnable;

.field private static sCurrentScreenCells:Ljava/lang/String;

.field private static sDesignedDefaultScreenId:J

.field public static sDragIconScaleRatio:F

.field private static sFitSystemViewPaddingBottom:I

.field private static sFolderCellHeight:I

.field private static sFolderCellMaxWidth:I

.field private static sFolderRecommendGridPaddingBottom:I

.field private static sFolderWorkingHeight:I

.field private static sHasNavigationBar:Z

.field private static sHideNotch:Z

.field private static sHotSeatsHeight:Lcom/miui/home/launcher/common/ChangeableValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/home/launcher/common/ChangeableValue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sHotSeatsMarginBottom:Lcom/miui/home/launcher/common/ChangeableValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/home/launcher/common/ChangeableValue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sHotSeatsMarginTop:Lcom/miui/home/launcher/common/ChangeableValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/home/launcher/common/ChangeableValue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sHotseatMaxCount:I

.field private static sIconHeight:I

.field private static sIconMaskTransparentEdge:I

.field private static sIconWidth:I

.field private static sIs720Mode:Z

.field private static sIsAccessibilityEnabled:Z

.field private static sIsAppStoreEnabled:Z

.field private static sIsDarkMode:Z

.field private static sIsDefaultIcon:Z

.field private static sIsGestureEnable:Z

.field private static sIsHotseatsAppTitleHided:Z

.field private static sIsImmersiveNavigationBar:Z

.field private static sIsInMultiWindowMode:Z

.field private static sIsInSnapShotMode:Z

.field private static sIsLayoutRtl:Z

.field private static sIsNetWorkConnected:Z

.field private static sIsSearchBarChanged:Z

.field private static sIsShowNotification:Z

.field private static sIsSupportMultiWindowMode:Z

.field private static sIsSupportSearchBar:Z

.field private static sIsTetheringSupported:Z

.field private static sLastConfiguration:Landroid/content/res/Configuration;

.field private static sLastRotation:I

.field private static sLauncherDatabaseName:Ljava/lang/String;

.field private static sMultiWindowModeLauncherHeight:I

.field private static sNeedRecalculateWidgetSpan:Z

.field private static sNeedShowMisplacedTips:Z

.field private static sNotchEditModePaddingTopDelta:I

.field private static sQuickCallCellVerticalSpacing:I

.field public static sQuickEditScreenRatio:F

.field private static sRealScreenHight:I

.field public static sRecommendBannerHeight:I

.field public static sRecommendBannerWidth:I

.field public static sRecommendLoadingTitle:Ljava/lang/String;

.field private static sRotatable:Z

.field private static sRotation:I

.field private static sRotationBeforeStart:I

.field private static sScreenCellsChangedTemporary:Z

.field private static sScreenDensity:F

.field private static sScreenDensityDpi:I

.field private static sScreenHeight:I

.field private static sScreenOrientationChanged:Z

.field public static sScreenScaleRatio:F

.field private static sScreenSizeChanged:Z

.field private static sScreenWidth:I

.field private static sSearchBarLightThreshold:F

.field private static sSearchBarMarginBottom:Lcom/miui/home/launcher/common/ChangeableValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/home/launcher/common/ChangeableValue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sSearchBarWidth:I

.field private static sSearchBarWidthDelta:I

.field private static sSettingTitle:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/util/Locale;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sShortcutMenuDisappearThreshold:I

.field private static sShowSearchBar:Lcom/miui/home/launcher/common/ChangeableValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/home/launcher/common/ChangeableValue<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static sStatusBarHeight:I

.field private static sSupportDarkenWallpaper:Z

.field private static sSupportSmallWindow:Z

.field private static sSystemuiFsgVersion:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static sThemeChanged:Z

.field private static sThemeValues:Lmiui/content/res/ThemeValues;

.field private static sUpdateIconPositionForMiui11Upgrade:Z

.field private static sUseOldVersionIcons:Z

.field private static sUseThemeOrOldmanCellCount:Z

.field private static sWidgetCellCountX:I

.field private static sWidgetCellCountY:I

.field private static sWidgetCellDefaultHeight:I

.field private static sWidgetCellDefaultWidth:I

.field private static sWidgetCellHeight:I

.field private static sWidgetCellMeasureHeight:I

.field private static sWidgetCellMeasureWidth:I

.field private static sWidgetCellMinHeight:I

.field private static sWidgetCellMinWidth:I

.field private static sWidgetCellPaddingBottom:I

.field private static sWidgetCellPaddingTop:I

.field private static sWidgetCellWidth:I

.field private static sWidgetWorkingHeight:I

.field private static sWidgetWorkingWidth:I

.field private static sWorkspaceCellPaddingBottom:Lcom/miui/home/launcher/common/ChangeableValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/home/launcher/common/ChangeableValue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sWorkspaceCellPaddingSide:I

.field private static sWorkspaceCellPaddingTop:I

.field private static sWorkspaceCellPaddingTopMultiWindow:I

.field private static sWorkspaceCellPaddingTopNotch:I

.field private static sWorkspaceIndicatorMarginBottom:I

.field private static sWorkspaceIndicatorMarginBottomInEditMode:I

.field private static sWorkspaceInvalidateEdgeWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 88
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sRotatable:Z

    const/4 v0, 0x0

    .line 89
    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIs720Mode:Z

    const/4 v1, -0x1

    .line 90
    sput v1, Lcom/miui/home/launcher/DeviceConfig;->sScreenWidth:I

    .line 91
    sput v1, Lcom/miui/home/launcher/DeviceConfig;->sScreenHeight:I

    .line 92
    sput v1, Lcom/miui/home/launcher/DeviceConfig;->sRealScreenHight:I

    const/high16 v2, -0x40800000    # -1.0f

    .line 93
    sput v2, Lcom/miui/home/launcher/DeviceConfig;->sScreenDensity:F

    .line 94
    sput v1, Lcom/miui/home/launcher/DeviceConfig;->sScreenDensityDpi:I

    .line 95
    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sScreenOrientationChanged:Z

    .line 96
    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsLayoutRtl:Z

    .line 97
    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sScreenSizeChanged:Z

    .line 98
    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsSearchBarChanged:Z

    .line 99
    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sScreenCellsChangedTemporary:Z

    .line 100
    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sNeedRecalculateWidgetSpan:Z

    .line 101
    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sNeedShowMisplacedTips:Z

    .line 102
    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sThemeChanged:Z

    .line 103
    sput v1, Lcom/miui/home/launcher/DeviceConfig;->sCellXMigratedFrom:I

    .line 104
    sput v1, Lcom/miui/home/launcher/DeviceConfig;->sCellYMigratedFrom:I

    .line 115
    sput v1, Lcom/miui/home/launcher/DeviceConfig;->sStatusBarHeight:I

    .line 116
    sput v1, Lcom/miui/home/launcher/DeviceConfig;->sSearchBarWidth:I

    .line 117
    sput v1, Lcom/miui/home/launcher/DeviceConfig;->sSearchBarWidthDelta:I

    .line 118
    new-instance v2, Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/miui/home/launcher/common/ChangeableValue;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/miui/home/launcher/DeviceConfig;->sSearchBarMarginBottom:Lcom/miui/home/launcher/common/ChangeableValue;

    .line 119
    new-instance v2, Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/miui/home/launcher/common/ChangeableValue;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/miui/home/launcher/DeviceConfig;->sHotSeatsMarginBottom:Lcom/miui/home/launcher/common/ChangeableValue;

    .line 120
    new-instance v2, Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/miui/home/launcher/common/ChangeableValue;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/miui/home/launcher/DeviceConfig;->sHotSeatsMarginTop:Lcom/miui/home/launcher/common/ChangeableValue;

    .line 121
    new-instance v2, Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/miui/home/launcher/common/ChangeableValue;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/miui/home/launcher/DeviceConfig;->sHotSeatsHeight:Lcom/miui/home/launcher/common/ChangeableValue;

    .line 122
    sput v1, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceCellPaddingSide:I

    .line 123
    sput v1, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceCellPaddingTop:I

    .line 124
    sput v1, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceCellPaddingTopNotch:I

    .line 125
    sput v1, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceCellPaddingTopMultiWindow:I

    .line 126
    new-instance v2, Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/miui/home/launcher/common/ChangeableValue;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceCellPaddingBottom:Lcom/miui/home/launcher/common/ChangeableValue;

    .line 127
    sput v1, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceIndicatorMarginBottom:I

    .line 128
    sput v1, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceIndicatorMarginBottomInEditMode:I

    .line 129
    sput v1, Lcom/miui/home/launcher/DeviceConfig;->sFolderRecommendGridPaddingBottom:I

    .line 131
    sput v1, Lcom/miui/home/launcher/DeviceConfig;->sIconWidth:I

    .line 132
    sput v1, Lcom/miui/home/launcher/DeviceConfig;->sApplicationIconContainerWidth:I

    .line 133
    sput v1, Lcom/miui/home/launcher/DeviceConfig;->sNotchEditModePaddingTopDelta:I

    .line 134
    sput v1, Lcom/miui/home/launcher/DeviceConfig;->sIconHeight:I

    .line 135
    sput v1, Lcom/miui/home/launcher/DeviceConfig;->sApplicationIconContainerHeight:I

    .line 136
    sput v1, Lcom/miui/home/launcher/DeviceConfig;->sCellCountX:I

    .line 137
    sput v1, Lcom/miui/home/launcher/DeviceConfig;->sCellCountY:I

    .line 138
    sput v1, Lcom/miui/home/launcher/DeviceConfig;->sCellCountXR:I

    .line 139
    sput v1, Lcom/miui/home/launcher/DeviceConfig;->sCellCountYR:I

    .line 140
    sput v1, Lcom/miui/home/launcher/DeviceConfig;->sCellWidth:I

    .line 141
    sput v1, Lcom/miui/home/launcher/DeviceConfig;->sCellHeight:I

    .line 142
    sput v1, Lcom/miui/home/launcher/DeviceConfig;->sAllAppsCellHeight:I

    .line 143
    sput v1, Lcom/miui/home/launcher/DeviceConfig;->sAllAppsDividerTop:I

    .line 144
    sput v1, Lcom/miui/home/launcher/DeviceConfig;->sAllAppsDividerBottom:I

    .line 145
    sput v1, Lcom/miui/home/launcher/DeviceConfig;->sFolderCellHeight:I

    .line 147
    sput v1, Lcom/miui/home/launcher/DeviceConfig;->sCellVerticalSpacing:I

    .line 148
    sput v1, Lcom/miui/home/launcher/DeviceConfig;->sCellHorizontalSpacing:I

    .line 149
    sput v1, Lcom/miui/home/launcher/DeviceConfig;->sQuickCallCellVerticalSpacing:I

    .line 150
    sput v1, Lcom/miui/home/launcher/DeviceConfig;->sCellWorkingWidth:I

    .line 151
    sput v1, Lcom/miui/home/launcher/DeviceConfig;->sCellWorkingHeight:I

    .line 152
    sput v1, Lcom/miui/home/launcher/DeviceConfig;->sFolderWorkingHeight:I

    .line 153
    sput v1, Lcom/miui/home/launcher/DeviceConfig;->sHotseatMaxCount:I

    .line 171
    sget-boolean v1, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v1, :cond_0

    const-string v1, "4x6"

    goto :goto_0

    :cond_0
    const-string v1, "4x5"

    :goto_0
    sput-object v1, Lcom/miui/home/launcher/DeviceConfig;->DEFAULT_DATABASE_SUFFIX:Ljava/lang/String;

    .line 178
    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsInSnapShotMode:Z

    const/4 v1, 0x0

    .line 181
    sput-object v1, Lcom/miui/home/launcher/DeviceConfig;->sLastConfiguration:Landroid/content/res/Configuration;

    const-string v1, "support_force_touch"

    .line 184
    invoke-static {v1, v0}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getBooleanFromFeatureParse(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->IS_SURRPORT_FORCE_TOUCH:Z

    const-string v1, "force_touch_light"

    const v2, 0x3ecccccd    # 0.4f

    .line 185
    invoke-static {v1, v2}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getFloatFromFeatureParse(Ljava/lang/String;F)F

    move-result v1

    sput v1, Lcom/miui/home/launcher/DeviceConfig;->FORCE_TOUCH_TRIGGER_PRESSURE:F

    const-string v1, "force_touch_deep"

    const v2, 0x3f4ccccd    # 0.8f

    .line 186
    invoke-static {v1, v2}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getFloatFromFeatureParse(Ljava/lang/String;F)F

    move-result v1

    sput v1, Lcom/miui/home/launcher/DeviceConfig;->FORCE_TOUCH_MENU_PRESSURE:F

    const/4 v1, 0x1

    .line 191
    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sIsShowNotification:Z

    .line 192
    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsAppStoreEnabled:Z

    .line 193
    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sHasNavigationBar:Z

    .line 194
    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsGestureEnable:Z

    .line 195
    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsImmersiveNavigationBar:Z

    .line 196
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sFitSystemViewPaddingBottom:I

    .line 197
    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sIsHotseatsAppTitleHided:Z

    .line 198
    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsNetWorkConnected:Z

    .line 200
    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsAccessibilityEnabled:Z

    .line 202
    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsTetheringSupported:Z

    .line 204
    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsDarkMode:Z

    .line 205
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sLastRotation:I

    .line 207
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sRotation:I

    .line 208
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sRotationBeforeStart:I

    const v2, 0x3dcccccd    # 0.1f

    .line 210
    sput v2, Lcom/miui/home/launcher/DeviceConfig;->sSearchBarLightThreshold:F

    .line 212
    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sSupportSmallWindow:Z

    const-string v2, "ro.miui.customized.region"

    const-string v3, ""

    .line 215
    invoke-static {v2, v3}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getStringFromSystemProperites(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/miui/home/launcher/DeviceConfig;->CURRENT_REGION:Ljava/lang/String;

    const-string v2, "ro.com.miui.rsa"

    const-string v3, ""

    .line 218
    invoke-static {v2, v3}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getStringFromSystemProperites(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/miui/home/launcher/DeviceConfig;->CLIENT_ID_BASE:Ljava/lang/String;

    .line 220
    new-instance v2, Lcom/miui/home/launcher/DeviceConfig$1;

    invoke-direct {v2}, Lcom/miui/home/launcher/DeviceConfig$1;-><init>()V

    sput-object v2, Lcom/miui/home/launcher/DeviceConfig;->USE_GOOGLE_MINUS_SCREEN_REGIONS:Ljava/util/HashSet;

    .line 225
    new-instance v2, Lcom/miui/home/launcher/DeviceConfig$2;

    invoke-direct {v2}, Lcom/miui/home/launcher/DeviceConfig$2;-><init>()V

    sput-object v2, Lcom/miui/home/launcher/DeviceConfig;->USE_GOOGLE_MINUS_SCREEN_CLIENT_ID:Ljava/util/HashSet;

    .line 228
    new-instance v2, Lcom/miui/home/launcher/DeviceConfig$3;

    invoke-direct {v2}, Lcom/miui/home/launcher/DeviceConfig$3;-><init>()V

    sput-object v2, Lcom/miui/home/launcher/DeviceConfig;->SELECT_MINUS_SCREEN_CLIENT_ID:Ljava/util/HashSet;

    .line 232
    sget-object v2, Lcom/miui/home/launcher/DeviceConfig;->SELECT_MINUS_SCREEN_CLIENT_ID:Ljava/util/HashSet;

    sget-object v3, Lcom/miui/home/launcher/DeviceConfig;->CLIENT_ID_BASE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->CAN_SWITCH_MINUS_SCREEN:Z

    .line 233
    sget-object v2, Lcom/miui/home/launcher/DeviceConfig;->USE_GOOGLE_MINUS_SCREEN_REGIONS:Ljava/util/HashSet;

    sget-object v3, Lcom/miui/home/launcher/DeviceConfig;->CURRENT_REGION:Ljava/lang/String;

    .line 234
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/miui/home/launcher/DeviceConfig;->USE_GOOGLE_MINUS_SCREEN_CLIENT_ID:Ljava/util/HashSet;

    sget-object v3, Lcom/miui/home/launcher/DeviceConfig;->CLIENT_ID_BASE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v2, v0

    goto :goto_2

    :cond_2
    :goto_1
    move v2, v1

    :goto_2
    sput-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->ONLY_USE_GOOGLE_MINUS_SCREEN:Z

    .line 235
    sget-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->ONLY_USE_GOOGLE_MINUS_SCREEN:Z

    if-nez v2, :cond_4

    sget-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->CAN_SWITCH_MINUS_SCREEN:Z

    if-eqz v2, :cond_3

    .line 237
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPersonalAssistantGoogle()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    move v2, v0

    goto :goto_4

    :cond_4
    :goto_3
    move v2, v1

    :goto_4
    sput-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->IS_USE_GOOGLE_MINUS_SCREEN:Z

    const-string v2, "fr_orange"

    .line 240
    sget-object v3, Lcom/miui/home/launcher/DeviceConfig;->CURRENT_REGION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->IS_ORANGE_BUILD:Z

    const-string v2, "jp_kd"

    .line 242
    sget-object v3, Lcom/miui/home/launcher/DeviceConfig;->CURRENT_REGION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->IS_KDDI_BUILD:Z

    const-string v2, "lm_cr"

    .line 246
    sget-object v3, Lcom/miui/home/launcher/DeviceConfig;->CURRENT_REGION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "mx_telcel"

    sget-object v3, Lcom/miui/home/launcher/DeviceConfig;->CURRENT_REGION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_5

    :cond_5
    move v2, v0

    goto :goto_6

    :cond_6
    :goto_5
    move v2, v1

    :goto_6
    sput-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->IS_AMX_BUILD:Z

    const-string v2, "ro.miui.ui.version.name"

    const-string v3, ""

    .line 248
    invoke-static {v2, v3}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getStringFromSystemProperites(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/miui/home/launcher/DeviceConfig;->MIUI_BIG_VERSION:Ljava/lang/String;

    .line 250
    sget-object v2, Lcom/miui/home/launcher/DeviceConfig;->MIUI_BIG_VERSION:Ljava/lang/String;

    const-string v3, "V12"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    sput-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->IS_MIUI_12:Z

    .line 251
    sget-object v2, Lcom/miui/home/launcher/DeviceConfig;->MIUI_BIG_VERSION:Ljava/lang/String;

    const-string v3, "V11"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/miui/home/launcher/DeviceConfig;->IS_MIUI_11:Ljava/lang/Boolean;

    .line 252
    sget-object v2, Lcom/miui/home/launcher/DeviceConfig;->MIUI_BIG_VERSION:Ljava/lang/String;

    const-string v3, "V10"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/miui/home/launcher/DeviceConfig;->IS_MIUI_10:Ljava/lang/Boolean;

    .line 254
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isMiuiLiteVersion()Z

    move-result v2

    sput-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->IS_MIUI_LITE_DEVICE:Z

    .line 260
    :try_start_0
    sget-object v2, Lcom/miui/home/launcher/DeviceConfig;->MIUI_BIG_VERSION:Ljava/lang/String;

    const-string v3, "[^0-9]"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/miui/home/launcher/DeviceConfig;->MIUI_VERSION:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    .line 262
    :catch_0
    sget-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->IS_MIUI_12:Z

    if-eqz v2, :cond_7

    const/16 v2, 0xc

    .line 263
    sput v2, Lcom/miui/home/launcher/DeviceConfig;->MIUI_VERSION:I

    goto :goto_7

    .line 264
    :cond_7
    sget-object v2, Lcom/miui/home/launcher/DeviceConfig;->IS_MIUI_11:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_8

    const/16 v2, 0xb

    .line 265
    sput v2, Lcom/miui/home/launcher/DeviceConfig;->MIUI_VERSION:I

    goto :goto_7

    :cond_8
    const/16 v2, 0xa

    .line 267
    sput v2, Lcom/miui/home/launcher/DeviceConfig;->MIUI_VERSION:I

    :goto_7
    const-string v2, "Meitu"

    .line 272
    sget-object v3, Lmiui/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->IS_MEITU:Z

    .line 281
    new-instance v2, Ljava/io/File;

    const-string v3, "/system/media/theme/icons_version_1"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    xor-int/2addr v2, v1

    sput-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->sUseOldVersionIcons:Z

    .line 488
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v2, Lcom/miui/home/launcher/DeviceConfig;->sSettingTitle:Ljava/util/concurrent/ConcurrentHashMap;

    .line 501
    sget-object v2, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$fZLHMzBCXvjaX4aNI3pY6TLslOw;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$fZLHMzBCXvjaX4aNI3pY6TLslOw;

    sput-object v2, Lcom/miui/home/launcher/DeviceConfig;->sCheckTitleRunnable:Ljava/lang/Runnable;

    .line 742
    new-instance v2, Lmiui/content/res/ThemeValues;

    invoke-direct {v2}, Lmiui/content/res/ThemeValues;-><init>()V

    sput-object v2, Lcom/miui/home/launcher/DeviceConfig;->sThemeValues:Lmiui/content/res/ThemeValues;

    .line 896
    new-instance v2, Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/miui/home/launcher/common/ChangeableValue;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/miui/home/launcher/DeviceConfig;->sShowSearchBar:Lcom/miui/home/launcher/common/ChangeableValue;

    .line 1101
    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sUseThemeOrOldmanCellCount:Z

    const-wide/16 v2, -0x1

    .line 1727
    sput-wide v2, Lcom/miui/home/launcher/DeviceConfig;->INVALIDATE_DEFAULT_SCREEN_ID:J

    .line 1728
    sget-wide v2, Lcom/miui/home/launcher/DeviceConfig;->INVALIDATE_DEFAULT_SCREEN_ID:J

    sput-wide v2, Lcom/miui/home/launcher/DeviceConfig;->sDesignedDefaultScreenId:J

    .line 1778
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_9

    move v1, v0

    :cond_9
    sput v1, Lcom/miui/home/launcher/DeviceConfig;->TEMP_SHARE_MODE_FOR_WORLD_READABLE:I

    .line 1781
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_a

    move v1, v0

    goto :goto_8

    :cond_a
    const/4 v1, 0x2

    :goto_8
    sput v1, Lcom/miui/home/launcher/DeviceConfig;->TEMP_SHARE_MODE_FOR_WORLD_WRITEABLE:I

    .line 1935
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v1, Lcom/miui/home/launcher/DeviceConfig;->sSystemuiFsgVersion:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2017
    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sHideNotch:Z

    .line 2044
    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sUpdateIconPositionForMiui11Upgrade:Z

    return-void
.end method

.method public static Init(Landroid/content/Context;Z)Z
    .locals 7

    .line 310
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->loadThemeResource(Landroid/content/Context;)V

    .line 311
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->enableAndResetCache()V

    .line 312
    invoke-static {p0}, Lcom/miui/home/launcher/compat/LauncherThemeCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/compat/LauncherThemeCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/compat/LauncherThemeCompat;->enableAndResetCache()V

    .line 313
    invoke-static {}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->getInstance()Lcom/miui/home/launcher/common/LauncherIconSizeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->enableAndResetCache()V

    .line 314
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->checkSearchBarSupport(Landroid/content/Context;)V

    .line 315
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->loadDensity(Landroid/content/Context;)V

    .line 316
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 317
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 318
    sput-boolean v3, Lcom/miui/home/launcher/DeviceConfig;->sIsLayoutRtl:Z

    goto :goto_0

    .line 320
    :cond_0
    sput-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->sIsLayoutRtl:Z

    .line 322
    :goto_0
    sget-object v1, Lcom/miui/home/launcher/DeviceConfig;->sLastConfiguration:Landroid/content/res/Configuration;

    if-nez v1, :cond_1

    .line 323
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    sput-object v1, Lcom/miui/home/launcher/DeviceConfig;->sLastConfiguration:Landroid/content/res/Configuration;

    .line 324
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->updateMaskTransparentEdge()V

    goto :goto_3

    .line 326
    :cond_1
    invoke-virtual {v1, v0}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v1

    const/high16 v4, -0x80000000

    and-int/2addr v4, v1

    if-eqz v4, :cond_2

    .line 328
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->clearWallpaperSrc()V

    :cond_2
    if-eqz v4, :cond_3

    .line 331
    sput-boolean v3, Lcom/miui/home/launcher/DeviceConfig;->sThemeChanged:Z

    .line 332
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->updateMaskTransparentEdge()V

    goto :goto_1

    .line 334
    :cond_3
    sput-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->sThemeChanged:Z

    :goto_1
    const v4, -0x3fffed7c

    and-int/2addr v1, v4

    if-nez v1, :cond_5

    if-nez p1, :cond_5

    .line 336
    sget-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sScreenCellsChangedTemporary:Z

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    return v2

    .line 340
    :cond_5
    :goto_2
    sget-object v1, Lcom/miui/home/launcher/DeviceConfig;->sLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, v0}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 347
    :goto_3
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountXDef(Landroid/content/Context;)I

    move-result v1

    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountXMin(Landroid/content/Context;)I

    move-result v4

    if-ne v1, v4, :cond_7

    .line 348
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountYDef(Landroid/content/Context;)I

    move-result v1

    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountYMin(Landroid/content/Context;)I

    move-result v4

    if-eq v1, v4, :cond_6

    goto :goto_4

    :cond_6
    const-string v1, "pref_key_use_theme_cells_size"

    .line 353
    invoke-static {p0, v1, v2}, Lcom/miui/home/launcher/common/PreferenceUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    move v1, v2

    goto :goto_5

    :cond_7
    :goto_4
    const-string v1, "pref_key_use_theme_cells_size"

    .line 351
    invoke-static {p0, v1, v3}, Lcom/miui/home/launcher/common/PreferenceUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    move v1, v3

    .line 355
    :goto_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 356
    invoke-static {}, Lcom/miui/launcher/utils/MiuiWindowManagerUtils;->getInitialDisplaySize()Landroid/graphics/Point;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 357
    iget v5, v5, Landroid/graphics/Point;->x:I

    const/16 v6, 0x2d0

    if-le v5, v6, :cond_8

    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->isNaturalWidth720p(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_8

    move v5, v3

    goto :goto_6

    :cond_8
    move v5, v2

    :goto_6
    sput-boolean v5, Lcom/miui/home/launcher/DeviceConfig;->sIs720Mode:Z

    .line 358
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->useOldVersionIcons()Z

    move-result v5

    if-eqz v5, :cond_9

    const v5, 0x7f070082

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    goto :goto_7

    .line 359
    :cond_9
    invoke-static {}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->getInstance()Lcom/miui/home/launcher/common/LauncherIconSizeProvider;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->getLauncherIconWidth()I

    move-result v5

    :goto_7
    sput v5, Lcom/miui/home/launcher/DeviceConfig;->sIconWidth:I

    .line 360
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->useOldVersionIcons()Z

    move-result v5

    if-eqz v5, :cond_a

    const v5, 0x7f070080

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    goto :goto_8

    .line 361
    :cond_a
    invoke-static {}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->getInstance()Lcom/miui/home/launcher/common/LauncherIconSizeProvider;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->getLauncherIconHeight()I

    move-result v5

    :goto_8
    sput v5, Lcom/miui/home/launcher/DeviceConfig;->sIconHeight:I

    .line 362
    sget v5, Lcom/miui/home/launcher/DeviceConfig;->sIconWidth:I

    const v6, 0x7f0700fd

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sput v5, Lcom/miui/home/launcher/DeviceConfig;->sApplicationIconContainerWidth:I

    .line 363
    sget v5, Lcom/miui/home/launcher/DeviceConfig;->sIconHeight:I

    const v6, 0x7f0700fe

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    add-int/2addr v5, v6

    sput v5, Lcom/miui/home/launcher/DeviceConfig;->sApplicationIconContainerHeight:I

    .line 365
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0700a0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    sput v5, Lcom/miui/home/launcher/DeviceConfig;->sNotchEditModePaddingTopDelta:I

    const v5, 0x7f070253

    .line 366
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sput v5, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceInvalidateEdgeWidth:I

    const v5, 0x7f07020f

    .line 367
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sput v5, Lcom/miui/home/launcher/DeviceConfig;->sStatusBarHeight:I

    .line 369
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isRotatable()Z

    move-result v5

    if-eqz v5, :cond_b

    const v5, 0x7f070247

    goto :goto_9

    :cond_b
    const v5, 0x7f070246

    :goto_9
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sput v5, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceCellPaddingSide:I

    const v5, 0x7f070248

    .line 372
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sput v5, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceCellPaddingTop:I

    .line 373
    sget v5, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceCellPaddingTop:I

    const v6, 0x7f070243

    .line 374
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    add-int/2addr v5, v6

    sput v5, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceCellPaddingTopNotch:I

    const v5, 0x7f070249

    .line 375
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sput v5, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceCellPaddingTopMultiWindow:I

    const v5, 0x7f0701ce

    .line 376
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sput v5, Lcom/miui/home/launcher/DeviceConfig;->sFolderRecommendGridPaddingBottom:I

    const v5, 0x7f070256

    .line 378
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sput v5, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellMeasureWidth:I

    const v5, 0x7f070255

    .line 379
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sput v5, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellMeasureHeight:I

    const v5, 0x7f070259

    .line 380
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sput v5, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellMinWidth:I

    const v5, 0x7f070258

    .line 381
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sput v5, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellMinHeight:I

    const v5, 0x7f07025c

    .line 382
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sput v5, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellPaddingTop:I

    .line 383
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isRotatable()Z

    move-result v5

    if-eqz v5, :cond_c

    const v5, 0x7f07025b

    goto :goto_a

    :cond_c
    const v5, 0x7f07025a

    :goto_a
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sput v5, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellPaddingBottom:I

    .line 387
    invoke-static {p0, v4}, Lcom/miui/home/launcher/DeviceConfig;->calcLauncherHeightWhenMultiWindow(Landroid/content/Context;Landroid/content/res/Resources;)V

    .line 388
    sput-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->sNeedRecalculateWidgetSpan:Z

    .line 389
    sput-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->sNeedShowMisplacedTips:Z

    .line 390
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->hasNavigationBar()Z

    move-result v5

    sput-boolean v5, Lcom/miui/home/launcher/DeviceConfig;->sHasNavigationBar:Z

    .line 391
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f050006

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    sput-boolean v5, Lcom/miui/home/launcher/DeviceConfig;->sIsHotseatsAppTitleHided:Z

    .line 392
    invoke-static {p0, v4}, Lcom/miui/home/launcher/DeviceConfig;->loadScreenSize(Landroid/content/Context;Landroid/content/res/Resources;)V

    .line 393
    invoke-static {p0, v4}, Lcom/miui/home/launcher/DeviceConfig;->calcGridSize(Landroid/content/Context;Landroid/content/res/Resources;)V

    .line 395
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f100205

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/miui/home/launcher/DeviceConfig;->sRecommendLoadingTitle:Ljava/lang/String;

    .line 396
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0700c5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3f4ccccd    # 0.8f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    sput v4, Lcom/miui/home/launcher/DeviceConfig;->sRecommendBannerWidth:I

    .line 397
    sget v4, Lcom/miui/home/launcher/DeviceConfig;->sCellHeight:I

    int-to-float v4, v4

    mul-float/2addr v4, v5

    float-to-int v4, v4

    sput v4, Lcom/miui/home/launcher/DeviceConfig;->sRecommendBannerHeight:I

    .line 398
    sput-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->sScreenCellsChangedTemporary:Z

    if-eqz p1, :cond_d

    if-eqz v1, :cond_e

    .line 400
    :cond_d
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->confirmCellsCount(Landroid/content/Context;)V

    .line 402
    :cond_e
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->checkIsTetheringSupported()V

    .line 403
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->checkSettingTitle()V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 404
    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->getDipPixelSize(F)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x50

    int-to-float v1, v1

    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->getDipPixelSize(F)I

    move-result v1

    sput v1, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellDefaultWidth:I

    .line 405
    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->getDipPixelSize(F)I

    move-result p1

    rsub-int/lit8 p1, p1, 0x4a

    int-to-float p1, p1

    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->getDipPixelSize(F)I

    move-result p1

    sput p1, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellDefaultHeight:I

    .line 406
    iget p1, v0, Landroid/content/res/Configuration;->uiMode:I

    const/16 v0, 0x20

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_f

    move v2, v3

    :cond_f
    sput-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->sIsDarkMode:Z

    .line 407
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0701fa

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    sput p1, Lcom/miui/home/launcher/DeviceConfig;->sShortcutMenuDisappearThreshold:I

    .line 408
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f090004

    invoke-virtual {p1, v0, v3, v3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result p1

    sput p1, Lcom/miui/home/launcher/DeviceConfig;->sSearchBarLightThreshold:F

    .line 410
    invoke-static {}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getInstance()Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getSavedColorMode()Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->setAllAppsColorMode(Lcom/miui/home/launcher/allapps/AllAppsColorMode;)V

    .line 411
    invoke-static {}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getInstance()Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getBackgroundAlpha()I

    move-result p1

    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->setAllAppsBackgroundAlpha(I)V

    .line 412
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 413
    invoke-static {}, Lcom/github/promeg/pinyinhelper/Pinyin;->newConfig()Lcom/github/promeg/pinyinhelper/Pinyin$Config;

    move-result-object p1

    invoke-static {}, Lcom/miui/home/library/utils/CustomPinyinDict;->getInstance()Lcom/miui/home/library/utils/CustomPinyinDict;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/promeg/pinyinhelper/Pinyin$Config;->with(Lcom/github/promeg/pinyinhelper/PinyinDict;)Lcom/github/promeg/pinyinhelper/Pinyin$Config;

    move-result-object p1

    invoke-static {p1}, Lcom/github/promeg/pinyinhelper/Pinyin;->init(Lcom/github/promeg/pinyinhelper/Pinyin$Config;)V

    goto :goto_b

    :cond_10
    const/4 p1, 0x0

    .line 415
    invoke-static {p1}, Lcom/github/promeg/pinyinhelper/Pinyin;->init(Lcom/github/promeg/pinyinhelper/Pinyin$Config;)V

    .line 418
    :goto_b
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->checkDarkenWallpaperSupport(Landroid/content/Context;)Z

    move-result p1

    sput-boolean p1, Lcom/miui/home/launcher/DeviceConfig;->sSupportDarkenWallpaper:Z

    .line 419
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->updateIsDefaultIcon(Landroid/content/Context;)V

    .line 420
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->checkIsSupportMultiWindowMode(Landroid/content/Context;)V

    .line 421
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->checkIsSupportSmallWindow()Z

    move-result p0

    sput-boolean p0, Lcom/miui/home/launcher/DeviceConfig;->sSupportSmallWindow:Z

    return v3
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method static synthetic access$001(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method static synthetic access$002(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$003(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$004(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static backupDB(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9

    .line 1526
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v0

    .line 1527
    invoke-static {}, Lcom/miui/home/library/utils/Preconditions;->assertNonUiThread()V

    .line 1528
    sget-object v1, Lcom/miui/home/launcher/DeviceConfig;->sLauncherDatabaseName:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/miui/home/launcher/allapps/LauncherMode;->getLauncherDatabasePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1529
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    const-string v2, "pref_key_auto_backup_time"

    const-wide/16 v4, -0x1

    .line 1532
    invoke-static {p0, v2, v4, v5}, Lcom/miui/home/launcher/common/PreferenceUtils;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v6

    .line 1534
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/miui/home/launcher/DeviceConfig;->sLauncherDatabaseName:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/miui/home/launcher/allapps/LauncherMode;->getLauncherDatabasePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 1535
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    cmp-long v0, v6, v4

    if-eqz v0, :cond_1

    .line 1539
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x6ddd00

    cmp-long v0, v4, v6

    if-gez v0, :cond_1

    return v2

    .line 1542
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 1546
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p1

    invoke-static {v0, p1}, Lmiui/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "pref_key_auto_backup_time"

    .line 1547
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 1548
    invoke-static {p0}, Lcom/miui/home/launcher/IconReorganizeMonitor;->onDBBackupFinishedForReorgnize(Landroid/content/Context;)V

    return v2

    :cond_3
    return v3
.end method

.method public static calcAllAppsCellSize(Landroid/content/Context;)V
    .locals 5

    .line 1163
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070052

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1164
    sget v1, Lcom/miui/home/launcher/DeviceConfig;->sRealScreenHight:I

    .line 1165
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v2

    sub-int/2addr v1, v2

    .line 1166
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070068

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    .line 1167
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070067

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    .line 1168
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0701d8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    .line 1169
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getSearchBarHolderVerticalPadding(Landroid/content/Context;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 1170
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070056

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    .line 1172
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isScreenOrientationLandscape()Z

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_0

    int-to-float v1, v1

    mul-float/2addr v1, v3

    .line 1173
    sget v2, Lcom/miui/home/launcher/DeviceConfig;->sCellCountYR:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    sput v1, Lcom/miui/home/launcher/DeviceConfig;->sAllAppsCellHeight:I

    goto :goto_0

    :cond_0
    int-to-float v1, v1

    mul-float/2addr v1, v3

    .line 1175
    sget v2, Lcom/miui/home/launcher/DeviceConfig;->sCellCountY:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    sput v1, Lcom/miui/home/launcher/DeviceConfig;->sAllAppsCellHeight:I

    .line 1177
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700fe

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 1178
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2}, Landroid/text/TextPaint;-><init>()V

    .line 1179
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070252

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1180
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsCellHeight()I

    move-result v3

    sub-int/2addr v3, v1

    .line 1182
    invoke-static {p0}, Lcom/miui/home/launcher/compat/LauncherThemeCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/compat/LauncherThemeCompat;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/home/launcher/compat/LauncherThemeCompat;->getLauncherIconHeight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 1183
    invoke-static {p0}, Lcom/miui/home/launcher/compat/LauncherThemeCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/compat/LauncherThemeCompat;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/LauncherThemeCompat;->getTitleMarginTop()I

    move-result p0

    sub-int/2addr v3, p0

    const/4 p0, 0x0

    .line 1184
    invoke-virtual {v2, p0}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result p0

    sub-int/2addr v3, p0

    add-int p0, v0, v1

    sub-int/2addr p0, v3

    .line 1185
    div-int/lit8 p0, p0, 0x2

    sput p0, Lcom/miui/home/launcher/DeviceConfig;->sAllAppsDividerTop:I

    add-int/2addr v0, v3

    sub-int/2addr v0, v1

    .line 1186
    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sAllAppsDividerBottom:I

    return-void
.end method

.method private static calcDefaultWorkspaceName(Lcom/miui/home/launcher/allapps/LauncherMode;)Ljava/lang/String;
    .locals 3

    .line 1216
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountX:I

    .line 1217
    sget v1, Lcom/miui/home/launcher/DeviceConfig;->sCellCountY:I

    .line 1218
    sget-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->sRotatable:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isScreenOrientationLandscape()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1219
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountXR:I

    .line 1220
    sget v1, Lcom/miui/home/launcher/DeviceConfig;->sCellCountYR:I

    .line 1222
    :cond_0
    invoke-static {v0, v1}, Lcom/miui/home/launcher/DeviceConfig;->getCellSizeVal(II)Ljava/lang/String;

    move-result-object v0

    .line 1223
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/LauncherMode;->getDefaultWorkspaceNamePrefix()Ljava/lang/String;

    move-result-object p0

    .line 1225
    sget-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sRotatable:Z

    if-eqz v1, :cond_1

    .line 1226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "default_workspace_rotatable"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1229
    :cond_1
    sget-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->IS_MEITU:Z

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->useSecondSpaceLayout()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "meitu_"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1232
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "default_workspace"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1233
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->useSecondSpaceLayout()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_private_model"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_3
    :goto_0
    return-object p0
.end method

.method private static final calcGridSize(Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 4

    .line 1045
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceCellPaddingSide:I

    mul-int/lit8 v0, v0, 0x2

    .line 1046
    sget v1, Lcom/miui/home/launcher/DeviceConfig;->sStatusBarHeight:I

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getWorkspaceCellPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getWorkspaceCellPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    .line 1047
    sget v2, Lcom/miui/home/launcher/DeviceConfig;->sScreenWidth:I

    sub-int/2addr v2, v0

    sput v2, Lcom/miui/home/launcher/DeviceConfig;->sCellWorkingWidth:I

    .line 1048
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsInMultiWindowMode:Z

    if-nez v0, :cond_0

    .line 1049
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sScreenHeight:I

    sub-int/2addr v0, v1

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sCellWorkingHeight:I

    goto :goto_0

    .line 1051
    :cond_0
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sMultiWindowModeLauncherHeight:I

    sub-int/2addr v0, v1

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sCellWorkingHeight:I

    .line 1054
    :goto_0
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sCellWorkingHeight:I

    sget-object v1, Lcom/miui/home/launcher/DeviceConfig;->sHotSeatsMarginBottom:Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-virtual {v1}, Lcom/miui/home/launcher/common/ChangeableValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x0

    .line 1055
    invoke-static {p0, v1}, Lcom/miui/home/launcher/DeviceConfig;->calcHotSeatsHeight(Landroid/content/Context;Z)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {p0, v3}, Lcom/miui/home/launcher/DeviceConfig;->calcHotSeatsHeight(Landroid/content/Context;Z)I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v0, v2

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sFolderWorkingHeight:I

    .line 1057
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sStatusBarHeight:I

    sget v2, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellPaddingTop:I

    add-int/2addr v0, v2

    sget v2, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellPaddingBottom:I

    add-int/2addr v0, v2

    .line 1058
    sget v2, Lcom/miui/home/launcher/DeviceConfig;->sScreenWidth:I

    sub-int/2addr v2, v1

    sput v2, Lcom/miui/home/launcher/DeviceConfig;->sWidgetWorkingWidth:I

    .line 1059
    sget v1, Lcom/miui/home/launcher/DeviceConfig;->sScreenHeight:I

    sub-int/2addr v1, v0

    sput v1, Lcom/miui/home/launcher/DeviceConfig;->sWidgetWorkingHeight:I

    .line 1060
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sRotatable:Z

    if-eqz v0, :cond_2

    .line 1061
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->loadCellsCountConfig(Landroid/content/Context;)V

    .line 1062
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountX:I

    sget v1, Lcom/miui/home/launcher/DeviceConfig;->sCellCountY:I

    invoke-static {v0, v1}, Lcom/miui/home/launcher/DeviceConfig;->getCellSizeVal(II)Ljava/lang/String;

    move-result-object v0

    .line 1063
    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->getDatabaseNameBySuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/DeviceConfig;->sLauncherDatabaseName:Ljava/lang/String;

    const v0, 0x7f0b0020

    .line 1064
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    sput p1, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellCountY:I

    sput p1, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellCountX:I

    .line 1066
    sget p1, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellMinWidth:I

    sput p1, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellWidth:I

    .line 1067
    sget p1, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellMinHeight:I

    sput p1, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellHeight:I

    .line 1069
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isScreenOrientationLandscape()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1070
    sget p1, Lcom/miui/home/launcher/DeviceConfig;->sCellCountX:I

    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountY:I

    add-int/2addr p1, v0

    sput p1, Lcom/miui/home/launcher/DeviceConfig;->sCellCountX:I

    .line 1071
    sget p1, Lcom/miui/home/launcher/DeviceConfig;->sCellCountX:I

    sub-int v0, p1, v0

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountY:I

    .line 1072
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountY:I

    sub-int/2addr p1, v0

    sput p1, Lcom/miui/home/launcher/DeviceConfig;->sCellCountX:I

    .line 1073
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountXR:I

    .line 1074
    sget p1, Lcom/miui/home/launcher/DeviceConfig;->sCellCountX:I

    sput p1, Lcom/miui/home/launcher/DeviceConfig;->sCellCountYR:I

    .line 1076
    :cond_1
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->tryToMigrateDefaultDatabase(Landroid/content/Context;)V

    goto :goto_1

    .line 1078
    :cond_2
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->loadCellsCountConfig(Landroid/content/Context;)V

    .line 1080
    sget p1, Lcom/miui/home/launcher/DeviceConfig;->sCellCountX:I

    sput p1, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellCountX:I

    .line 1081
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountY:I

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellCountY:I

    .line 1082
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sScreenWidth:I

    div-int/2addr v0, p1

    sget p1, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellMinWidth:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    sput p1, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellWidth:I

    .line 1083
    sget p1, Lcom/miui/home/launcher/DeviceConfig;->sScreenHeight:I

    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sStatusBarHeight:I

    sub-int/2addr p1, v0

    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellPaddingTop:I

    sub-int/2addr p1, v0

    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellPaddingBottom:I

    sub-int/2addr p1, v0

    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountY:I

    div-int/2addr p1, v0

    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellMinHeight:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    sput p1, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellHeight:I

    .line 1085
    sget p1, Lcom/miui/home/launcher/DeviceConfig;->sCellCountX:I

    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountY:I

    invoke-static {p1, v0}, Lcom/miui/home/launcher/DeviceConfig;->getCellSizeVal(II)Ljava/lang/String;

    move-result-object p1

    .line 1086
    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->getDatabaseNameBySuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/miui/home/launcher/DeviceConfig;->sLauncherDatabaseName:Ljava/lang/String;

    .line 1087
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->tryToMigrateDefaultDatabase(Landroid/content/Context;)V

    .line 1090
    :goto_1
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->calculateHotseatMaxCount()I

    move-result p0

    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->setHotseatMaxCount(I)V

    return-void
.end method

.method private static calcHotSeatsHeight(Landroid/content/Context;Z)I
    .locals 1

    .line 722
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p1, :cond_0

    .line 725
    invoke-static {}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->getInstance()Lcom/miui/home/launcher/common/LauncherIconSizeProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->getLauncherIconHeight()I

    move-result p1

    const v0, 0x7f0700fe

    .line 726
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr p1, p0

    goto :goto_1

    .line 728
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isScreenOrientationLandscape()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 729
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->useNavigationBarLayoutMode()Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0700f4

    .line 730
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_1
    const p1, 0x7f0700f3

    .line 731
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    .line 733
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->useNavigationBarLayoutMode()Z

    move-result p1

    if-eqz p1, :cond_3

    const p1, 0x7f0700f5

    .line 734
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_3
    const p1, 0x7f0700f2

    .line 735
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    :goto_0
    int-to-float p0, p0

    .line 737
    invoke-static {}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->getInstance()Lcom/miui/home/launcher/common/LauncherIconSizeProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->getHotSeatHeightScaleWithoutSearchBar()F

    move-result p1

    mul-float/2addr p0, p1

    float-to-int p1, p0

    :goto_1
    return p1
.end method

.method private static calcHotSeatsMarginBottom(Landroid/content/Context;ZZ)I
    .locals 1

    .line 700
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p1, :cond_0

    const p1, 0x7f0701d8

    .line 703
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 704
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->calcSearchBarMarginTop(Landroid/content/Context;)I

    move-result v0

    add-int/2addr p1, v0

    .line 705
    invoke-static {p0, p2}, Lcom/miui/home/launcher/DeviceConfig;->calcSearchBarMarginBottom(Landroid/content/Context;Z)I

    move-result p0

    add-int/2addr p1, p0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static calcHotSeatsMarginTop(Landroid/content/Context;Z)I
    .locals 0

    .line 711
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p1, :cond_0

    const p1, 0x7f0700f7

    .line 714
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const p1, 0x7f0700f6

    .line 716
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    :goto_0
    int-to-float p0, p0

    .line 718
    invoke-static {}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->getInstance()Lcom/miui/home/launcher/common/LauncherIconSizeProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->getHotSeatMarginScale()F

    move-result p1

    mul-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method private static final calcLauncherHeightWhenMultiWindow(Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 2

    .line 433
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    const v1, 0x7f070216

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    add-int/2addr v0, p1

    const-string p1, "window"

    .line 434
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 435
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 436
    invoke-virtual {p0, p1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 437
    iget p0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    sub-int/2addr p0, v0

    sput p0, Lcom/miui/home/launcher/DeviceConfig;->sMultiWindowModeLauncherHeight:I

    return-void
.end method

.method private static calcSearchBarMarginBottom(Landroid/content/Context;Z)I
    .locals 3

    .line 674
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701da

    const v2, 0x7f0701db

    if-eqz p1, :cond_0

    .line 677
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result p0

    .line 678
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    .line 679
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    sub-int v1, v0, p0

    .line 680
    invoke-static {v1, p1, v0}, Lcom/miui/home/launcher/common/Utilities;->boundToRange(III)I

    move-result v0

    if-ge v1, p1, :cond_2

    const-string p1, "Launcher.DeviceConfig"

    .line 683
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "please check navigationBar height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/miui/home/launcher/DeviceConfig$_lancet;->com_miui_home_launcher_aop_LogHooker_ae(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 686
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isShowNavigationBar()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 687
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    move v0, p0

    goto :goto_0

    .line 688
    :cond_1
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    move v0, p0

    :cond_2
    :goto_0
    int-to-float p0, v0

    .line 690
    invoke-static {}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->getInstance()Lcom/miui/home/launcher/common/LauncherIconSizeProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->getSearchBarMarginScale()F

    move-result p1

    mul-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method private static calcSearchBarMarginTop(Landroid/content/Context;)I
    .locals 1

    .line 694
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0701dc

    .line 695
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    .line 696
    invoke-static {}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->getInstance()Lcom/miui/home/launcher/common/LauncherIconSizeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->getSearchBarMarginScale()F

    move-result v0

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method private static calcSearchBarWidth(Landroid/content/Context;)I
    .locals 3

    .line 903
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 904
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sCellWorkingWidth:I

    sget v1, Lcom/miui/home/launcher/DeviceConfig;->sCellWidth:I

    const v2, 0x7f070081

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    const v1, 0x7f0700f9

    .line 905
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    sub-int/2addr v0, p0

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->getDipPixelSize(F)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static final calcWidgetSpans(Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;)V
    .locals 1

    .line 1448
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->getWidgetSpanX(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->spanX:I

    .line 1449
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->getWidgetSpanY(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->spanY:I

    return-void
.end method

.method private static calcWorkspaceIndicatorMarginBottomInEditMode(Landroid/content/Context;)I
    .locals 4

    .line 909
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    .line 911
    sget-object p0, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceCellPaddingBottom:Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-virtual {p0}, Lcom/miui/home/launcher/common/ChangeableValue;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sScreenHeight:I

    int-to-float v0, v0

    sget v2, Lcom/miui/home/launcher/DeviceConfig;->sScreenScaleRatio:F

    sub-float v2, v1, v2

    mul-float/2addr v0, v2

    sget v2, Lcom/miui/home/launcher/CellScreen;->EDITIMG_ANIM_PIVOTY_RATIO:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    .line 914
    :cond_0
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceIndicatorMarginBottom:I

    sget v2, Lcom/miui/home/launcher/DeviceConfig;->sCellWorkingHeight:I

    int-to-float v2, v2

    sget v3, Lcom/miui/home/launcher/DeviceConfig;->sScreenScaleRatio:F

    sub-float v3, v1, v3

    mul-float/2addr v2, v3

    sget v3, Lcom/miui/home/launcher/CellScreen;->EDITIMG_ANIM_PIVOTY_RATIO:F

    sub-float/2addr v1, v3

    mul-float/2addr v2, v1

    float-to-int v1, v2

    add-int/2addr v0, v1

    .line 916
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0700aa

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->getDipPixelSize(F)I

    move-result v1

    add-int/2addr p0, v1

    .line 918
    sget v1, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceIndicatorMarginBottom:I

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static final calculateDatabaseName(Landroid/content/Context;)V
    .locals 1

    .line 1041
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/miui/home/launcher/DeviceConfig;->calcGridSize(Landroid/content/Context;Landroid/content/res/Resources;)V

    return-void
.end method

.method private static calculateHotseatMaxCount()I
    .locals 3

    .line 1094
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sScreenHeight:I

    sget v1, Lcom/miui/home/launcher/DeviceConfig;->sScreenWidth:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1096
    sget v1, Lcom/miui/home/launcher/DeviceConfig;->sApplicationIconContainerWidth:I

    div-int/2addr v0, v1

    .line 1098
    sget v1, Lcom/miui/home/launcher/DeviceConfig;->sCellCountX:I

    div-int v2, v0, v1

    add-int/2addr v1, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public static checkDarkenWallpaperSupport(Landroid/content/Context;)Z
    .locals 7

    .line 2195
    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_MIUI_12:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2197
    :cond_0
    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_P:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 2199
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.android.systemui"

    .line 2200
    invoke-virtual {p0, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 2201
    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/32 v5, 0xc08ef42

    cmp-long p0, v3, v5

    if-ltz p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1

    :catch_0
    move-exception p0

    .line 2203
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_2
    return v2
.end method

.method public static checkIfIsOrientationChanged(Landroid/content/Context;)Z
    .locals 4

    .line 783
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sScreenWidth:I

    .line 784
    sget v1, Lcom/miui/home/launcher/DeviceConfig;->sScreenHeight:I

    const-string v2, "window"

    .line 785
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 786
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 787
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 788
    invoke-virtual {p0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 789
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isRotatable()Z

    move-result p0

    if-nez p0, :cond_0

    iget p0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p0, v3}, Ljava/lang/Math;->min(II)I

    move-result p0

    goto :goto_0

    :cond_0
    iget p0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 790
    :goto_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isRotatable()Z

    move-result v3

    if-nez v3, :cond_1

    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_1

    :cond_1
    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    :goto_1
    if-le v0, v1, :cond_2

    if-lt p0, v2, :cond_3

    :cond_2
    if-ge v0, v1, :cond_4

    if-le p0, v2, :cond_4

    :cond_3
    const/4 p0, 0x1

    goto :goto_2

    :cond_4
    const/4 p0, 0x0

    :goto_2
    return p0
.end method

.method public static checkIsAccessibilityEnabledAsync()V
    .locals 1

    .line 1862
    sget-object v0, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$mTAX8cV9FrYm0VynwamfDIxfLR0;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$mTAX8cV9FrYm0VynwamfDIxfLR0;

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static checkIsInSnapShotMode()V
    .locals 2

    .line 1814
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/themeScreenshotMode"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsInSnapShotMode:Z

    return-void
.end method

.method static checkIsNetworkConnectedAsync()V
    .locals 1

    .line 1903
    sget-object v0, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$DHqMe75cxvhbacFAniBmNJWc6ss;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$DHqMe75cxvhbacFAniBmNJWc6ss;

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static checkIsSupportMultiWindowMode(Landroid/content/Context;)V
    .locals 1

    .line 810
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$zC9QiSIqf566uIVT4yeJlbBbgTI;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$zC9QiSIqf566uIVT4yeJlbBbgTI;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static checkIsSupportSmallWindow()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.view.Display"

    .line 2233
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "hasSmallFreeformFeature"

    .line 2234
    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 2235
    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Launcher.DeviceConfig"

    const-string v3, "isSupportSmallWindow: reflect error"

    .line 2237
    invoke-static {v2, v3, v1}, Lcom/miui/home/launcher/DeviceConfig$_lancet;->com_miui_home_launcher_aop_LogHooker_aet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public static checkIsTetheringSupported()V
    .locals 1

    .line 1928
    sget-object v0, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$aTav4r1teYU_X1fuIVcQCVpowSY;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$aTav4r1teYU_X1fuIVcQCVpowSY;

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static checkSearchBarSupport(Landroid/content/Context;)V
    .locals 1

    .line 891
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->isHomeSupportSearchBar(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 892
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->isGlobalSearchSupportSearchBar(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 893
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->isCurrentThemeSupportSearchBar(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    sput-boolean p0, Lcom/miui/home/launcher/DeviceConfig;->sIsSupportSearchBar:Z

    return-void
.end method

.method public static checkSettingTitle()V
    .locals 2

    .line 495
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->sSettingTitle:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 496
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->sCheckTitleRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 497
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->sCheckTitleRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static checkSystemUIFsgVersion()V
    .locals 1

    .line 1938
    sget-object v0, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$CyJ8lZqH5EcVTPcGtcE1FJrHcgM;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$CyJ8lZqH5EcVTPcGtcE1FJrHcgM;

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static clearBackupDB(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 1556
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/miui/home/launcher/DeviceConfig;->sLauncherDatabaseName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/miui/home/launcher/allapps/LauncherMode;->getLauncherDatabasePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 1557
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 1560
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public static confirmCellsCount(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x1

    .line 1287
    invoke-static {p0, v0}, Lcom/miui/home/launcher/DeviceConfig;->removeInvalidateDatabase(Landroid/content/Context;Z)V

    .line 1288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1289
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "miui_home_screen_cells_size"

    invoke-static {p0, v1, v0}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->putStringToSystem(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static final correntCellPositionRuntime(Lcom/miui/home/launcher/ItemInfo;)V
    .locals 5

    .line 1267
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isScreenOrientationLandscape()Z

    move-result v0

    .line 1268
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isRotatable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/miui/home/launcher/ItemInfo;->isLandscapePos:Z

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    if-ne v1, v2, :cond_0

    .line 1269
    iget-wide v1, p0, Lcom/miui/home/launcher/ItemInfo;->container:J

    const-wide/16 v3, -0x64

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 1270
    iget v1, p0, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    sget v2, Lcom/miui/home/launcher/DeviceConfig;->sCellCountXR:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    add-int/2addr v1, v2

    .line 1271
    sget v2, Lcom/miui/home/launcher/DeviceConfig;->sCellCountX:I

    rem-int v3, v1, v2

    iput v3, p0, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 1272
    div-int/2addr v1, v2

    iput v1, p0, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    .line 1273
    iput-boolean v0, p0, Lcom/miui/home/launcher/ItemInfo;->isLandscapePos:Z

    :cond_0
    return-void
.end method

.method public static final finishMigratingDB()V
    .locals 1

    const/4 v0, -0x1

    .line 1298
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sCellXMigratedFrom:I

    .line 1299
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sCellYMigratedFrom:I

    return-void
.end method

.method public static getAllAppRecommendDividerPaddingBottom()I
    .locals 1

    .line 2115
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sAllAppsDividerBottom:I

    return v0
.end method

.method public static getAllAppRecommendDividerPaddingTop()I
    .locals 1

    .line 2111
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sAllAppsDividerTop:I

    return v0
.end method

.method public static getAllAppsBackgroundAlpha()I
    .locals 1

    .line 2099
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sAllAppsBackgroundAlpha:I

    return v0
.end method

.method public static getAllAppsCellHeight()I
    .locals 1

    .line 2066
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sAllAppsCellHeight:I

    return v0
.end method

.method public static getAllAppsColorMode()Lcom/miui/home/launcher/allapps/AllAppsColorMode;
    .locals 1

    .line 2095
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->sAllAppsColorMode:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    return-object v0
.end method

.method public static getAllAppsRecommendCount()I
    .locals 1

    .line 1315
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public static getApplicationIconContainerHeight()I
    .locals 1

    .line 1003
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sApplicationIconContainerHeight:I

    return v0
.end method

.method public static getApplicationIconContainerWidth()I
    .locals 1

    .line 1007
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sApplicationIconContainerWidth:I

    return v0
.end method

.method private static final getBetterDBForMigrate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1665
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1666
    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    .line 1667
    new-array v3, v2, [I

    .line 1668
    new-array v2, v2, [I

    .line 1669
    invoke-static {v0, v3}, Lcom/miui/home/launcher/ScreenUtils;->parseCellsSize(Ljava/lang/String;[I)Z

    move-result v0

    .line 1670
    invoke-static {v1, v2}, Lcom/miui/home/launcher/ScreenUtils;->parseCellsSize(Ljava/lang/String;[I)Z

    move-result v1

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    return-object p1

    :cond_1
    if-eqz v0, :cond_2

    if-nez v1, :cond_2

    return-object p0

    :cond_2
    const/4 v0, 0x0

    .line 1678
    aget v1, v3, v0

    aget v4, v2, v0

    if-ne v1, v4, :cond_6

    const/4 v0, 0x1

    .line 1681
    aget v1, v3, v0

    sget v4, Lcom/miui/home/launcher/DeviceConfig;->sCellCountY:I

    sub-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    aget v4, v2, v0

    sget v5, Lcom/miui/home/launcher/DeviceConfig;->sCellCountY:I

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v1, v4, :cond_3

    return-object p0

    .line 1683
    :cond_3
    aget v1, v3, v0

    sget v4, Lcom/miui/home/launcher/DeviceConfig;->sCellCountY:I

    sub-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    aget v2, v2, v0

    sget v4, Lcom/miui/home/launcher/DeviceConfig;->sCellCountY:I

    sub-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v1, v2, :cond_4

    return-object p1

    .line 1686
    :cond_4
    aget v0, v3, v0

    sget v1, Lcom/miui/home/launcher/DeviceConfig;->sCellCountY:I

    if-ge v0, v1, :cond_5

    goto :goto_0

    :cond_5
    move-object p0, p1

    :goto_0
    return-object p0

    .line 1691
    :cond_6
    aget v1, v3, v0

    sget v4, Lcom/miui/home/launcher/DeviceConfig;->sCellCountX:I

    sub-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    aget v4, v2, v0

    sget v5, Lcom/miui/home/launcher/DeviceConfig;->sCellCountX:I

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v1, v4, :cond_7

    return-object p0

    .line 1693
    :cond_7
    aget v1, v3, v0

    sget v4, Lcom/miui/home/launcher/DeviceConfig;->sCellCountX:I

    sub-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    aget v2, v2, v0

    sget v4, Lcom/miui/home/launcher/DeviceConfig;->sCellCountX:I

    sub-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v1, v2, :cond_8

    return-object p1

    .line 1696
    :cond_8
    aget v0, v3, v0

    sget v1, Lcom/miui/home/launcher/DeviceConfig;->sCellCountX:I

    if-ge v0, v1, :cond_9

    goto :goto_1

    :cond_9
    move-object p0, p1

    :goto_1
    return-object p0
.end method

.method private static getBitmapTransparentEdge(Landroid/graphics/Bitmap;)I
    .locals 9

    .line 474
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/lit8 v6, v0, 0x2

    .line 475
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    new-array v0, v0, [I

    .line 476
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x1

    move-object v1, p0

    move-object v2, v0

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 p0, 0x0

    move v1, p0

    .line 478
    :goto_0
    array-length v2, v0

    if-ge p0, v2, :cond_0

    .line 479
    aget v2, v0, p0

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method private static final getCellCountSuffix(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1703
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 1706
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDatabaseNamePrefix()Ljava/lang/String;

    move-result-object v0

    .line 1707
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1708
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_1
    return-object v1
.end method

.method public static final getCellCountX()I
    .locals 1

    .line 1311
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountX:I

    return v0
.end method

.method public static final getCellCountXDef(Landroid/content/Context;)I
    .locals 1

    .line 1339
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentLauncherCellCountInstance()Lcom/miui/home/launcher/compat/LauncherCellCount;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/compat/LauncherCellCount;->getCellCountXDef(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static final getCellCountXMax(Landroid/content/Context;)I
    .locals 1

    .line 1331
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentLauncherCellCountInstance()Lcom/miui/home/launcher/compat/LauncherCellCount;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/compat/LauncherCellCount;->getCellCountXMax(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static final getCellCountXMin(Landroid/content/Context;)I
    .locals 1

    .line 1323
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentLauncherCellCountInstance()Lcom/miui/home/launcher/compat/LauncherCellCount;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/compat/LauncherCellCount;->getCellCountXMin(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static final getCellCountY()I
    .locals 1

    .line 1319
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountY:I

    return v0
.end method

.method public static final getCellCountYDef(Landroid/content/Context;)I
    .locals 1

    .line 1350
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentLauncherCellCountInstance()Lcom/miui/home/launcher/compat/LauncherCellCount;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/compat/LauncherCellCount;->getCellCountYDef(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static final getCellCountYMax(Landroid/content/Context;)I
    .locals 1

    .line 1335
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentLauncherCellCountInstance()Lcom/miui/home/launcher/compat/LauncherCellCount;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/compat/LauncherCellCount;->getCellCountYMax(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static final getCellCountYMin(Landroid/content/Context;)I
    .locals 1

    .line 1327
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentLauncherCellCountInstance()Lcom/miui/home/launcher/compat/LauncherCellCount;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/compat/LauncherCellCount;->getCellCountYMin(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static final getCellHeight()I
    .locals 1

    .line 1362
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sCellHeight:I

    return v0
.end method

.method public static getCellHorizontalSpacing()I
    .locals 1

    .line 1992
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sCellHorizontalSpacing:I

    return v0
.end method

.method public static final getCellSizeVal(II)Ljava/lang/String;
    .locals 1

    .line 1373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "x"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCellVerticalSpacing()I
    .locals 1

    .line 1996
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sCellVerticalSpacing:I

    return v0
.end method

.method public static final getCellWidth()I
    .locals 1

    .line 1358
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sCellWidth:I

    return v0
.end method

.method public static final getCellXMigratedFrom()I
    .locals 1

    .line 1303
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sCellXMigratedFrom:I

    return v0
.end method

.method public static final getCellYMigratedFrom()I
    .locals 1

    .line 1307
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sCellYMigratedFrom:I

    return v0
.end method

.method public static getCurrentDefaultScreenId()J
    .locals 2

    .line 1971
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/LauncherMode;->getCurrentDefaultScreenId()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getCurrentDefaultScreenIdFromPreference()J
    .locals 4

    .line 1975
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const-string v1, "pref_default_screen"

    sget-wide v2, Lcom/miui/home/launcher/DeviceConfig;->INVALIDATE_DEFAULT_SCREEN_ID:J

    invoke-static {v0, v1, v2, v3}, Lcom/miui/home/launcher/common/PreferenceUtils;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getCurrentScreenCells()Ljava/lang/String;
    .locals 1

    .line 1354
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->sCurrentScreenCells:Ljava/lang/String;

    return-object v0
.end method

.method public static final getDatabaseName()Ljava/lang/String;
    .locals 1

    .line 1397
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->sLauncherDatabaseName:Ljava/lang/String;

    return-object v0
.end method

.method public static final getDatabaseNameBySuffix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDatabaseNamePrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".db"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getDatabaseNamePrefix()Ljava/lang/String;
    .locals 3

    const-string v0, ""

    .line 1382
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isRotatable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "_rotatable"

    .line 1385
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launcher"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getDefaultWorkspaceXmlId(Landroid/content/Context;Lcom/miui/home/launcher/allapps/LauncherMode;)I
    .locals 3

    .line 1401
    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->calcDefaultWorkspaceName(Lcom/miui/home/launcher/allapps/LauncherMode;)Ljava/lang/String;

    move-result-object v0

    .line 1402
    invoke-static {p0, v0}, Lcom/miui/home/launcher/DeviceConfig;->getXmlId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_8

    .line 1404
    invoke-static {p1}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isElderlyManMode(Lcom/miui/home/launcher/allapps/LauncherMode;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1405
    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p1, :cond_0

    const p1, 0x7f13000f

    goto :goto_0

    :cond_0
    const p1, 0x7f13001e

    :goto_0
    move v0, p1

    goto :goto_2

    .line 1408
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result p1

    const/4 v1, 0x4

    if-lt p1, v1, :cond_7

    .line 1409
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result p1

    const/4 v1, 0x6

    if-lt p1, v1, :cond_4

    .line 1410
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isRotatable()Z

    move-result p1

    if-eqz p1, :cond_2

    const p1, 0x7f13000d

    move v0, p1

    goto :goto_1

    .line 1412
    :cond_2
    sget-boolean p1, Lcom/miui/home/launcher/DeviceConfig;->IS_MEITU:Z

    if-eqz p1, :cond_3

    const p1, 0x7f13001b

    move v0, p1

    goto :goto_1

    :cond_3
    const p1, 0x7f130009

    move v0, p1

    goto :goto_1

    .line 1417
    :cond_4
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result p1

    const/4 v1, 0x5

    if-lt p1, v1, :cond_7

    .line 1418
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isRotatable()Z

    move-result p1

    if-eqz p1, :cond_5

    const p1, 0x7f13000c

    move v0, p1

    goto :goto_1

    .line 1420
    :cond_5
    sget-boolean p1, Lcom/miui/home/launcher/DeviceConfig;->IS_MEITU:Z

    if-eqz p1, :cond_6

    const p1, 0x7f13001a

    move v0, p1

    goto :goto_1

    :cond_6
    const p1, 0x7f130007

    move v0, p1

    :cond_7
    :goto_1
    if-nez v0, :cond_8

    const v0, 0x7f13000b

    :cond_8
    :goto_2
    const-string p1, "Launcher.DeviceConfig"

    .line 1432
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get default workspace name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/miui/home/launcher/DeviceConfig$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static declared-synchronized getDesignedDefaultScreenId(Landroid/content/Context;)J
    .locals 7

    const-class v0, Lcom/miui/home/launcher/DeviceConfig;

    monitor-enter v0

    .line 1730
    :try_start_0
    sget-wide v1, Lcom/miui/home/launcher/DeviceConfig;->sDesignedDefaultScreenId:J

    sget-wide v3, Lcom/miui/home/launcher/DeviceConfig;->INVALIDATE_DEFAULT_SCREEN_ID:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 1731
    sget-wide v1, Lcom/miui/home/launcher/DeviceConfig;->sDesignedDefaultScreenId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-wide v1

    .line 1734
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/miui/home/launcher/DeviceConfig;->getDefaultWorkspaceXmlId(Landroid/content/Context;Lcom/miui/home/launcher/allapps/LauncherMode;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 1735
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 1736
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 1738
    :cond_1
    :goto_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    .line 1739
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v3, :cond_4

    :cond_2
    const/4 v5, 0x1

    if-eq v4, v5, :cond_4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    goto :goto_0

    .line 1743
    :cond_3
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "default"

    .line 1744
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1745
    sget-object v4, Lcom/miui/home/R$styleable;->Favorite:[I

    invoke-virtual {p0, v2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    const/16 v5, 0xc

    .line 1746
    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sput-wide v5, Lcom/miui/home/launcher/DeviceConfig;->sDesignedDefaultScreenId:J

    .line 1747
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .line 1750
    :cond_4
    sget-wide v1, Lcom/miui/home/launcher/DeviceConfig;->sDesignedDefaultScreenId:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-wide v1

    .line 1754
    :catch_0
    :try_start_2
    sget-wide v1, Lcom/miui/home/launcher/DeviceConfig;->INVALIDATE_DEFAULT_SCREEN_ID:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static final getDeviceHeight()I
    .locals 2

    .line 931
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sScreenWidth:I

    sget v1, Lcom/miui/home/launcher/DeviceConfig;->sScreenHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public static final getDeviceWidth()I
    .locals 2

    .line 927
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sScreenWidth:I

    sget v1, Lcom/miui/home/launcher/DeviceConfig;->sScreenHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public static getDragIconScaleRatio()F
    .locals 1

    .line 877
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sDragIconScaleRatio:F

    return v0
.end method

.method public static final getEditModeTopMenuMarginTop()I
    .locals 2

    .line 1026
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsInMultiWindowMode:Z

    if-eqz v0, :cond_0

    const v0, 0x7f07009e

    goto :goto_0

    .line 1029
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isShowNotch()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f07009f

    goto :goto_0

    :cond_1
    const v0, 0x7f07009d

    .line 1033
    :goto_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public static getFolderCellHeight()I
    .locals 1

    .line 2070
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sFolderCellHeight:I

    return v0
.end method

.method public static getFolderCellMaxWidth()I
    .locals 1

    .line 2074
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sFolderCellMaxWidth:I

    return v0
.end method

.method public static getGlobalSwipeUpPackage(Landroid/content/Context;)I
    .locals 2

    .line 1810
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "launchMiBrowserWhileSwipe"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getHotSeatsHeight()I
    .locals 1

    .line 662
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->sHotSeatsHeight:Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/ChangeableValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getHotSeatsMarginBottom()I
    .locals 1

    .line 658
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->sHotSeatsMarginBottom:Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/ChangeableValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static final getHotseatMaxCount()I
    .locals 1

    .line 1389
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sHotseatMaxCount:I

    return v0
.end method

.method public static final getIconHeight()I
    .locals 1

    .line 999
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sIconHeight:I

    return v0
.end method

.method public static final getIconWidth()I
    .locals 1

    .line 995
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sIconWidth:I

    return v0
.end method

.method public static getIterateDirection(Z)I
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    .line 776
    sget-boolean p0, Lcom/miui/home/launcher/DeviceConfig;->sIsLayoutRtl:Z

    if-eqz p0, :cond_0

    move v0, v1

    :cond_0
    return v0

    .line 778
    :cond_1
    sget-boolean p0, Lcom/miui/home/launcher/DeviceConfig;->sIsLayoutRtl:Z

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0
.end method

.method public static getLastRotation()I
    .locals 1

    .line 286
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sLastRotation:I

    return v0
.end method

.method public static getNetWorkConnectedString()Ljava/lang/String;
    .locals 1

    .line 1924
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isNetWorkConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "connected"

    goto :goto_0

    :cond_0
    const-string v0, "no_connected"

    :goto_0
    return-object v0
.end method

.method public static getNotchEditModePaddingTopDelta()I
    .locals 1

    .line 1967
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isShowNotch()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sNotchEditModePaddingTopDelta:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getNotchHeight(Landroid/content/Context;)I
    .locals 5

    .line 2152
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isNotch()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2155
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v2, "notch_height"

    const-string v3, "dimen"

    const-string v4, "android"

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    .line 2158
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :cond_1
    return v1
.end method

.method public static getNotchWidth(Landroid/content/Context;)I
    .locals 5

    .line 2164
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isNotch()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2167
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v2, "notch_width"

    const-string v3, "dimen"

    const-string v4, "android"

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    .line 2170
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :cond_1
    return v1
.end method

.method private static final getOptimalDB(Landroid/content/Context;Lcom/miui/home/launcher/allapps/LauncherMode;)Ljava/io/File;
    .locals 5

    const/4 v0, 0x0

    .line 1637
    :try_start_0
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/allapps/LauncherMode;->getLauncherDatabaseDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 1638
    new-instance v2, Lcom/miui/home/launcher/DeviceConfig$4;

    invoke-direct {v2}, Lcom/miui/home/launcher/DeviceConfig$4;-><init>()V

    invoke-virtual {v1, v2}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1645
    array-length v2, v1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    move-object v3, v0

    .line 1648
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_1

    .line 1649
    aget-object v4, v1, v2

    invoke-static {v3, v4}, Lcom/miui/home/launcher/DeviceConfig;->getBetterDBForMigrate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "Launcher.DeviceConfig"

    .line 1651
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "find optimal db "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/home/launcher/DeviceConfig$_lancet;->com_miui_home_launcher_aop_LogHooker_ai(Ljava/lang/String;Ljava/lang/String;)I

    .line 1652
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    .line 1655
    :cond_2
    invoke-virtual {p1, p0, v3}, Lcom/miui/home/launcher/allapps/LauncherMode;->getLauncherDatabasePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_3
    :goto_1
    return-object v0

    :catch_0
    move-exception p0

    const-string p1, "Launcher.DeviceConfig"

    const-string v1, "find db fail"

    .line 1657
    invoke-static {p1, v1, p0}, Lcom/miui/home/launcher/DeviceConfig$_lancet;->com_miui_home_launcher_aop_LogHooker_adt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public static final getPortraitCellCountX()I
    .locals 2

    .line 1279
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sRotatable:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountX:I

    sget v1, Lcom/miui/home/launcher/DeviceConfig;->sCellCountXR:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :cond_0
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountX:I

    :goto_0
    return v0
.end method

.method public static final getPortraitCellCountY()I
    .locals 2

    .line 1283
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sRotatable:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountY:I

    sget v1, Lcom/miui/home/launcher/DeviceConfig;->sCellCountYR:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_0
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountY:I

    :goto_0
    return v0
.end method

.method public static getQuickCallCellVerticalSpacing()I
    .locals 1

    .line 2000
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sQuickCallCellVerticalSpacing:I

    return v0
.end method

.method public static getQuickEditScreenRatio()F
    .locals 1

    .line 881
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sQuickEditScreenRatio:F

    return v0
.end method

.method public static getRealScreenHight()I
    .locals 1

    .line 943
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sRealScreenHight:I

    return v0
.end method

.method public static final getRecommendGridPaddingBottom()I
    .locals 1

    .line 1037
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isScreenOrientationLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sFolderRecommendGridPaddingBottom:I

    :goto_0
    return v0
.end method

.method public static getRotation()I
    .locals 1

    .line 290
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sRotation:I

    return v0
.end method

.method public static getRotationBerforStart()I
    .locals 1

    .line 298
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sRotationBeforeStart:I

    return v0
.end method

.method public static final getScreenDensity()F
    .locals 1

    .line 947
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sScreenDensity:F

    return v0
.end method

.method public static getScreenDensityDpi()I
    .locals 1

    .line 951
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sScreenDensityDpi:I

    return v0
.end method

.method public static final getScreenHeight()I
    .locals 1

    .line 939
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sScreenHeight:I

    return v0
.end method

.method public static final getScreenWidth()I
    .locals 1

    .line 935
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sScreenWidth:I

    return v0
.end method

.method public static getSearchBarExpGroupInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 646
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "key_home_screen_search_bar_exp_group_info"

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSearchBarHolderVerticalPadding(Landroid/content/Context;)I
    .locals 1

    .line 2082
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isShowNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2083
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070059

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    .line 2084
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070058

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static getSearchBarIconUri(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 634
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "key_home_screen_search_bar_icon_uri"

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSearchBarLightThreshold()F
    .locals 1

    .line 2078
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sSearchBarLightThreshold:F

    return v0
.end method

.method public static getSearchBarMarginBottom()I
    .locals 1

    .line 654
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->sSearchBarMarginBottom:Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/ChangeableValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getSearchBarSource(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 606
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "key_home_screen_search_bar_source"

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSearchBarStyle(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 638
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "key_home_screen_search_bar_style"

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSearchBarUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 630
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "key_home_screen_search_bar_url"

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSearchBarWidth()I
    .locals 1

    .line 666
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sSearchBarWidth:I

    return v0
.end method

.method public static getSearchBarWidthDelta()I
    .locals 1

    .line 670
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sSearchBarWidthDelta:I

    return v0
.end method

.method public static getSettingTitle()Ljava/lang/String;
    .locals 2

    .line 491
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->sSettingTitle:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private static getSettingTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 510
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.android.settings"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "home_title"

    const-string v1, "string"

    const-string v2, "com.android.settings"

    .line 511
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 513
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "Launcher.DeviceConfig"

    const-string v1, "getSettingTitle failed"

    .line 516
    invoke-static {v0, v1, p0}, Lcom/miui/home/launcher/DeviceConfig$_lancet;->com_miui_home_launcher_aop_LogHooker_aet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getShortcutMenuDisappearThreshold()I
    .locals 1

    .line 1021
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sShortcutMenuDisappearThreshold:I

    return v0
.end method

.method public static final getStatusBarHeight()I
    .locals 1

    .line 1015
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sStatusBarHeight:I

    return v0
.end method

.method public static getSystemUIFsgVersion()I
    .locals 1

    .line 1945
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->sSystemuiFsgVersion:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public static getThemeValues()Lmiui/content/res/ThemeValues;
    .locals 1

    .line 755
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->sThemeValues:Lmiui/content/res/ThemeValues;

    return-object v0
.end method

.method public static final getWidgetCellCountX()I
    .locals 1

    .line 1461
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellCountX:I

    return v0
.end method

.method public static final getWidgetCellCountY()I
    .locals 1

    .line 1465
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellCountY:I

    return v0
.end method

.method public static getWidgetCellDefaultHeight()I
    .locals 1

    .line 1988
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellDefaultHeight:I

    return v0
.end method

.method public static getWidgetCellDefaultWidth()I
    .locals 1

    .line 1984
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellDefaultWidth:I

    return v0
.end method

.method public static final getWidgetCellHeight()I
    .locals 1

    .line 1457
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellHeight:I

    return v0
.end method

.method public static final getWidgetCellPaddingBottom()I
    .locals 1

    .line 991
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellPaddingBottom:I

    return v0
.end method

.method public static final getWidgetCellPaddingTop()I
    .locals 1

    .line 987
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellPaddingTop:I

    return v0
.end method

.method public static final getWidgetCellWidth()I
    .locals 1

    .line 1453
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellWidth:I

    return v0
.end method

.method public static final getWidgetSpanX(I)I
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1439
    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->getDipPixelSize(F)I

    move-result v0

    add-int/2addr p0, v0

    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellMeasureWidth:I

    div-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x1

    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellCountX:I

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static final getWidgetSpanY(I)I
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1444
    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->getDipPixelSize(F)I

    move-result v0

    add-int/2addr p0, v0

    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellMeasureHeight:I

    div-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x1

    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellCountY:I

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static final getWidgetWorkingHeight()I
    .locals 1

    .line 1473
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sWidgetWorkingHeight:I

    return v0
.end method

.method public static final getWidgetWorkingWidth()I
    .locals 1

    .line 1469
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sWidgetWorkingWidth:I

    return v0
.end method

.method public static final getWorkspaceCellPaddingBottom()I
    .locals 1

    .line 983
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceCellPaddingBottom:Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/ChangeableValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static final getWorkspaceCellPaddingSide()I
    .locals 1

    .line 971
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceCellPaddingSide:I

    return v0
.end method

.method public static final getWorkspaceCellPaddingTop()I
    .locals 1

    .line 975
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsInMultiWindowMode:Z

    if-eqz v0, :cond_0

    .line 976
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceCellPaddingTopMultiWindow:I

    return v0

    .line 978
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isShowNotch()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceCellPaddingTopNotch:I

    goto :goto_0

    :cond_1
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceCellPaddingTop:I

    :goto_0
    return v0
.end method

.method public static getWorkspaceIndicatorMarginBottom()I
    .locals 1

    .line 1716
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceIndicatorMarginBottom:I

    return v0
.end method

.method public static getWorkspaceIndicatorMarginBottomInEditMode()I
    .locals 1

    .line 1720
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceIndicatorMarginBottomInEditMode:I

    return v0
.end method

.method public static final getWorkspaceInvalidateEdgeWidth()I
    .locals 1

    .line 1011
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceInvalidateEdgeWidth:I

    return v0
.end method

.method public static getWorkspacePaddingTop(Landroid/content/Context;)F
    .locals 1

    .line 1724
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsInMultiWindowMode:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f07020f

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    :goto_0
    return p0
.end method

.method private static getXmlId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    .line 1246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":xml/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1247
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static hasNavigationBar()Z
    .locals 8

    .line 522
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x1c

    if-le v0, v3, :cond_0

    :try_start_0
    const-string v0, "android.view.WindowManagerGlobal"

    .line 524
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v3, "getWindowManagerService"

    .line 525
    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 526
    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 527
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "hasNavigationBar"

    const/4 v4, 0x1

    .line 528
    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v2

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 529
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v3

    .line 530
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "getDisplayId"

    .line 531
    new-array v7, v2, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 532
    new-array v4, v4, [Ljava/lang/Object;

    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {v5, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-virtual {v1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "Launcher.DeviceConfig"

    const-string v3, "hasNavigationBar Q"

    .line 534
    invoke-static {v1, v3, v0}, Lcom/miui/home/launcher/DeviceConfig$_lancet;->com_miui_home_launcher_aop_LogHooker_adt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    :try_start_1
    const-string v0, "android.view.WindowManagerGlobal"

    .line 538
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v3, "getWindowManagerService"

    .line 539
    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 540
    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 541
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "hasNavigationBar"

    .line 542
    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 543
    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return v0

    :catch_1
    move-exception v0

    const-string v1, "Launcher.DeviceConfig"

    const-string v3, "hasNavigationBar"

    .line 545
    invoke-static {v1, v3, v0}, Lcom/miui/home/launcher/DeviceConfig$_lancet;->com_miui_home_launcher_aop_LogHooker_adt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v2
.end method

.method public static is720Mode()Z
    .locals 1

    .line 1963
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIs720Mode:Z

    return v0
.end method

.method public static declared-synchronized isAccessibilityEnabled()Z
    .locals 2

    const-class v0, Lcom/miui/home/launcher/DeviceConfig;

    monitor-enter v0

    .line 1854
    :try_start_0
    sget-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sIsAccessibilityEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static isAppStoreEnabled()Z
    .locals 1

    .line 1826
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsAppStoreEnabled:Z

    return v0
.end method

.method public static isCurrentThemeSupportSearchBar(Landroid/content/Context;)Z
    .locals 2

    .line 598
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "key_home_screen_search_bar"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0
.end method

.method public static isDarkMode()Z
    .locals 1

    .line 2004
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsDarkMode:Z

    return v0
.end method

.method public static isDarkModeChanged()Z
    .locals 4

    .line 2008
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    .line 2009
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2010
    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    .line 2011
    :goto_0
    sget-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sIsDarkMode:Z

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    .line 2012
    :goto_1
    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsDarkMode:Z

    return v2
.end method

.method public static isDarkenWholeWallpaper(Landroid/content/Context;)Z
    .locals 2

    .line 2215
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sSupportDarkenWallpaper:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2218
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "darken_wallpaper_under_dark_mode"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isDefaultIcon()Z
    .locals 1

    .line 2119
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsDefaultIcon:Z

    return v0
.end method

.method public static isDeleteSoundEffectEnable(Landroid/content/Context;)Z
    .locals 2

    .line 1805
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "delete_sound_effect"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getBooleanFromSystem(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isDisableOldQuickSwitch()Z
    .locals 1

    .line 2148
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportRecentsAndFsGesture()Z

    move-result v0

    return v0
.end method

.method public static isFirstBoot()Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.app.ActivityThread"

    .line 2054
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getPackageManager"

    .line 2055
    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    .line 2056
    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2057
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "isFirstBoot"

    new-array v4, v0, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 2058
    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    const-string v2, "Launcher.DeviceConfig"

    const-string v3, "isFirstBoot"

    .line 2060
    invoke-static {v2, v3, v1}, Lcom/miui/home/launcher/DeviceConfig$_lancet;->com_miui_home_launcher_aop_LogHooker_adt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public static isGlobalSearchBottomEffectEnable(Landroid/content/Context;)Z
    .locals 2

    .line 1795
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "QSB_SCROLL_OPTION_STATUS"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getBooleanFromSystem(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isGlobalSearchBrowserEnable(Landroid/content/Context;)Z
    .locals 2

    .line 1800
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "launchMiBrowserWhileSwipe"

    invoke-static {p0, v0, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getBooleanFromSystem(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isGlobalSearchEnable(Landroid/content/Context;)Z
    .locals 2

    .line 1785
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "QSB_SCROLL_ENTRANCE_STATUS"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getBooleanFromSystem(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isGlobalSearchSupportSearchBar(Landroid/content/Context;)Z
    .locals 3

    .line 563
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.android.quicksearchbox"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "support_home_screen_search_bar"

    const-string v1, "bool"

    const-string v2, "com.android.quicksearchbox"

    .line 564
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 566
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 569
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isGlobalSearchSupportSearchBarIcon(Landroid/content/Context;)Z
    .locals 3

    .line 576
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.android.quicksearchbox"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "support_search_bar_baidu_icon"

    const-string v1, "bool"

    const-string v2, "com.android.quicksearchbox"

    .line 577
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 579
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 582
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isHasNavigationBar()Z
    .locals 1

    .line 552
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sHasNavigationBar:Z

    return v0
.end method

.method public static isHideNotch()Z
    .locals 1

    .line 2020
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sHideNotch:Z

    return v0
.end method

.method public static isHomeSupportSearchBar(Landroid/content/Context;)Z
    .locals 1

    .line 556
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/allapps/LauncherMode;->isHomeSupportSearchBar(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isHotseatsAppTitleHided()Z
    .locals 1

    .line 1846
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsHotseatsAppTitleHided:Z

    return v0
.end method

.method public static isInMultiWindowMode()Z
    .locals 1

    .line 802
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsInMultiWindowMode:Z

    return v0
.end method

.method public static isInSnapshotMode()Z
    .locals 1

    .line 1818
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsInSnapShotMode:Z

    return v0
.end method

.method public static final isInvalidateCellPosition(ZIIII)Z
    .locals 3

    .line 1490
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isRotatable()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-eqz p0, :cond_2

    add-int/2addr p1, p3

    .line 1491
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getWidgetCellCountX()I

    move-result p0

    if-gt p1, p0, :cond_0

    add-int/2addr p2, p4

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getWidgetCellCountY()I

    move-result p0

    if-le p2, p0, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1

    :cond_2
    add-int/2addr p1, p3

    .line 1493
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getPortraitCellCountX()I

    move-result p0

    if-gt p1, p0, :cond_3

    add-int/2addr p2, p4

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getPortraitCellCountY()I

    move-result p0

    if-le p2, p0, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    return v1
.end method

.method public static isKeepRecentsViewPortrait()Z
    .locals 1

    .line 447
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isUseFixedRotationTransform()Z

    move-result v0

    return v0
.end method

.method public static isLargeScreen()Z
    .locals 3

    .line 2129
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenDensity()F

    move-result v1

    const/high16 v2, 0x44160000    # 600.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isLayoutRtl()Z
    .locals 1

    .line 771
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsLayoutRtl:Z

    return v0
.end method

.method public static final isMigratingDBFromOthers()Z
    .locals 2

    .line 1294
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sCellXMigratedFrom:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sCellYMigratedFrom:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isMiuiLiteVersion()Z
    .locals 3

    .line 2244
    :try_start_0
    const-class v0, Lmiui/os/Build;

    const-string v1, "IS_MIUI_LITE_VERSION"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/miui/launcher/utils/ReflectUtils;->getStaticFieldValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const-string v0, "Launcher.DeviceConfig"

    const-string v1, "reflect failed when get is miui lite device"

    .line 2246
    invoke-static {v0, v1}, Lcom/miui/home/launcher/DeviceConfig$_lancet;->com_miui_home_launcher_aop_LogHooker_ae(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public static isMultiProcessMinusScreen()Z
    .locals 1

    .line 1774
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->IS_USE_GOOGLE_MINUS_SCREEN:Z

    if-nez v0, :cond_1

    .line 1775
    invoke-static {}, Lcom/miui/home/launcher/ApplicationConfig;->isGlobalAssistantInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static isNaturalWidth720p(Landroid/content/Context;)Z
    .locals 1

    .line 1212
    invoke-static {p0}, Lcom/miui/launcher/utils/LauncherUtils;->getNaturalWidth(Landroid/content/Context;)I

    move-result p0

    const/16 v0, 0x2d0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static declared-synchronized isNetWorkConnected()Z
    .locals 2

    const-class v0, Lcom/miui/home/launcher/DeviceConfig;

    monitor-enter v0

    .line 1920
    :try_start_0
    sget-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sIsNetWorkConnected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static final isRecommendServerEnable()Z
    .locals 1

    .line 923
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isRotatable()Z
    .locals 1

    .line 767
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sRotatable:Z

    return v0
.end method

.method public static final isScreenOrientationChanged()Z
    .locals 1

    .line 955
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sScreenOrientationChanged:Z

    return v0
.end method

.method public static final isScreenOrientationLandscape()Z
    .locals 2

    .line 967
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sScreenWidth:I

    sget v1, Lcom/miui/home/launcher/DeviceConfig;->sScreenHeight:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isScreenSizeChanged()Z
    .locals 1

    .line 959
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sScreenSizeChanged:Z

    return v0
.end method

.method public static isSearchBarVisibleChanged()Z
    .locals 1

    .line 963
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsSearchBarChanged:Z

    return v0
.end method

.method public static isShowNavigationBar()Z
    .locals 1

    .line 1838
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sHasNavigationBar:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsImmersiveNavigationBar:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isShowNotch()Z
    .locals 1

    .line 2024
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isNotch()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isHideNotch()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isShowSearchBar()Z
    .locals 1

    .line 899
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->sShowSearchBar:Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/ChangeableValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isShowSystemNavTypePreferenceInMiuiSettings(Landroid/content/Context;)Z
    .locals 4

    .line 426
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    sget v0, Lcom/miui/home/launcher/DeviceConfig;->MIUI_VERSION:I

    const/16 v3, 0xb

    if-lt v0, v3, :cond_0

    .line 428
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isHasNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "infinity_display_remove_from_other_personal_settings"

    invoke-static {p0, v0, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method public static final isSupportCompleteAnimation()Z
    .locals 2

    const-string v0, "feature_complete_animation"

    const/4 v1, 0x1

    .line 1251
    invoke-static {v0, v1}, Lmiui/util/MiuiFeatureUtils;->isSystemFeatureSupported(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportRecentsAndFsGesture()Z
    .locals 1

    .line 2137
    invoke-static {}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->isSupportRecentsAndFsGesture()Z

    move-result v0

    return v0
.end method

.method public static isSupportSearchBar()Z
    .locals 1

    .line 887
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsSupportSearchBar:Z

    return v0
.end method

.method public static isSupportSearchBarLongPress(Landroid/content/Context;)Z
    .locals 2

    .line 614
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "key_home_screen_search_bar_long_press_action"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isSupportSearchBarTransfer(Landroid/content/Context;)Z
    .locals 2

    .line 626
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "key_home_screen_search_bar_transfer"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isSupportSearchBarXiaoAi(Landroid/content/Context;)Z
    .locals 2

    .line 622
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "key_home_screen_search_bar_show_xiaoai_icon"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isSupportSmallWindow()Z
    .locals 1

    .line 2227
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sSupportSmallWindow:Z

    return v0
.end method

.method public static isTetheringSupported()Z
    .locals 1

    .line 1932
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsTetheringSupported:Z

    return v0
.end method

.method public static isUseFixedRotationTransform()Z
    .locals 1

    .line 443
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidR()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isUseGoogleMinusScreen()Z
    .locals 2

    .line 2222
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->USE_GOOGLE_MINUS_SCREEN_REGIONS:Ljava/util/HashSet;

    sget-object v1, Lcom/miui/home/launcher/DeviceConfig;->CURRENT_REGION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->USE_GOOGLE_MINUS_SCREEN_CLIENT_ID:Ljava/util/HashSet;

    sget-object v1, Lcom/miui/home/launcher/DeviceConfig;->CLIENT_ID_BASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->CAN_SWITCH_MINUS_SCREEN:Z

    if-eqz v0, :cond_0

    .line 2223
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPersonalAssistantGoogle()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static final isXLargeMode()Z
    .locals 2

    .line 1477
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountX:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountY:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isXLargeScreen()Z
    .locals 3

    .line 2133
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenDensity()F

    move-result v1

    const/high16 v2, 0x44340000    # 720.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$checkIsAccessibilityEnabledAsync$7()V
    .locals 4

    const/4 v0, 0x0

    .line 1863
    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->setIsAccessibilityEnabled(Z)V

    .line 1865
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enabled_accessibility_services"

    .line 1864
    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1869
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    const-string v2, "accessibility"

    .line 1870
    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 1874
    :cond_1
    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v1

    const-string v2, ":"

    .line 1875
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x7

    .line 1879
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava8/util/stream/StreamSupport;->stream(Ljava/util/Collection;)Ljava8/util/stream/Stream;

    move-result-object v0

    sget-object v3, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$FPO5v0xnmDSS4sJtbHmz6xfM9mc;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$FPO5v0xnmDSS4sJtbHmz6xfM9mc;

    .line 1880
    invoke-interface {v0, v3}, Ljava8/util/stream/Stream;->map(Ljava8/util/function/Function;)Ljava8/util/stream/Stream;

    move-result-object v0

    new-instance v3, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$g6cudem7PZaqxiGaI461FGJBK40;

    invoke-direct {v3, v1, v2}, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$g6cudem7PZaqxiGaI461FGJBK40;-><init>(Ljava/util/List;I)V

    .line 1881
    invoke-interface {v0, v3}, Ljava8/util/stream/Stream;->forEach(Ljava8/util/function/Consumer;)V

    return-void
.end method

.method static synthetic lambda$checkIsNetworkConnectedAsync$8()V
    .locals 2

    .line 1904
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const-string v1, "connectivity"

    .line 1905
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1906
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1909
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1911
    :goto_0
    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->setIsNetWorkConnected(Z)V

    return-void
.end method

.method static synthetic lambda$checkIsSupportMultiWindowMode$1(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    .line 812
    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsSupportMultiWindowMode:Z

    .line 814
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.android.systemui"

    const/16 v2, 0x80

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "Launcher.DeviceConfig"

    const-string v2, "isSupportRecentsRecommend: getPackageInfo error."

    .line 817
    invoke-static {v1, v2, p0}, Lcom/miui/home/launcher/DeviceConfig$_lancet;->com_miui_home_launcher_aop_LogHooker_adt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_0

    .line 819
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_0

    .line 820
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz p0, :cond_0

    const-string v1, "SupportLauncherMultiWindowMode"

    .line 822
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    sput-boolean p0, Lcom/miui/home/launcher/DeviceConfig;->sIsSupportMultiWindowMode:Z

    :cond_0
    return-void
.end method

.method static synthetic lambda$checkIsTetheringSupported$9()V
    .locals 1

    .line 1928
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/launcher/utils/ConnectivityHelper;->isTetheringSupported(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsTetheringSupported:Z

    return-void
.end method

.method static synthetic lambda$checkSystemUIFsgVersion$10()V
    .locals 4

    .line 1939
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    .line 1940
    sget-object v1, Lcom/miui/home/launcher/DeviceConfig;->sSystemuiFsgVersion:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "systemui_fsg_version"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method static synthetic lambda$null$2(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    .line 1880
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method static synthetic lambda$null$3(ILandroid/accessibilityservice/AccessibilityServiceInfo;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 1882
    iget p1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    and-int/2addr p1, p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$null$4(Landroid/accessibilityservice/AccessibilityServiceInfo;)Ljava/lang/String;
    .locals 0

    .line 1887
    :try_start_0
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, ""

    return-object p0
.end method

.method static synthetic lambda$null$5(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1893
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    .line 1894
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->setIsAccessibilityEnabled(Z)V

    return-void

    :cond_0
    return-void
.end method

.method static synthetic lambda$null$6(Ljava/util/List;ILjava/lang/String;)V
    .locals 1

    .line 1881
    invoke-static {p0}, Ljava8/util/stream/StreamSupport;->stream(Ljava/util/Collection;)Ljava8/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$2Zc5ACteiwhgafX421p-fk-m4yY;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$2Zc5ACteiwhgafX421p-fk-m4yY;-><init>(I)V

    .line 1882
    invoke-interface {p0, v0}, Ljava8/util/stream/Stream;->filter(Ljava8/util/function/Predicate;)Ljava8/util/stream/Stream;

    move-result-object p0

    sget-object p1, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$7RsF4kJee0gxVNmCpaw0Lpit3zs;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$7RsF4kJee0gxVNmCpaw0Lpit3zs;

    .line 1885
    invoke-interface {p0, p1}, Ljava8/util/stream/Stream;->map(Ljava8/util/function/Function;)Ljava8/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$VeId7rS35z2j2ZhpIMIJzBY5jbI;

    invoke-direct {p1, p2}, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$VeId7rS35z2j2ZhpIMIJzBY5jbI;-><init>(Ljava/lang/String;)V

    .line 1892
    invoke-interface {p0, p1}, Ljava8/util/stream/Stream;->forEach(Ljava8/util/function/Consumer;)V

    return-void
.end method

.method static synthetic lambda$resolveMiuiVersionAndCheckUpgrade$11(Landroid/content/Context;)V
    .locals 1

    .line 2035
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->isCurrentThemeSupportSearchBar(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2036
    invoke-static {p0, v0}, Lcom/miui/home/launcher/DeviceConfig;->setCurrentThemeSupportSearchBar(Landroid/content/Context;Z)Z

    const-string v0, "ota"

    .line 2037
    invoke-static {p0, v0}, Lcom/miui/home/launcher/DeviceConfig;->setSearchBarSource(Landroid/content/Context;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method static synthetic lambda$static$0()V
    .locals 3

    .line 502
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->getSettingTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 503
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 504
    sget-object v1, Lcom/miui/home/launcher/DeviceConfig;->sSettingTitle:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static final loadCellsCountConfig(Landroid/content/Context;)V
    .locals 7

    const-string v0, "pref_key_use_theme_cells_size"

    const/4 v1, 0x0

    .line 1105
    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    .line 1106
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isElderlyManMode()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_0

    .line 1110
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isRotatable()Z

    move-result v3

    const/4 v4, -0x1

    if-nez v3, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-eq v3, v2, :cond_1

    sget v3, Lcom/miui/home/launcher/DeviceConfig;->sCellCountX:I

    if-eq v3, v4, :cond_1

    sget v3, Lcom/miui/home/launcher/DeviceConfig;->sCellCountY:I

    if-eq v3, v4, :cond_1

    sget v3, Lcom/miui/home/launcher/DeviceConfig;->sCellCountXR:I

    if-eq v3, v4, :cond_1

    sget v3, Lcom/miui/home/launcher/DeviceConfig;->sCellCountYR:I

    if-eq v3, v4, :cond_1

    sget-boolean v3, Lcom/miui/home/launcher/DeviceConfig;->sUseThemeOrOldmanCellCount:Z

    if-eqz v3, :cond_4

    .line 1113
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v3

    if-eqz v3, :cond_2

    sget v3, Lcom/miui/home/launcher/DeviceConfig;->sCellCountX:I

    if-eq v3, v4, :cond_2

    sget v3, Lcom/miui/home/launcher/DeviceConfig;->sCellCountY:I

    if-ne v3, v4, :cond_4

    :cond_2
    const-string v3, "pref_key_cell_x"

    .line 1114
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountXDef(Landroid/content/Context;)I

    move-result v4

    invoke-static {p0, v3, v4}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    const-string v4, "pref_key_cell_y"

    .line 1115
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountYDef(Landroid/content/Context;)I

    move-result v5

    invoke-static {p0, v4, v5}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    .line 1116
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountXMax(Landroid/content/Context;)I

    move-result v5

    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountXMin(Landroid/content/Context;)I

    move-result v6

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    sput v3, Lcom/miui/home/launcher/DeviceConfig;->sCellCountYR:I

    sput v3, Lcom/miui/home/launcher/DeviceConfig;->sCellCountX:I

    .line 1117
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountYMax(Landroid/content/Context;)I

    move-result v3

    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountYMin(Landroid/content/Context;)I

    move-result v5

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    sput v3, Lcom/miui/home/launcher/DeviceConfig;->sCellCountXR:I

    sput v3, Lcom/miui/home/launcher/DeviceConfig;->sCellCountY:I

    .line 1118
    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sUseThemeOrOldmanCellCount:Z

    goto :goto_1

    .line 1107
    :cond_3
    :goto_0
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountXDef(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/miui/home/launcher/DeviceConfig;->sCellCountYR:I

    sput v1, Lcom/miui/home/launcher/DeviceConfig;->sCellCountX:I

    .line 1108
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountYDef(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/miui/home/launcher/DeviceConfig;->sCellCountXR:I

    sput v1, Lcom/miui/home/launcher/DeviceConfig;->sCellCountY:I

    .line 1109
    sput-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->sUseThemeOrOldmanCellCount:Z

    :cond_4
    :goto_1
    if-eqz v0, :cond_5

    const-string v0, "by_theme"

    .line 1122
    sput-object v0, Lcom/miui/home/launcher/DeviceConfig;->sCurrentScreenCells:Ljava/lang/String;

    goto :goto_2

    .line 1124
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/miui/home/launcher/DeviceConfig;->sCellCountX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/miui/home/launcher/DeviceConfig;->sCellCountY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/DeviceConfig;->sCurrentScreenCells:Ljava/lang/String;

    .line 1126
    :goto_2
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountX:I

    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountXDef(Landroid/content/Context;)I

    move-result v1

    if-le v0, v1, :cond_6

    .line 1127
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070257

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellMeasureWidth:I

    goto :goto_3

    .line 1129
    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070256

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellMeasureWidth:I

    .line 1131
    :goto_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070245

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sCellHorizontalSpacing:I

    .line 1132
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->useNavigationBarLayoutMode()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1133
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07024b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_4

    .line 1134
    :cond_7
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07024a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_4
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sCellVerticalSpacing:I

    .line 1135
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701a8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sQuickCallCellVerticalSpacing:I

    .line 1136
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isScreenOrientationLandscape()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_8

    .line 1137
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sCellWorkingWidth:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    sget v3, Lcom/miui/home/launcher/DeviceConfig;->sCellHorizontalSpacing:I

    sget v4, Lcom/miui/home/launcher/DeviceConfig;->sCellCountXR:I

    add-int/lit8 v5, v4, -0x1

    mul-int/2addr v3, v5

    int-to-float v3, v3

    sub-float/2addr v0, v3

    int-to-float v3, v4

    div-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sCellWidth:I

    .line 1138
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sCellWorkingHeight:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    sget v3, Lcom/miui/home/launcher/DeviceConfig;->sCellVerticalSpacing:I

    sget v4, Lcom/miui/home/launcher/DeviceConfig;->sCellCountYR:I

    add-int/lit8 v5, v4, -0x1

    mul-int/2addr v3, v5

    int-to-float v3, v3

    sub-float/2addr v0, v3

    int-to-float v3, v4

    div-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sCellHeight:I

    .line 1139
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sFolderWorkingHeight:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    sget v1, Lcom/miui/home/launcher/DeviceConfig;->sCellCountYR:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sFolderCellHeight:I

    goto :goto_5

    .line 1141
    :cond_8
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sCellWorkingWidth:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    sget v3, Lcom/miui/home/launcher/DeviceConfig;->sCellHorizontalSpacing:I

    sget v4, Lcom/miui/home/launcher/DeviceConfig;->sCellCountX:I

    add-int/lit8 v5, v4, -0x1

    mul-int/2addr v3, v5

    int-to-float v3, v3

    sub-float/2addr v0, v3

    int-to-float v3, v4

    div-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sCellWidth:I

    .line 1142
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sCellWorkingHeight:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    sget v3, Lcom/miui/home/launcher/DeviceConfig;->sCellVerticalSpacing:I

    sget v4, Lcom/miui/home/launcher/DeviceConfig;->sCellCountY:I

    add-int/lit8 v5, v4, -0x1

    mul-int/2addr v3, v5

    int-to-float v3, v3

    sub-float/2addr v0, v3

    int-to-float v3, v4

    div-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sCellHeight:I

    .line 1143
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sFolderWorkingHeight:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    sget v1, Lcom/miui/home/launcher/DeviceConfig;->sCellCountY:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sFolderCellHeight:I

    .line 1145
    :goto_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700c5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 1146
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0700c3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sub-float/2addr v0, v1

    .line 1147
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0700c4

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sub-float/2addr v0, v1

    .line 1148
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0b0016

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 1145
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sFolderCellMaxWidth:I

    .line 1153
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isRotatable()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1154
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sCellWorkingWidth:I

    sget v1, Lcom/miui/home/launcher/DeviceConfig;->sCellWidth:I

    sget v3, Lcom/miui/home/launcher/DeviceConfig;->sCellCountX:I

    mul-int/2addr v3, v1

    sub-int/2addr v0, v3

    sget v3, Lcom/miui/home/launcher/DeviceConfig;->sCellCountY:I

    sub-int/2addr v3, v2

    div-int/2addr v0, v3

    .line 1155
    sget v3, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellMeasureWidth:I

    add-int/2addr v1, v0

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellMeasureWidth:I

    .line 1156
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sCellWorkingHeight:I

    sget v1, Lcom/miui/home/launcher/DeviceConfig;->sCellHeight:I

    sget v3, Lcom/miui/home/launcher/DeviceConfig;->sCellCountY:I

    mul-int/2addr v3, v1

    sub-int/2addr v0, v3

    sget v3, Lcom/miui/home/launcher/DeviceConfig;->sCellCountX:I

    sub-int/2addr v3, v2

    div-int/2addr v0, v3

    .line 1157
    sget v2, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellMeasureHeight:I

    add-int/2addr v1, v0

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellMeasureHeight:I

    .line 1159
    :cond_9
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->calcAllAppsCellSize(Landroid/content/Context;)V

    return-void
.end method

.method private static loadDensity(Landroid/content/Context;)V
    .locals 1

    const-string v0, "window"

    .line 759
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 760
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 761
    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 762
    iget p0, v0, Landroid/util/DisplayMetrics;->density:F

    sput p0, Lcom/miui/home/launcher/DeviceConfig;->sScreenDensity:F

    .line 763
    iget p0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    sput p0, Lcom/miui/home/launcher/DeviceConfig;->sScreenDensityDpi:I

    return-void
.end method

.method public static loadScreenSize(Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 10

    .line 829
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sScreenWidth:I

    .line 830
    sget v1, Lcom/miui/home/launcher/DeviceConfig;->sScreenHeight:I

    const-string v2, "window"

    .line 831
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 832
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 833
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 834
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "force_fsg_nav_bar"

    invoke-static {v4, v5}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_1

    .line 835
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "force_immersive_nav_bar"

    invoke-static {v4, v7}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v5

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v6

    :goto_1
    sput-boolean v4, Lcom/miui/home/launcher/DeviceConfig;->sIsGestureEnable:Z

    .line 836
    sget-boolean v4, Lcom/miui/home/launcher/DeviceConfig;->sIsGestureEnable:Z

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportRecentsAndFsGesture()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 837
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "hide_gesture_line"

    invoke-static {v4, v7}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    move v4, v6

    goto :goto_2

    :cond_2
    move v4, v5

    .line 838
    :goto_2
    sget-boolean v7, Lcom/miui/home/launcher/DeviceConfig;->sIsGestureEnable:Z

    if-eqz v7, :cond_3

    if-nez v4, :cond_3

    move v7, v6

    goto :goto_3

    :cond_3
    move v7, v5

    :goto_3
    sput-boolean v7, Lcom/miui/home/launcher/DeviceConfig;->sIsImmersiveNavigationBar:Z

    .line 839
    invoke-virtual {v2, v3}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 841
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isRotatable()Z

    move-result v2

    if-nez v2, :cond_4

    iget v2, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v7, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_4

    :cond_4
    iget v2, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    :goto_4
    sput v2, Lcom/miui/home/launcher/DeviceConfig;->sScreenWidth:I

    .line 842
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isRotatable()Z

    move-result v2

    if-nez v2, :cond_5

    iget v2, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v7, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_5

    :cond_5
    iget v2, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    :goto_5
    sput v2, Lcom/miui/home/launcher/DeviceConfig;->sScreenHeight:I

    .line 844
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v7, "force_black_v2"

    invoke-static {v2, v7, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v6, :cond_6

    move v2, v6

    goto :goto_6

    :cond_6
    move v2, v5

    :goto_6
    sput-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->sHideNotch:Z

    .line 846
    sget-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->sIsSupportSearchBar:Z

    if-eqz v2, :cond_8

    sget-boolean v2, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v2, :cond_7

    .line 847
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v6, :cond_8

    .line 848
    :cond_7
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v2

    if-nez v2, :cond_8

    move v2, v6

    goto :goto_7

    :cond_8
    move v2, v5

    .line 849
    :goto_7
    sget-object v7, Lcom/miui/home/launcher/DeviceConfig;->sShowSearchBar:Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/miui/home/launcher/common/ChangeableValue;->setValue(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->sIsSearchBarChanged:Z

    const v7, 0x7f0701ff

    .line 850
    invoke-virtual {p1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 851
    sget-object v8, Lcom/miui/home/launcher/DeviceConfig;->sSearchBarMarginBottom:Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-static {p0, v4}, Lcom/miui/home/launcher/DeviceConfig;->calcSearchBarMarginBottom(Landroid/content/Context;Z)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/miui/home/launcher/common/ChangeableValue;->setValue(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v2, v8

    .line 852
    sget-object v8, Lcom/miui/home/launcher/DeviceConfig;->sHotSeatsMarginBottom:Lcom/miui/home/launcher/common/ChangeableValue;

    sget-object v9, Lcom/miui/home/launcher/DeviceConfig;->sShowSearchBar:Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-virtual {v9}, Lcom/miui/home/launcher/common/ChangeableValue;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-static {p0, v9, v4}, Lcom/miui/home/launcher/DeviceConfig;->calcHotSeatsMarginBottom(Landroid/content/Context;ZZ)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v8, v4}, Lcom/miui/home/launcher/common/ChangeableValue;->setValue(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v2, v4

    .line 853
    sget-object v4, Lcom/miui/home/launcher/DeviceConfig;->sHotSeatsMarginTop:Lcom/miui/home/launcher/common/ChangeableValue;

    sget-object v8, Lcom/miui/home/launcher/DeviceConfig;->sShowSearchBar:Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-virtual {v8}, Lcom/miui/home/launcher/common/ChangeableValue;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-static {p0, v8}, Lcom/miui/home/launcher/DeviceConfig;->calcHotSeatsMarginTop(Landroid/content/Context;Z)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/miui/home/launcher/common/ChangeableValue;->setValue(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v2, v4

    .line 854
    sget-object v4, Lcom/miui/home/launcher/DeviceConfig;->sHotSeatsHeight:Lcom/miui/home/launcher/common/ChangeableValue;

    sget-object v8, Lcom/miui/home/launcher/DeviceConfig;->sShowSearchBar:Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-virtual {v8}, Lcom/miui/home/launcher/common/ChangeableValue;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-static {p0, v8}, Lcom/miui/home/launcher/DeviceConfig;->calcHotSeatsHeight(Landroid/content/Context;Z)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/miui/home/launcher/common/ChangeableValue;->setValue(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v2, v4

    .line 855
    sget-object v4, Lcom/miui/home/launcher/DeviceConfig;->sHotSeatsMarginBottom:Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-virtual {v4}, Lcom/miui/home/launcher/common/ChangeableValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v8, Lcom/miui/home/launcher/DeviceConfig;->sHotSeatsHeight:Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-virtual {v8}, Lcom/miui/home/launcher/common/ChangeableValue;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/2addr v4, v8

    sget-object v8, Lcom/miui/home/launcher/DeviceConfig;->sHotSeatsMarginTop:Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-virtual {v8}, Lcom/miui/home/launcher/common/ChangeableValue;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/2addr v4, v8

    sput v4, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceIndicatorMarginBottom:I

    .line 856
    sget-object v4, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceCellPaddingBottom:Lcom/miui/home/launcher/common/ChangeableValue;

    sget v8, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceIndicatorMarginBottom:I

    add-int/2addr v8, v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/miui/home/launcher/common/ChangeableValue;->setValue(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v2, v4

    .line 857
    sget-boolean v4, Lcom/miui/home/launcher/DeviceConfig;->sIsImmersiveNavigationBar:Z

    if-nez v4, :cond_9

    sget-boolean v4, Lcom/miui/home/launcher/DeviceConfig;->sHasNavigationBar:Z

    if-eqz v4, :cond_9

    .line 858
    sget v4, Lcom/miui/home/launcher/DeviceConfig;->sScreenHeight:I

    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v7

    sub-int/2addr v4, v7

    sput v4, Lcom/miui/home/launcher/DeviceConfig;->sScreenHeight:I

    .line 860
    :cond_9
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isRotatable()Z

    move-result v4

    if-nez v4, :cond_a

    iget v4, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_8

    :cond_a
    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    :goto_8
    sput v3, Lcom/miui/home/launcher/DeviceConfig;->sRealScreenHight:I

    .line 861
    sget v3, Lcom/miui/home/launcher/DeviceConfig;->sRealScreenHight:I

    sget v4, Lcom/miui/home/launcher/DeviceConfig;->sScreenHeight:I

    sub-int/2addr v3, v4

    sput v3, Lcom/miui/home/launcher/DeviceConfig;->sFitSystemViewPaddingBottom:I

    if-le v0, v1, :cond_b

    .line 862
    sget v3, Lcom/miui/home/launcher/DeviceConfig;->sScreenWidth:I

    if-lt v3, v4, :cond_c

    :cond_b
    if-ge v0, v1, :cond_d

    sget v3, Lcom/miui/home/launcher/DeviceConfig;->sScreenWidth:I

    sget v4, Lcom/miui/home/launcher/DeviceConfig;->sScreenHeight:I

    if-le v3, v4, :cond_d

    :cond_c
    move v3, v6

    goto :goto_9

    :cond_d
    move v3, v5

    :goto_9
    sput-boolean v3, Lcom/miui/home/launcher/DeviceConfig;->sScreenOrientationChanged:Z

    if-nez v2, :cond_f

    .line 864
    sget v2, Lcom/miui/home/launcher/DeviceConfig;->sScreenWidth:I

    if-ne v0, v2, :cond_e

    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sScreenHeight:I

    if-eq v1, v0, :cond_10

    :cond_e
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sScreenOrientationChanged:Z

    if-nez v0, :cond_10

    :cond_f
    move v5, v6

    :cond_10
    sput-boolean v5, Lcom/miui/home/launcher/DeviceConfig;->sScreenSizeChanged:Z

    .line 865
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isScreenOrientationChanged()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isScreenSizeChanged()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 866
    :cond_11
    invoke-static {p0, p1}, Lcom/miui/home/launcher/DeviceConfig;->calcGridSize(Landroid/content/Context;Landroid/content/res/Resources;)V

    .line 868
    :cond_12
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->calcSearchBarWidth(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sSearchBarWidth:I

    .line 869
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sCellWidth:I

    const v1, 0x7f070081

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v0, v1

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sSearchBarWidthDelta:I

    const v0, 0x7f090001

    .line 870
    invoke-virtual {p1, v0, v6, v6}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sScreenScaleRatio:F

    const v0, 0x7f090002

    .line 871
    invoke-virtual {p1, v0, v6, v6}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sQuickEditScreenRatio:F

    const/high16 v0, 0x7f090000

    .line 872
    invoke-virtual {p1, v0, v6, v6}, Landroid/content/res/Resources;->getFraction(III)F

    move-result p1

    sput p1, Lcom/miui/home/launcher/DeviceConfig;->sDragIconScaleRatio:F

    .line 873
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->calcWorkspaceIndicatorMarginBottomInEditMode(Landroid/content/Context;)I

    move-result p0

    sput p0, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceIndicatorMarginBottomInEditMode:I

    return-void
.end method

.method private static loadThemeResource(Landroid/content/Context;)V
    .locals 2

    .line 746
    :try_start_0
    new-instance v0, Lmiui/content/res/ThemeValues;

    invoke-direct {v0}, Lmiui/content/res/ThemeValues;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/DeviceConfig;->sThemeValues:Lmiui/content/res/ThemeValues;

    .line 747
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    check-cast v0, Landroid/content/res/MiuiResources;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/content/res/ThemeResourcesPackage;->getThemeResources(Landroid/content/res/MiuiResources;Ljava/lang/String;)Lmiui/content/res/ThemeResourcesPackage;

    move-result-object v0

    .line 748
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/miui/home/launcher/DeviceConfig;->sThemeValues:Lmiui/content/res/ThemeValues;

    invoke-virtual {v0, p0, v1}, Lmiui/content/res/ThemeResourcesPackage;->mergeThemeValues(Ljava/lang/String;Lmiui/content/res/ThemeValues;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Launcher.DeviceConfig"

    const-string v1, "loadThemeResource error"

    .line 750
    invoke-static {v0, v1, p0}, Lcom/miui/home/launcher/DeviceConfig$_lancet;->com_miui_home_launcher_aop_LogHooker_aet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static final needHideLockProvider(Landroid/content/Context;)Z
    .locals 1

    .line 1589
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1591
    :cond_0
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->needHideThemeManager(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static needHideMinusScreen()Z
    .locals 1

    .line 1770
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sRotatable:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsLayoutRtl:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/ApplicationConfig;->isAssistantInstalled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isMultiProcessMinusScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static final needHideThemeManager(Landroid/content/Context;)Z
    .locals 0

    .line 1497
    invoke-static {p0}, Lmiui/theme/ThemeManagerHelper;->needDisableTheme(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static final needRecalculateWidgetSpan()Z
    .locals 1

    .line 1581
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sNeedRecalculateWidgetSpan:Z

    return v0
.end method

.method public static needShowCellsEntry(Landroid/content/Context;)Z
    .locals 4

    .line 1343
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountXMin(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountXMax(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_1

    .line 1344
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountYMin(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountYMax(Landroid/content/Context;)I

    move-result v1

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_2

    const-string v0, "pref_key_use_theme_cells_size"

    .line 1346
    invoke-static {p0, v0, v3}, Lcom/miui/home/launcher/common/PreferenceUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    return v2
.end method

.method public static final needShowMisplacedTips()Z
    .locals 1

    .line 1585
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sNeedShowMisplacedTips:Z

    return v0
.end method

.method public static final portraitCellPosition(Landroid/content/ContentValues;)V
    .locals 3

    .line 1255
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isScreenOrientationLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "cellX"

    .line 1256
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "cellY"

    .line 1257
    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 1259
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget v2, Lcom/miui/home/launcher/DeviceConfig;->sCellCountX:I

    mul-int/2addr v1, v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v1, v0

    const-string v0, "cellX"

    .line 1260
    sget v2, Lcom/miui/home/launcher/DeviceConfig;->sCellCountXR:I

    rem-int v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "cellY"

    .line 1261
    sget v2, Lcom/miui/home/launcher/DeviceConfig;->sCellCountXR:I

    div-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method

.method public static removeDownloadInstallInfo(Landroid/content/Context;)V
    .locals 1

    .line 1628
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/miui/home/launcher/LauncherSettings;->getDownloadInstallInfoPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1629
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1630
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method public static final removeInvalidateDatabase(Landroid/content/Context;Z)V
    .locals 6

    .line 1598
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v0

    .line 1599
    invoke-static {p0}, Lcom/miui/home/launcher/common/StorageContextGetter;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    .line 1600
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDatabaseName()Ljava/lang/String;

    move-result-object v1

    .line 1605
    :try_start_0
    sget-object v2, Lcom/miui/home/launcher/DeviceConfig;->sLauncherDatabaseName:Ljava/lang/String;

    invoke-virtual {v0, p0, v2}, Lcom/miui/home/launcher/allapps/LauncherMode;->getLauncherDatabasePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_4

    if-eqz p1, :cond_0

    sget-object v2, Lcom/miui/home/launcher/DeviceConfig;->sLauncherDatabaseName:Ljava/lang/String;

    .line 1606
    invoke-virtual {v0, p0, v2}, Lcom/miui/home/launcher/allapps/LauncherMode;->getLauncherDatabasePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    .line 1609
    :cond_0
    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/allapps/LauncherMode;->getLauncherDatabaseDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    .line 1610
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    aget-object v4, v0, v3

    if-eqz p1, :cond_1

    .line 1611
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, ".db"

    .line 1612
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1613
    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "app_category_new.db"

    .line 1614
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "assistant"

    .line 1615
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1616
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isStaging()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "mistat.db"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    .line 1619
    :cond_2
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-void

    :catch_0
    move-exception p0

    .line 1623
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    return-void
.end method

.method public static requestIsAppStoreEnabled()V
    .locals 1

    .line 1822
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/LauncherApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/market/sdk/MarketManager;->getManager(Landroid/content/Context;)Lcom/market/sdk/MarketManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/market/sdk/MarketManager;->isAppStoreEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsAppStoreEnabled:Z

    return-void
.end method

.method public static resolveMiuiVersionAndCheckUpgrade(Landroid/content/Context;)V
    .locals 3

    const-string v0, "miui_version"

    const-string v1, ""

    .line 2028
    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2029
    sget-object v1, Lcom/miui/home/launcher/DeviceConfig;->MIUI_BIG_VERSION:Ljava/lang/String;

    const-string v2, "V11"

    .line 2030
    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "V11"

    .line 2031
    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2032
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFirstBoot()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2033
    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sUpdateIconPositionForMiui11Upgrade:Z

    .line 2034
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$hXIhTGiIqZHOu_xKPRMj30cZUa0;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$hXIhTGiIqZHOu_xKPRMj30cZUa0;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    :cond_0
    const-string v0, "miui_version"

    .line 2041
    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static restoreBackupDB(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    .line 1564
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v0

    .line 1565
    invoke-static {}, Lcom/miui/home/library/utils/Preconditions;->assertNonUiThread()V

    .line 1567
    sget-object v1, Lcom/miui/home/launcher/DeviceConfig;->sLauncherDatabaseName:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/miui/home/launcher/allapps/LauncherMode;->getLauncherDatabasePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1569
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/miui/home/launcher/DeviceConfig;->sLauncherDatabaseName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/miui/home/launcher/allapps/LauncherMode;->getLauncherDatabasePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 1570
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1573
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v1

    invoke-static {p1, v1}, Lmiui/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1574
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public static saveCurrentDefaultScreenId(J)V
    .locals 2

    .line 1980
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const-string v1, "pref_default_screen"

    .line 1979
    invoke-static {v0, v1, p0, p1}, Lcom/miui/home/launcher/common/PreferenceUtils;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public static setAllAppsBackgroundAlpha(I)V
    .locals 0

    .line 2107
    sput p0, Lcom/miui/home/launcher/DeviceConfig;->sAllAppsBackgroundAlpha:I

    return-void
.end method

.method public static setAllAppsColorMode(Lcom/miui/home/launcher/allapps/AllAppsColorMode;)V
    .locals 0

    .line 2103
    sput-object p0, Lcom/miui/home/launcher/DeviceConfig;->sAllAppsColorMode:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    return-void
.end method

.method public static setCurrentThemeSupportSearchBar(Landroid/content/Context;Z)Z
    .locals 1

    .line 602
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "key_home_screen_search_bar"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static setGlobalSearchEnable(Landroid/content/Context;Z)V
    .locals 1

    .line 1790
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "QSB_SCROLL_ENTRANCE_STATUS"

    invoke-static {p0, v0, p1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->putBooleanToSystem(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    return-void
.end method

.method public static setHotseatMaxCount(I)V
    .locals 0

    .line 1393
    sput p0, Lcom/miui/home/launcher/DeviceConfig;->sHotseatMaxCount:I

    return-void
.end method

.method public static declared-synchronized setIsAccessibilityEnabled(Z)V
    .locals 1

    const-class v0, Lcom/miui/home/launcher/DeviceConfig;

    monitor-enter v0

    .line 1858
    :try_start_0
    sput-boolean p0, Lcom/miui/home/launcher/DeviceConfig;->sIsAccessibilityEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1859
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static setIsInMultiWindowModes(Landroid/content/Context;Landroid/content/res/Resources;Z)V
    .locals 1

    .line 795
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsInMultiWindowMode:Z

    if-eq v0, p2, :cond_0

    .line 796
    sput-boolean p2, Lcom/miui/home/launcher/DeviceConfig;->sIsInMultiWindowMode:Z

    .line 797
    invoke-static {p0, p1}, Lcom/miui/home/launcher/DeviceConfig;->calcGridSize(Landroid/content/Context;Landroid/content/res/Resources;)V

    :cond_0
    return-void
.end method

.method private static declared-synchronized setIsNetWorkConnected(Z)V
    .locals 1

    const-class v0, Lcom/miui/home/launcher/DeviceConfig;

    monitor-enter v0

    .line 1916
    :try_start_0
    sput-boolean p0, Lcom/miui/home/launcher/DeviceConfig;->sIsNetWorkConnected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1917
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static setLastRotation(I)V
    .locals 0

    .line 302
    sput p0, Lcom/miui/home/launcher/DeviceConfig;->sLastRotation:I

    return-void
.end method

.method public static setRotation(I)V
    .locals 0

    .line 306
    sput p0, Lcom/miui/home/launcher/DeviceConfig;->sRotation:I

    return-void
.end method

.method public static setRotationBerforStart(I)V
    .locals 0

    .line 294
    sput p0, Lcom/miui/home/launcher/DeviceConfig;->sRotationBeforeStart:I

    return-void
.end method

.method public static setScreenCells(Landroid/content/Context;II)Z
    .locals 3

    const-string v0, "pref_key_use_theme_cells_size"

    const/4 v1, 0x0

    .line 1191
    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 1195
    :cond_0
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountXMin(Landroid/content/Context;)I

    move-result v0

    const/4 v2, 0x1

    if-lt p1, v0, :cond_2

    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountXMax(Landroid/content/Context;)I

    move-result v0

    if-gt p1, v0, :cond_2

    .line 1196
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountYMin(Landroid/content/Context;)I

    move-result v0

    if-lt p2, v0, :cond_2

    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountYMax(Landroid/content/Context;)I

    move-result v0

    if-le p2, v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_3

    return v1

    :cond_3
    const-string v0, "pref_key_cell_x"

    .line 1201
    invoke-static {p0, v0, p1}, Lcom/miui/home/launcher/common/PreferenceUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    const-string v0, "pref_key_cell_y"

    .line 1202
    invoke-static {p0, v0, p2}, Lcom/miui/home/launcher/common/PreferenceUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1203
    sput p1, Lcom/miui/home/launcher/DeviceConfig;->sCellCountX:I

    .line 1204
    sput p2, Lcom/miui/home/launcher/DeviceConfig;->sCellCountY:I

    .line 1205
    sget p0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountX:I

    sget p1, Lcom/miui/home/launcher/DeviceConfig;->sCellCountY:I

    invoke-static {p0, p1}, Lcom/miui/home/launcher/DeviceConfig;->getCellSizeVal(II)Ljava/lang/String;

    move-result-object p0

    .line 1206
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getDatabaseNameBySuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/miui/home/launcher/DeviceConfig;->sLauncherDatabaseName:Ljava/lang/String;

    .line 1207
    sput-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->sScreenCellsChangedTemporary:Z

    return v2
.end method

.method public static setSearchBarExpGroupInfo(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 650
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "key_home_screen_search_bar_exp_group_info"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static setSearchBarSource(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 610
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "key_home_screen_search_bar_source"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static setSearchBarStyle(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 642
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "key_home_screen_search_bar_style"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static setUseLauncherRecentsAndFsGesture(Landroid/content/Context;Z)V
    .locals 1

    if-eqz p0, :cond_0

    .line 2142
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "use_gesture_version_three"

    invoke-static {p0, v0, p1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->putBooleanToGlobal(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    :cond_0
    return-void
.end method

.method public static showBackGestureInEditingMode()Z
    .locals 2

    .line 1955
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getSystemUIFsgVersion()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static showFsTransAnimation()Z
    .locals 2

    .line 1951
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getSystemUIFsgVersion()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static supportCheckRegionalWallpaper()Z
    .locals 1

    .line 2188
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sSupportDarkenWallpaper:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static supportDarkMode()Z
    .locals 1

    .line 2088
    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_P:Z

    return v0
.end method

.method public static supportIconTextShadow()Z
    .locals 1

    .line 2181
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sSupportDarkenWallpaper:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static supportsMultiWindow()Z
    .locals 2

    .line 806
    invoke-static {}, Lmiui/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {}, Lcom/miui/launcher/utils/LauncherUtils;->getUserSystemId()I

    move-result v1

    if-ne v0, v1, :cond_0

    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsSupportMultiWindowMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static final tryToMigrateDefaultDatabase(Landroid/content/Context;)V
    .locals 4

    .line 1501
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v0

    .line 1502
    invoke-static {p0}, Lcom/miui/home/launcher/common/StorageContextGetter;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    .line 1503
    sget-object v1, Lcom/miui/home/launcher/DeviceConfig;->sLauncherDatabaseName:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/miui/home/launcher/allapps/LauncherMode;->getLauncherDatabasePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1504
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 1505
    invoke-static {p0, v0}, Lcom/miui/home/launcher/DeviceConfig;->getOptimalDB(Landroid/content/Context;Lcom/miui/home/launcher/allapps/LauncherMode;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1507
    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v2, v1}, Lmiui/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 1508
    sput-boolean v3, Lcom/miui/home/launcher/DeviceConfig;->sNeedRecalculateWidgetSpan:Z

    .line 1509
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    .line 1510
    new-array v1, v1, [I

    .line 1511
    invoke-static {v0, v1}, Lcom/miui/home/launcher/ScreenUtils;->parseCellsSize(Ljava/lang/String;[I)Z

    const/4 v0, 0x0

    .line 1512
    aget v0, v1, v0

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sCellXMigratedFrom:I

    .line 1513
    aget v0, v1, v3

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sCellYMigratedFrom:I

    .line 1515
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sScreenCellsChangedTemporary:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sThemeChanged:Z

    if-nez v0, :cond_0

    .line 1516
    sput-boolean v3, Lcom/miui/home/launcher/DeviceConfig;->sNeedShowMisplacedTips:Z

    .line 1520
    :cond_0
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sScreenCellsChangedTemporary:Z

    if-nez v0, :cond_1

    .line 1521
    invoke-static {p0, v3}, Lcom/miui/home/launcher/DeviceConfig;->removeInvalidateDatabase(Landroid/content/Context;Z)V

    :cond_1
    return-void
.end method

.method public static updateIconPositionForMiui11Upgrade()Z
    .locals 2

    .line 2047
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sUpdateIconPositionForMiui11Upgrade:Z

    const/4 v1, 0x0

    .line 2048
    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sUpdateIconPositionForMiui11Upgrade:Z

    return v0
.end method

.method public static updateIsDefaultIcon(Landroid/content/Context;)V
    .locals 2

    .line 2123
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "is_default_icon"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sIsDefaultIcon:Z

    return-void
.end method

.method private static updateMaskTransparentEdge()V
    .locals 4

    const-string v0, "icon_mask.png"

    .line 451
    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->getRawIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "icon_pattern.png"

    .line 452
    invoke-static {v1}, Lmiui/content/res/IconCustomizer;->getRawIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    const-string v2, "icon_border.png"

    .line 453
    invoke-static {v2}, Lmiui/content/res/IconCustomizer;->getRawIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 455
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_0

    .line 457
    invoke-static {v1}, Lcom/miui/home/launcher/DeviceConfig;->getBitmapTransparentEdge(Landroid/graphics/Bitmap;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz v2, :cond_1

    .line 460
    invoke-static {v2}, Lcom/miui/home/launcher/DeviceConfig;->getBitmapTransparentEdge(Landroid/graphics/Bitmap;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz v0, :cond_2

    .line 463
    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->getBitmapTransparentEdge(Landroid/graphics/Bitmap;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 466
    invoke-static {v3}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sIconMaskTransparentEdge:I

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 468
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sIconMaskTransparentEdge:I

    :goto_0
    return-void
.end method

.method public static useNavigationBarLayoutMode()Z
    .locals 1

    .line 1850
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isShowNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->usingFsGesture()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isHotseatsAppTitleHided()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static useOldVersionIcons()Z
    .locals 1

    .line 1959
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sUseOldVersionIcons:Z

    return v0
.end method

.method private static useSecondSpaceLayout()Z
    .locals 2

    .line 1241
    invoke-static {}, Lmiui/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {}, Lcom/miui/launcher/utils/LauncherUtils;->getUserSystemId()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1242
    invoke-static {}, Lmiui/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {}, Lcom/miui/launcher/utils/LauncherUtils;->getSecondSpaceId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static usingFsGesture()Z
    .locals 1

    .line 1842
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsGestureEnable:Z

    return v0
.end method
