.class public Lcom/miui/home/launcher/DeviceConfig;
.super Ljava/lang/Object;
.source "DeviceConfig.java"


# static fields
.field public static final BUILD_REGION:Ljava/lang/String;

.field public static final CURRENT_REGION:Ljava/lang/String;

.field public static final DEVICE:Lcom/miui/home/launcher/DeviceType;

.field public static final INSTANCE:Lcom/miui/home/launcher/util/MainThreadInitializedObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/home/launcher/util/MainThreadInitializedObject<",
            "Lcom/miui/home/launcher/DeviceConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static INVALIDATE_DEFAULT_SCREEN_ID:J

.field public static final IS_AMX_BUILD:Z

.field public static final IS_FK_BUILD:Z

.field public static final IS_FOLD_DEVICE:Z

.field public static final IS_KDDI_BUILD:Z

.field public static IS_MEITU:Z

.field public static final IS_MIUI_LITE_DEVICE:Z

.field public static final IS_MTK:Z

.field public static final IS_ORANGE_BUILD:Z

.field public static final IS_SB_BUILD:Z

.field public static final IS_SUPPORT_MAGIC_WINDOW:Z

.field public static final IS_SURRPORT_FORCE_TOUCH:Z

.field public static final SELECT_MINUS_SCREEN_CLIENT_ID:Ljava/util/HashSet;
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

.field public static final USE_GOOGLE_MINUS_SCREEN_CLIENT_ID:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final USE_GOOGLE_MINUS_SCREEN_REGIONS:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final VENDOR_NAME:Ljava/lang/String;

.field private static isThemeCoverCellConfig:Z

.field private static mActiveProfile:Lcom/miui/home/launcher/DeviceProfile;

.field private static sAllAppsBackgroundAlpha:I

.field private static sAllAppsCellHeight:I

.field private static sAllAppsColorMode:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

.field private static sAllAppsDividerBottom:I

.field private static sAllAppsDividerTop:I

.field private static sApplicationIconContainerHeight:I

.field private static sApplicationIconContainerWidth:I

.field private static sCellCountX:I

.field private static sCellCountXDef:I

.field private static sCellCountXDrawerMode:I

.field private static sCellCountXMax:I

.field private static sCellCountXMin:I

.field private static sCellCountY:I

.field private static sCellCountYDef:I

.field private static sCellCountYMax:I

.field private static sCellCountYMin:I

.field private static sCellHorizontalSpacing:I

.field private static sCellVerticalSpacing:I

.field private static sCellXMigratedFrom:I

.field private static sCellYMigratedFrom:I

.field private static sCheckTitleRunnable:Ljava/lang/Runnable;

.field private static sCurrentScreenCells:Ljava/lang/String;

.field private static sDesignedDefaultScreenId:J

.field public static sDragIconScaleRatio:F

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

.field private static sHotseatIconContainerWidth:I

.field private static sHotseatMaxCount:I

.field private static sIconHeight:I

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
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static sIsInSnapShotMode:Z

.field private static sIsLayoutRtl:Z

.field private static sIsNetWorkConnected:Z

.field private static sIsSearchBarChanged:Z

.field private static sIsShowGestureLine:Z

.field private static sIsShowNotification:Z

.field public static sIsSupportLaunchPairApp:Z

.field private static sIsSupportMultiWindowMode:Z

.field private static sIsSupportSearchBar:Z

.field private static sIsTetheringSupported:Z

.field private static sLastConfiguration:Landroid/content/res/Configuration;

.field private static sLastRotation:I

.field private static sLauncherDatabaseName:Ljava/lang/String;

.field private static sMiuiWidgetPaddingTop:I

.field private static final sMiuiWidgetSizeSpec:Lcom/miui/home/launcher/widget/MiuiWidgetSizeSpec;

.field private static sMultiWindowModeLauncherHeight:I

.field private static sNeedRecalculateWidgetSpan:Z

.field private static sNeedShowMisplacedTips:Z

.field private static sNotchEditModePaddingTopDelta:I

.field private static sQuickCallCellVerticalSpacing:I

.field public static sQuickEditScreenRatio:F

.field private static sRecommendAppsCount:I

.field public static sRecommendBannerHeight:I

.field public static sRecommendBannerWidth:I

.field public static sRecommendLoadingTitle:Ljava/lang/String;

.field public static sRotatable:Z

.field private static sRotation:I

.field private static sRotationBeforeStart:I

.field private static sScreenCellsChangedTemporary:Z

.field private static sScreenDensity:F

.field private static sScreenDensityDpi:I

.field private static sScreenOrientationChanged:Z

.field public static sScreenScaleRatio:F

.field private static sScreenSizeChanged:Z

.field private static sScreenSmallestWidth:I

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

.field private static sWidgetCellDefaultHeight:I

.field private static sWidgetCellDefaultWidth:I

.field private static sWidgetCellMeasureHeight:I

.field private static sWidgetCellMeasureWidth:I

.field static sWidgetCellMinHeight:I

.field static sWidgetCellMinWidth:I

.field static sWidgetCellPaddingBottom:I

.field static sWidgetCellPaddingTop:I

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

.field private static sWorkspaceIndicatorThumbnailHeight:I

.field private static sWorkspaceInvalidateEdgeWidth:I


# instance fields
.field public landscapeProfile:Lcom/miui/home/launcher/DeviceProfile;

.field public portraitProfile:Lcom/miui/home/launcher/DeviceProfile;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 94
    new-instance v0, Lcom/miui/home/launcher/util/MainThreadInitializedObject;

    sget-object v1, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$xd45_OqI55HUF6eZBq1EnywKyL0;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$xd45_OqI55HUF6eZBq1EnywKyL0;

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/util/MainThreadInitializedObject;-><init>(Lcom/miui/home/launcher/util/MainThreadInitializedObject$ObjectProvider;)V

    sput-object v0, Lcom/miui/home/launcher/DeviceConfig;->INSTANCE:Lcom/miui/home/launcher/util/MainThreadInitializedObject;

    const/4 v0, -0x1

    .line 103
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sScreenSmallestWidth:I

    const/4 v1, 0x0

    .line 104
    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sIs720Mode:Z

    const/high16 v2, -0x40800000    # -1.0f

    .line 105
    sput v2, Lcom/miui/home/launcher/DeviceConfig;->sScreenDensity:F

    .line 106
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sScreenDensityDpi:I

    .line 107
    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sScreenOrientationChanged:Z

    .line 108
    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sIsLayoutRtl:Z

    .line 109
    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sScreenSizeChanged:Z

    .line 110
    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sIsSearchBarChanged:Z

    .line 111
    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sScreenCellsChangedTemporary:Z

    .line 112
    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sNeedRecalculateWidgetSpan:Z

    .line 113
    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sNeedShowMisplacedTips:Z

    .line 114
    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sThemeChanged:Z

    .line 115
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sCellXMigratedFrom:I

    .line 116
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sCellYMigratedFrom:I

    .line 128
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sStatusBarHeight:I

    .line 129
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sSearchBarWidth:I

    .line 130
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sSearchBarWidthDelta:I

    .line 131
    new-instance v2, Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/miui/home/launcher/common/ChangeableValue;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/miui/home/launcher/DeviceConfig;->sSearchBarMarginBottom:Lcom/miui/home/launcher/common/ChangeableValue;

    .line 132
    new-instance v2, Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/miui/home/launcher/common/ChangeableValue;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/miui/home/launcher/DeviceConfig;->sHotSeatsMarginBottom:Lcom/miui/home/launcher/common/ChangeableValue;

    .line 133
    new-instance v2, Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/miui/home/launcher/common/ChangeableValue;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/miui/home/launcher/DeviceConfig;->sHotSeatsMarginTop:Lcom/miui/home/launcher/common/ChangeableValue;

    .line 134
    new-instance v2, Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/miui/home/launcher/common/ChangeableValue;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/miui/home/launcher/DeviceConfig;->sHotSeatsHeight:Lcom/miui/home/launcher/common/ChangeableValue;

    .line 135
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceCellPaddingSide:I

    .line 136
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceCellPaddingTop:I

    .line 137
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceCellPaddingTopNotch:I

    .line 138
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceCellPaddingTopMultiWindow:I

    .line 139
    new-instance v2, Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/miui/home/launcher/common/ChangeableValue;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceCellPaddingBottom:Lcom/miui/home/launcher/common/ChangeableValue;

    .line 140
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceIndicatorMarginBottom:I

    .line 141
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceIndicatorMarginBottomInEditMode:I

    .line 142
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceIndicatorThumbnailHeight:I

    .line 143
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sFolderRecommendGridPaddingBottom:I

    .line 145
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sMiuiWidgetPaddingTop:I

    .line 146
    invoke-static {}, Lcom/miui/home/launcher/widget/MiuiWidgetSizeSpecFactory;->getWidgetSpec()Lcom/miui/home/launcher/widget/MiuiWidgetSizeSpec;

    move-result-object v2

    sput-object v2, Lcom/miui/home/launcher/DeviceConfig;->sMiuiWidgetSizeSpec:Lcom/miui/home/launcher/widget/MiuiWidgetSizeSpec;

    .line 148
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sIconWidth:I

    .line 149
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sApplicationIconContainerWidth:I

    .line 150
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sHotseatIconContainerWidth:I

    .line 151
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sNotchEditModePaddingTopDelta:I

    .line 152
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sIconHeight:I

    .line 153
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sApplicationIconContainerHeight:I

    .line 154
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountXDrawerMode:I

    .line 155
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sRecommendAppsCount:I

    .line 156
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountX:I

    .line 157
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountY:I

    .line 158
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountXDef:I

    .line 159
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountXMin:I

    .line 160
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountXMax:I

    .line 161
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountYDef:I

    .line 162
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountYMin:I

    .line 163
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountYMax:I

    .line 164
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sAllAppsCellHeight:I

    .line 165
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sAllAppsDividerTop:I

    .line 166
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sAllAppsDividerBottom:I

    .line 167
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sFolderCellHeight:I

    .line 169
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sCellVerticalSpacing:I

    .line 170
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sCellHorizontalSpacing:I

    .line 171
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sQuickCallCellVerticalSpacing:I

    .line 172
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sFolderWorkingHeight:I

    .line 173
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sHotseatMaxCount:I

    .line 190
    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sIsInSnapShotMode:Z

    const/4 v0, 0x0

    .line 195
    sput-object v0, Lcom/miui/home/launcher/DeviceConfig;->sLastConfiguration:Landroid/content/res/Configuration;

    const-string v0, "support_force_touch"

    .line 198
    invoke-static {v0, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getBooleanFromFeatureParse(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->IS_SURRPORT_FORCE_TOUCH:Z

    const/4 v0, 0x1

    .line 203
    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsShowNotification:Z

    .line 204
    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sIsAppStoreEnabled:Z

    .line 205
    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sHasNavigationBar:Z

    .line 206
    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sIsGestureEnable:Z

    .line 207
    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sIsShowGestureLine:Z

    .line 208
    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sIsImmersiveNavigationBar:Z

    .line 209
    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsHotseatsAppTitleHided:Z

    .line 210
    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sIsNetWorkConnected:Z

    .line 212
    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sIsAccessibilityEnabled:Z

    .line 214
    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sIsTetheringSupported:Z

    .line 216
    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sIsDarkMode:Z

    .line 217
    sput v1, Lcom/miui/home/launcher/DeviceConfig;->sLastRotation:I

    .line 219
    sput v1, Lcom/miui/home/launcher/DeviceConfig;->sRotation:I

    .line 220
    sput v1, Lcom/miui/home/launcher/DeviceConfig;->sRotationBeforeStart:I

    const v2, 0x3dcccccd    # 0.1f

    .line 222
    sput v2, Lcom/miui/home/launcher/DeviceConfig;->sSearchBarLightThreshold:F

    .line 224
    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sSupportSmallWindow:Z

    const-string v2, "ro.hardware"

    const-string v3, "unknown"

    .line 225
    invoke-static {v2, v3}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getStringFromSystemProperites(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/miui/home/launcher/DeviceConfig;->VENDOR_NAME:Ljava/lang/String;

    .line 226
    sget-object v2, Lcom/miui/home/launcher/DeviceConfig;->VENDOR_NAME:Ljava/lang/String;

    const-string v3, "mt"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->IS_MTK:Z

    const-string v2, "ro.miui.customized.region"

    const-string v3, ""

    .line 229
    invoke-static {v2, v3}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getStringFromSystemProperites(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/miui/home/launcher/DeviceConfig;->CURRENT_REGION:Ljava/lang/String;

    const-string v2, "ro.miui.build.region"

    const-string v3, ""

    .line 235
    invoke-static {v2, v3}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getStringFromSystemProperites(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/miui/home/launcher/DeviceConfig;->BUILD_REGION:Ljava/lang/String;

    .line 237
    new-instance v2, Lcom/miui/home/launcher/DeviceConfig$1;

    invoke-direct {v2}, Lcom/miui/home/launcher/DeviceConfig$1;-><init>()V

    sput-object v2, Lcom/miui/home/launcher/DeviceConfig;->USE_GOOGLE_MINUS_SCREEN_REGIONS:Ljava/util/HashSet;

    .line 242
    new-instance v2, Lcom/miui/home/launcher/DeviceConfig$2;

    invoke-direct {v2}, Lcom/miui/home/launcher/DeviceConfig$2;-><init>()V

    sput-object v2, Lcom/miui/home/launcher/DeviceConfig;->USE_GOOGLE_MINUS_SCREEN_CLIENT_ID:Ljava/util/HashSet;

    .line 245
    new-instance v2, Lcom/miui/home/launcher/DeviceConfig$3;

    invoke-direct {v2}, Lcom/miui/home/launcher/DeviceConfig$3;-><init>()V

    sput-object v2, Lcom/miui/home/launcher/DeviceConfig;->SELECT_MINUS_SCREEN_CLIENT_ID:Ljava/util/HashSet;

    const-string v2, "fr_orange"

    .line 257
    sget-object v3, Lcom/miui/home/launcher/DeviceConfig;->CURRENT_REGION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->IS_ORANGE_BUILD:Z

    const-string v2, "jp_kd"

    .line 259
    sget-object v3, Lcom/miui/home/launcher/DeviceConfig;->CURRENT_REGION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->IS_KDDI_BUILD:Z

    const-string v2, "jp_sb"

    .line 261
    sget-object v3, Lcom/miui/home/launcher/DeviceConfig;->CURRENT_REGION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->IS_SB_BUILD:Z

    const-string v2, "in_fk"

    .line 264
    sget-object v3, Lcom/miui/home/launcher/DeviceConfig;->CURRENT_REGION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->IS_FK_BUILD:Z

    const-string v2, "lm_cr"

    .line 268
    sget-object v3, Lcom/miui/home/launcher/DeviceConfig;->CURRENT_REGION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "mx_telcel"

    sget-object v3, Lcom/miui/home/launcher/DeviceConfig;->CURRENT_REGION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v0

    :goto_1
    sput-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->IS_AMX_BUILD:Z

    .line 270
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isMiuiLiteVersion()Z

    move-result v2

    sput-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->IS_MIUI_LITE_DEVICE:Z

    .line 272
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceType()Lcom/miui/home/launcher/DeviceType;

    move-result-object v2

    sput-object v2, Lcom/miui/home/launcher/DeviceConfig;->DEVICE:Lcom/miui/home/launcher/DeviceType;

    .line 273
    sget-object v2, Lcom/miui/home/launcher/DeviceConfig;->DEVICE:Lcom/miui/home/launcher/DeviceType;

    sget-object v3, Lcom/miui/home/launcher/DeviceType;->FOLDABLE_DEVICE:Lcom/miui/home/launcher/DeviceType;

    if-ne v2, v3, :cond_2

    move v2, v0

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    sput-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->IS_FOLD_DEVICE:Z

    const-string v2, "ro.config.miui_magic_window_enable"

    .line 276
    invoke-static {v2, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getBooleanFromSystemProperties(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->IS_SUPPORT_MAGIC_WINDOW:Z

    const-string v2, "Meitu"

    .line 278
    sget-object v3, Lmiui/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->IS_MEITU:Z

    .line 286
    new-instance v2, Ljava/io/File;

    const-string v3, "/system/media/theme/icons_version_1"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    xor-int/2addr v2, v0

    sput-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->sUseOldVersionIcons:Z

    .line 288
    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->isThemeCoverCellConfig:Z

    .line 290
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportLaunchPairApp()Z

    move-result v2

    sput-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->sIsSupportLaunchPairApp:Z

    .line 505
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v2, Lcom/miui/home/launcher/DeviceConfig;->sSettingTitle:Ljava/util/concurrent/ConcurrentHashMap;

    .line 518
    sget-object v2, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$F58cM-W15WymyMchPxAmRAziee8;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$F58cM-W15WymyMchPxAmRAziee8;

    sput-object v2, Lcom/miui/home/launcher/DeviceConfig;->sCheckTitleRunnable:Ljava/lang/Runnable;

    .line 756
    new-instance v2, Lmiui/content/res/ThemeValues;

    invoke-direct {v2}, Lmiui/content/res/ThemeValues;-><init>()V

    sput-object v2, Lcom/miui/home/launcher/DeviceConfig;->sThemeValues:Lmiui/content/res/ThemeValues;

    .line 952
    new-instance v2, Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/miui/home/launcher/common/ChangeableValue;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/miui/home/launcher/DeviceConfig;->sShowSearchBar:Lcom/miui/home/launcher/common/ChangeableValue;

    .line 1176
    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sUseThemeOrOldmanCellCount:Z

    const-wide/16 v2, -0x1

    .line 1783
    sput-wide v2, Lcom/miui/home/launcher/DeviceConfig;->INVALIDATE_DEFAULT_SCREEN_ID:J

    .line 1784
    sget-wide v2, Lcom/miui/home/launcher/DeviceConfig;->INVALIDATE_DEFAULT_SCREEN_ID:J

    sput-wide v2, Lcom/miui/home/launcher/DeviceConfig;->sDesignedDefaultScreenId:J

    .line 1862
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_3

    move v0, v1

    .line 1863
    :cond_3
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->TEMP_SHARE_MODE_FOR_WORLD_READABLE:I

    .line 1865
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_4

    move v0, v1

    goto :goto_3

    :cond_4
    const/4 v0, 0x2

    .line 1866
    :goto_3
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->TEMP_SHARE_MODE_FOR_WORLD_WRITEABLE:I

    .line 2010
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/DeviceConfig;->sSystemuiFsgVersion:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2092
    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sHideNotch:Z

    .line 2127
    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sUpdateIconPositionForMiui11Upgrade:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static backupDB(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9

    .line 1580
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v0

    .line 1581
    invoke-static {}, Lcom/miui/home/library/utils/Preconditions;->assertNonUiThread()V

    .line 1582
    sget-object v1, Lcom/miui/home/launcher/DeviceConfig;->sLauncherDatabaseName:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/miui/home/launcher/allapps/LauncherMode;->getLauncherDatabasePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1583
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    const-string v2, "pref_key_auto_backup_time"

    const-wide/16 v4, -0x1

    .line 1586
    invoke-static {p0, v2, v4, v5}, Lcom/miui/home/launcher/common/PreferenceUtils;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v6

    .line 1588
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/miui/home/launcher/DeviceConfig;->sLauncherDatabaseName:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/miui/home/launcher/allapps/LauncherMode;->getLauncherDatabasePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 1589
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    cmp-long v0, v6, v4

    if-eqz v0, :cond_1

    .line 1593
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x6ddd00

    cmp-long v0, v4, v6

    if-gez v0, :cond_1

    return v2

    .line 1596
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 1600
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p1

    invoke-static {v0, p1}, Lmiuix/core/util/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "pref_key_auto_backup_time"

    .line 1601
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 1602
    invoke-static {p0}, Lcom/miui/home/launcher/IconReorganizeMonitor;->onDBBackupFinishedForReorgnize(Landroid/content/Context;)V

    return v2

    :cond_3
    return v3
.end method

.method public static calcAllAppsCellSize(Landroid/content/Context;)V
    .locals 5

    .line 1241
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070058

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1242
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getRealScreenHeight()I

    move-result v1

    .line 1243
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v2

    sub-int/2addr v1, v2

    .line 1244
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07006f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    .line 1245
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07006e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    .line 1246
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0703eb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    .line 1247
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getSearchBarHolderVerticalPadding(Landroid/content/Context;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 1248
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07005c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    .line 1250
    sget v2, Lcom/miui/home/launcher/DeviceConfig;->sCellCountY:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    sput v1, Lcom/miui/home/launcher/DeviceConfig;->sAllAppsCellHeight:I

    .line 1251
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07016f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 1252
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2}, Landroid/text/TextPaint;-><init>()V

    .line 1253
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070496

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1254
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsCellHeight()I

    move-result v3

    sub-int/2addr v3, v1

    .line 1256
    invoke-static {p0}, Lcom/miui/home/launcher/compat/LauncherThemeCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/compat/LauncherThemeCompat;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/home/launcher/compat/LauncherThemeCompat;->getLauncherIconHeight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 1257
    invoke-static {p0}, Lcom/miui/home/launcher/compat/LauncherThemeCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/compat/LauncherThemeCompat;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/LauncherThemeCompat;->getTitleMarginTop()I

    move-result p0

    sub-int/2addr v3, p0

    const/4 p0, 0x0

    .line 1258
    invoke-virtual {v2, p0}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result p0

    sub-int/2addr v3, p0

    add-int p0, v0, v1

    sub-int/2addr p0, v3

    .line 1259
    div-int/lit8 p0, p0, 0x2

    sput p0, Lcom/miui/home/launcher/DeviceConfig;->sAllAppsDividerTop:I

    add-int/2addr v0, v3

    sub-int/2addr v0, v1

    .line 1260
    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sAllAppsDividerBottom:I

    return-void
.end method

.method private static calcDefaultWorkspaceName(Lcom/miui/home/launcher/allapps/LauncherMode;)Ljava/lang/String;
    .locals 2

    .line 1308
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountX:I

    .line 1309
    sget v1, Lcom/miui/home/launcher/DeviceConfig;->sCellCountY:I

    .line 1310
    invoke-static {v0, v1}, Lcom/miui/home/launcher/DeviceConfig;->getCellSizeVal(II)Ljava/lang/String;

    move-result-object v0

    .line 1311
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/LauncherMode;->getDefaultWorkspaceNamePrefix()Ljava/lang/String;

    move-result-object p0

    .line 1313
    sget-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sRotatable:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1314
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "default_workspace_rotatable"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1315
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1317
    :cond_0
    sget-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->IS_MEITU:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->useSecondSpaceLayout()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1318
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "meitu_"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1320
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "default_workspace"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1321
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->useSecondSpaceLayout()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_private_model"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_2
    :goto_0
    return-object p0
.end method

.method private static calcDefaultXmlID(Landroid/content/Context;Lcom/miui/home/launcher/allapps/LauncherMode;)I
    .locals 0

    .line 1480
    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->calcDefaultWorkspaceName(Lcom/miui/home/launcher/allapps/LauncherMode;)Ljava/lang/String;

    move-result-object p1

    .line 1481
    invoke-static {p0, p1}, Lcom/miui/home/launcher/DeviceConfig;->getXmlId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static calcFoldIndicatorMarginBottomInEditMode(Landroid/content/Context;)I
    .locals 5

    .line 976
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    const v2, 0x7f090002

    invoke-virtual {v0, v2, v1, v1}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    .line 977
    sget-object v1, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceCellPaddingBottom:Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-virtual {v1}, Lcom/miui/home/launcher/common/ChangeableValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 978
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellWorkingHeight()I

    move-result v2

    int-to-float v2, v2

    sget v3, Lcom/miui/home/launcher/DeviceConfig;->sScreenScaleRatio:F

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v3, v4, v3

    mul-float/2addr v2, v3

    sub-float/2addr v4, v0

    mul-float/2addr v2, v4

    float-to-int v0, v2

    .line 980
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isScreenOrientationLandscape()Z

    move-result v2

    if-nez v2, :cond_0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v0

    goto :goto_0

    :cond_0
    div-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    .line 982
    :goto_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getHotSeatsCellHeight()I

    move-result v0

    .line 983
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isShowSearchBar()Z

    move-result v2

    invoke-static {p0, v2}, Lcom/miui/home/launcher/DeviceConfig;->calcHotSeatsHeight(Landroid/content/Context;Z)I

    move-result v2

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getHotSeatsCellHeight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isShowSearchBar()Z

    move-result v3

    invoke-static {p0, v3}, Lcom/miui/home/launcher/DeviceConfig;->calcHotSeatsMarginTop(Landroid/content/Context;Z)I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    sub-int v0, v1, v0

    .line 984
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f0700e9

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr v0, p0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v0

    return v1
.end method

.method private static final calcGridSize(Landroid/content/Context;Z)V
    .locals 5

    .line 1137
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sStatusBarHeight:I

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getWorkspaceCellPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getWorkspaceCellPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 1138
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_0

    sget-object v1, Lcom/miui/home/launcher/DeviceConfig;->mActiveProfile:Lcom/miui/home/launcher/DeviceProfile;

    invoke-virtual {v1}, Lcom/miui/home/launcher/DeviceProfile;->getScreenWidth()I

    move-result v1

    div-int/2addr v1, v2

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/miui/home/launcher/DeviceConfig;->mActiveProfile:Lcom/miui/home/launcher/DeviceProfile;

    invoke-virtual {v1}, Lcom/miui/home/launcher/DeviceProfile;->getScreenWidth()I

    move-result v1

    .line 1139
    :goto_0
    sget-object v3, Lcom/miui/home/launcher/DeviceConfig;->mActiveProfile:Lcom/miui/home/launcher/DeviceProfile;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getWorkspaceCellPaddingSide()I

    move-result v4

    mul-int/2addr v4, v2

    sub-int/2addr v1, v4

    invoke-virtual {v3, v1}, Lcom/miui/home/launcher/DeviceProfile;->setCellWorkingWidth(I)V

    .line 1140
    sget-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sIsInMultiWindowMode:Z

    if-nez v1, :cond_1

    .line 1141
    sget-object v1, Lcom/miui/home/launcher/DeviceConfig;->mActiveProfile:Lcom/miui/home/launcher/DeviceProfile;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenHeight()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {v1, v3}, Lcom/miui/home/launcher/DeviceProfile;->setCellWorkingHeight(I)V

    goto :goto_1

    .line 1143
    :cond_1
    sget-object v1, Lcom/miui/home/launcher/DeviceConfig;->mActiveProfile:Lcom/miui/home/launcher/DeviceProfile;

    sget v3, Lcom/miui/home/launcher/DeviceConfig;->sMultiWindowModeLauncherHeight:I

    sub-int/2addr v3, v0

    invoke-virtual {v1, v3}, Lcom/miui/home/launcher/DeviceProfile;->setCellWorkingHeight(I)V

    .line 1145
    :goto_1
    invoke-static {p0, p1}, Lcom/miui/home/launcher/DeviceConfig;->loadCellsCountConfig(Landroid/content/Context;Z)V

    .line 1146
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->calcWorkspaceIndicatorMarginBottomInEditMode(Landroid/content/Context;)I

    move-result p1

    sput p1, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceIndicatorMarginBottomInEditMode:I

    .line 1147
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellWorkingHeight()I

    move-result p1

    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->sHotSeatsMarginBottom:Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/ChangeableValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr p1, v0

    const/4 v0, 0x0

    .line 1148
    invoke-static {p0, v0}, Lcom/miui/home/launcher/DeviceConfig;->calcHotSeatsHeight(Landroid/content/Context;Z)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/miui/home/launcher/DeviceConfig;->calcHotSeatsHeight(Landroid/content/Context;Z)I

    move-result v1

    sub-int/2addr v0, v1

    sub-int/2addr p1, v0

    sput p1, Lcom/miui/home/launcher/DeviceConfig;->sFolderWorkingHeight:I

    .line 1149
    sget p1, Lcom/miui/home/launcher/DeviceConfig;->sCellCountX:I

    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountY:I

    invoke-static {p1, v0}, Lcom/miui/home/launcher/DeviceConfig;->getCellSizeVal(II)Ljava/lang/String;

    move-result-object p1

    .line 1150
    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->getDatabaseNameBySuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/miui/home/launcher/DeviceConfig;->sLauncherDatabaseName:Ljava/lang/String;

    .line 1151
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->tryToMigrateDefaultDatabase(Landroid/content/Context;)V

    .line 1152
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->calculateHotseatMaxCount()I

    move-result p1

    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->setHotseatMaxCount(I)V

    .line 1153
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result p1

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x3

    :cond_2
    mul-int/2addr p1, v2

    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->setAllAppsRecommendCount(I)V

    .line 1154
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->loadWorkspaceIndicatorThumbnailHeight(Landroid/content/Context;)V

    .line 1155
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->calcSearchBarWidth(Landroid/content/Context;)I

    move-result p0

    sput p0, Lcom/miui/home/launcher/DeviceConfig;->sSearchBarWidth:I

    return-void
.end method

.method private static calcHotSeatsHeight(Landroid/content/Context;Z)I
    .locals 1

    .line 736
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p1, :cond_0

    .line 739
    invoke-static {}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->getInstance()Lcom/miui/home/launcher/common/LauncherIconSizeProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->getLauncherIconHeight()I

    move-result p1

    const v0, 0x7f07016f

    .line 740
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr p1, p0

    goto :goto_1

    .line 742
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isScreenOrientationLandscape()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 743
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->useNavigationBarLayoutMode()Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f07015d

    .line 744
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_1
    const p1, 0x7f07015c

    .line 745
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    .line 747
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->useNavigationBarLayoutMode()Z

    move-result p1

    if-eqz p1, :cond_3

    const p1, 0x7f07015e

    .line 748
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_3
    const p1, 0x7f07015b

    .line 749
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    :goto_0
    int-to-float p0, p0

    .line 751
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

    .line 714
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p1, :cond_0

    const p1, 0x7f0703eb

    .line 717
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 718
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->calcSearchBarMarginTop(Landroid/content/Context;)I

    move-result v0

    add-int/2addr p1, v0

    .line 719
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

    .line 725
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p1, :cond_0

    const p1, 0x7f070167

    .line 728
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const p1, 0x7f070166

    .line 730
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    :goto_0
    int-to-float p0, p0

    .line 732
    invoke-static {}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->getInstance()Lcom/miui/home/launcher/common/LauncherIconSizeProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->getHotSeatMarginScale()F

    move-result p1

    mul-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method public static calcIconSize(Landroid/content/res/Resources;)V
    .locals 3

    .line 449
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->useOldVersionIcons()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f07009e

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    .line 450
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->getInstance()Lcom/miui/home/launcher/common/LauncherIconSizeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->getLauncherIconWidth()I

    move-result v0

    :goto_0
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sIconWidth:I

    .line 451
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->useOldVersionIcons()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f07009b

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_1

    .line 452
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->getInstance()Lcom/miui/home/launcher/common/LauncherIconSizeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->getLauncherIconHeight()I

    move-result v0

    :goto_1
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sIconHeight:I

    .line 453
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sIconWidth:I

    const v1, 0x7f07016e

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sApplicationIconContainerWidth:I

    .line 455
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sIconWidth:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sHotseatIconContainerWidth:I

    .line 456
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sIconHeight:I

    const v1, 0x7f07016f

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr v0, p0

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sApplicationIconContainerHeight:I

    return-void
.end method

.method private static calcIndicatorMarginBottomInEditMode(Landroid/content/Context;)I
    .locals 4

    .line 989
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceIndicatorMarginBottom:I

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellWorkingHeight()I

    move-result v1

    int-to-float v1, v1

    sget v2, Lcom/miui/home/launcher/DeviceConfig;->sScreenScaleRatio:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, v2

    mul-float/2addr v1, v2

    invoke-static {}, Lcom/miui/home/launcher/CellScreen;->getEditimgAnimPivotyRatio()F

    move-result v2

    sub-float/2addr v3, v2

    mul-float/2addr v1, v3

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 991
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0700fe

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->getDipPixelSize(F)I

    move-result v1

    add-int/2addr p0, v1

    .line 993
    sget v1, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceIndicatorMarginBottom:I

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private static final calcLauncherHeightWhenMultiWindow(Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 2

    .line 490
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    const v1, 0x7f07043f

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    add-int/2addr v0, p1

    const-string p1, "window"

    .line 491
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 492
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 493
    invoke-virtual {p0, p1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 494
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

    .line 688
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0703ed

    const v2, 0x7f0703ee

    if-eqz p1, :cond_0

    .line 691
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result p0

    .line 692
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    .line 693
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    sub-int v1, v0, p0

    .line 694
    invoke-static {v1, p1, v0}, Lcom/miui/home/launcher/common/Utilities;->boundToRange(III)I

    move-result v0

    if-ge v1, p1, :cond_2

    const-string p1, "Launcher.DeviceConfig"

    .line 697
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "please check navigationBar height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 700
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isShowNavigationBar()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 701
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    move v0, p0

    goto :goto_0

    .line 702
    :cond_1
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    move v0, p0

    :cond_2
    :goto_0
    int-to-float p0, v0

    .line 704
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

    .line 708
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0703ef

    .line 709
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    .line 710
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

    .line 959
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 960
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getWorkspaceCellPaddingSide()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellWidth()I

    move-result v1

    const v2, 0x7f07009d

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    const v1, 0x7f070169

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

.method private static calcWorkspaceIndicatorMarginBottomInEditMode(Landroid/content/Context;)I
    .locals 3

    .line 964
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 966
    sget-object p0, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceCellPaddingBottom:Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-virtual {p0}, Lcom/miui/home/launcher/common/ChangeableValue;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenHeight()I

    move-result v0

    int-to-float v0, v0

    sget v1, Lcom/miui/home/launcher/DeviceConfig;->sScreenScaleRatio:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    mul-float/2addr v0, v1

    invoke-static {}, Lcom/miui/home/launcher/CellScreen;->getEditimgAnimPivotyRatio()F

    move-result v1

    sub-float/2addr v2, v1

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    .line 967
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 968
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->calcFoldIndicatorMarginBottomInEditMode(Landroid/content/Context;)I

    move-result p0

    return p0

    .line 970
    :cond_1
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->calcIndicatorMarginBottomInEditMode(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method private static calculateHotseatMaxCount()I
    .locals 3

    .line 1159
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceType()Lcom/miui/home/launcher/DeviceType;

    move-result-object v0

    sget-object v1, Lcom/miui/home/launcher/DeviceType;->FOLDABLE_DEVICE:Lcom/miui/home/launcher/DeviceType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    return v0

    .line 1162
    :cond_0
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sScreenSmallestWidth:I

    sget v1, Lcom/miui/home/launcher/DeviceConfig;->sHotseatIconContainerWidth:I

    div-int/2addr v0, v1

    .line 1163
    sget v1, Lcom/miui/home/launcher/DeviceConfig;->sCellCountX:I

    div-int v2, v0, v1

    add-int/2addr v1, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public static checkDarkenWallpaperSupport(Landroid/content/Context;)Z
    .locals 7

    .line 2287
    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_MIUI_12:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2289
    :cond_0
    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_P:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 2291
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.android.systemui"

    .line 2292
    invoke-virtual {p0, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 2293
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

    .line 2295
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_2
    return v2
.end method

.method public static checkIsAccessibilityEnabledAsync()V
    .locals 1

    .line 1937
    sget-object v0, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$2GeFyz3nMKubd-9nXPNGhyrdeQ4;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$2GeFyz3nMKubd-9nXPNGhyrdeQ4;

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static checkIsInSnapShotMode()V
    .locals 2

    .line 1893
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

    .line 1978
    sget-object v0, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$dLWxJdj8Zo4InhhGIEmYWidwUsM;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$dLWxJdj8Zo4InhhGIEmYWidwUsM;

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static checkIsSupportMultiWindowMode(Landroid/content/Context;)V
    .locals 1

    .line 828
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$J90TJMwzFOho0hj2RPIW5gvs8Vk;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$J90TJMwzFOho0hj2RPIW5gvs8Vk;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static checkIsSupportSmallWindow()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.view.Display"

    .line 2320
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "hasSmallFreeformFeature"

    .line 2321
    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 2322
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

    .line 2324
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public static checkIsTetheringSupported()V
    .locals 1

    .line 2003
    sget-object v0, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$9R3IozFxgbwmVH-NTsWOjUFHwFw;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$9R3IozFxgbwmVH-NTsWOjUFHwFw;

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static checkSearchBarSupport(Landroid/content/Context;)V
    .locals 1

    .line 947
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->isHomeSupportSearchBar(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 948
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->isGlobalSearchSupportSearchBar(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 949
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

    .line 512
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->sSettingTitle:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 513
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->sCheckTitleRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 514
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->sCheckTitleRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static checkSystemUIFsgVersion()V
    .locals 1

    .line 2013
    sget-object v0, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$24EKnG26AjOng3n6JCDT3Q9lRJE;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$24EKnG26AjOng3n6JCDT3Q9lRJE;

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static clearBackupDB(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 1610
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

    .line 1611
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 1614
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public static confirmCellsCount(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x1

    .line 1343
    invoke-static {p0, v0}, Lcom/miui/home/launcher/DeviceConfig;->removeInvalidateDatabase(Landroid/content/Context;Z)V

    .line 1344
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

    .line 1345
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "miui_home_screen_cells_size"

    invoke-static {p0, v1, v0}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->putStringToSystem(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static doLauncherHavePaddingTopForStatusBarAndNotch()Z
    .locals 1

    .line 2103
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->keepStatusBarShowingForBetterPerformance()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isShowNotch()Z

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

.method public static final finishMigratingDB()V
    .locals 1

    const/4 v0, -0x1

    .line 1354
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sCellXMigratedFrom:I

    .line 1355
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sCellYMigratedFrom:I

    return-void
.end method

.method public static getAllAppRecommendDividerPaddingBottom()I
    .locals 1

    .line 2210
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sAllAppsDividerBottom:I

    return v0
.end method

.method public static getAllAppRecommendDividerPaddingTop()I
    .locals 1

    .line 2206
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sAllAppsDividerTop:I

    return v0
.end method

.method public static getAllAppsBackgroundAlpha()I
    .locals 1

    .line 2182
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sAllAppsBackgroundAlpha:I

    return v0
.end method

.method public static getAllAppsCellHeight()I
    .locals 1

    .line 2149
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sAllAppsCellHeight:I

    return v0
.end method

.method public static getAllAppsColorMode()Lcom/miui/home/launcher/allapps/AllAppsColorMode;
    .locals 1

    .line 2178
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->sAllAppsColorMode:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    return-object v0
.end method

.method public static getAllAppsRecommendCount()I
    .locals 1

    .line 1375
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sRecommendAppsCount:I

    return v0
.end method

.method public static getApplicationIconContainerHeight()I
    .locals 1

    .line 1099
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sApplicationIconContainerHeight:I

    return v0
.end method

.method public static getApplicationIconContainerWidth()I
    .locals 1

    .line 1103
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sApplicationIconContainerWidth:I

    return v0
.end method

.method private static final getBetterDBForMigrate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1721
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1722
    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    .line 1723
    new-array v3, v2, [I

    .line 1724
    new-array v2, v2, [I

    .line 1725
    invoke-static {v0, v3}, Lcom/miui/home/launcher/ScreenUtils;->parseCellsSize(Ljava/lang/String;[I)Z

    move-result v0

    .line 1726
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

    .line 1734
    aget v1, v3, v0

    aget v4, v2, v0

    if-ne v1, v4, :cond_6

    const/4 v0, 0x1

    .line 1737
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

    .line 1739
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

    .line 1742
    :cond_4
    aget v0, v3, v0

    sget v1, Lcom/miui/home/launcher/DeviceConfig;->sCellCountY:I

    if-ge v0, v1, :cond_5

    goto :goto_0

    :cond_5
    move-object p0, p1

    :goto_0
    return-object p0

    .line 1747
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

    .line 1749
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

    .line 1752
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

.method private static getCellConfigXSpKey()Ljava/lang/String;
    .locals 1

    .line 1296
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isNoWordModel()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "pref_key_cell_x_no_word"

    goto :goto_0

    :cond_0
    const-string v0, "pref_key_cell_x"

    :goto_0
    return-object v0
.end method

.method private static getCellConfigYSpKey()Ljava/lang/String;
    .locals 1

    .line 1300
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isNoWordModel()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "pref_key_cell_y_no_word"

    goto :goto_0

    :cond_0
    const-string v0, "pref_key_cell_y"

    :goto_0
    return-object v0
.end method

.method private static final getCellCountSuffix(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1759
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 1762
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDatabaseNamePrefix()Ljava/lang/String;

    move-result-object v0

    .line 1763
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1764
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

    .line 1367
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountX:I

    return v0
.end method

.method public static final getCellCountXDef(Landroid/content/Context;)I
    .locals 0

    .line 1399
    sget p0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountXDef:I

    return p0
.end method

.method public static getCellCountXDrawerMode()I
    .locals 1

    .line 1371
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountXDrawerMode:I

    return v0
.end method

.method public static getCellCountXMax(Landroid/content/Context;)I
    .locals 0

    .line 1391
    sget p0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountXMax:I

    return p0
.end method

.method public static getCellCountXMin(Landroid/content/Context;)I
    .locals 0

    .line 1383
    sget p0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountXMin:I

    return p0
.end method

.method public static final getCellCountY()I
    .locals 1

    .line 1379
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountY:I

    return v0
.end method

.method public static final getCellCountYDef(Landroid/content/Context;)I
    .locals 0

    .line 1414
    sget p0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountYDef:I

    return p0
.end method

.method public static getCellCountYMax(Landroid/content/Context;)I
    .locals 0

    .line 1395
    sget p0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountYMax:I

    return p0
.end method

.method public static getCellCountYMin(Landroid/content/Context;)I
    .locals 0

    .line 1387
    sget p0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountYMin:I

    return p0
.end method

.method public static final getCellHeight()I
    .locals 1

    .line 1426
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveProfile:Lcom/miui/home/launcher/DeviceProfile;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DeviceProfile;->getCellHeight()I

    move-result v0

    return v0
.end method

.method public static getCellHorizontalSpacing()I
    .locals 1

    .line 2067
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sCellHorizontalSpacing:I

    return v0
.end method

.method public static final getCellSizeVal(II)Ljava/lang/String;
    .locals 1

    .line 1430
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

    .line 2071
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sCellVerticalSpacing:I

    return v0
.end method

.method public static final getCellWidth()I
    .locals 1

    .line 1422
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveProfile:Lcom/miui/home/launcher/DeviceProfile;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DeviceProfile;->getCellWidth()I

    move-result v0

    return v0
.end method

.method private static getCellWorkingHeight()I
    .locals 1

    .line 2344
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveProfile:Lcom/miui/home/launcher/DeviceProfile;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DeviceProfile;->getCellWorkingHeight()I

    move-result v0

    return v0
.end method

.method private static getCellWorkingWidth()I
    .locals 1

    .line 2348
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveProfile:Lcom/miui/home/launcher/DeviceProfile;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DeviceProfile;->getCellWorkingWidth()I

    move-result v0

    return v0
.end method

.method public static getClosingAppDefaultDisappearRect()Landroid/graphics/Rect;
    .locals 6

    const-string v0, "Launcher.DeviceConfig"

    .line 2352
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getClosingAppDefaultDisappearRect, Rotation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getRotation()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2353
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getRotation()I

    move-result v0

    invoke-static {v0}, Lcom/miui/home/recents/util/RotationHelper;->isLandscapeRotation(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2354
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenHeight()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v1

    :goto_0
    if-eqz v0, :cond_1

    .line 2355
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v0

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenHeight()I

    move-result v0

    .line 2356
    :goto_1
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    int-to-float v1, v1

    const/high16 v3, 0x41700000    # 15.0f

    div-float v3, v1, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    int-to-float v0, v0

    const/high16 v5, 0x40400000    # 3.0f

    div-float/2addr v0, v5

    div-float/2addr v3, v4

    sub-float v4, v1, v3

    float-to-int v4, v4

    .line 2360
    iput v4, v2, Landroid/graphics/Rect;->left:I

    sub-float v4, v0, v3

    float-to-int v4, v4

    .line 2361
    iput v4, v2, Landroid/graphics/Rect;->top:I

    add-float/2addr v1, v3

    float-to-int v1, v1

    .line 2362
    iput v1, v2, Landroid/graphics/Rect;->right:I

    add-float/2addr v0, v3

    float-to-int v0, v0

    .line 2363
    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    .line 2364
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getRotation()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformCoordinate(IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentDefaultScreenId()J
    .locals 2

    .line 2046
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/LauncherMode;->getCurrentDefaultScreenId()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getCurrentDefaultScreenIdFromPreference()J
    .locals 4

    .line 2050
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

    .line 1418
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->sCurrentScreenCells:Ljava/lang/String;

    return-object v0
.end method

.method public static getDatabaseName()Ljava/lang/String;
    .locals 1

    .line 1454
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->sLauncherDatabaseName:Ljava/lang/String;

    return-object v0
.end method

.method public static final getDatabaseNameBySuffix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1434
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

.method public static getDatabaseNamePrefix()Ljava/lang/String;
    .locals 3

    const-string v0, ""

    .line 1439
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "_rotatable"

    .line 1442
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

.method public static getDefaultWorkspaceXmlId(Landroid/content/Context;Lcom/miui/home/launcher/allapps/LauncherMode;)I
    .locals 1

    .line 1458
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    const p0, 0x7f130007

    return p0

    .line 1462
    :cond_0
    invoke-static {p0, p1}, Lcom/miui/home/launcher/DeviceConfig;->calcDefaultXmlID(Landroid/content/Context;Lcom/miui/home/launcher/allapps/LauncherMode;)I

    move-result p0

    if-eqz p0, :cond_1

    return p0

    .line 1467
    :cond_1
    invoke-static {p1}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isElderlyManMode(Lcom/miui/home/launcher/allapps/LauncherMode;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 1468
    sget-boolean p0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p0, :cond_2

    const p0, 0x7f130011

    goto :goto_0

    :cond_2
    const p0, 0x7f130021

    :goto_0
    return p0

    .line 1472
    :cond_3
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result p0

    const/4 p1, 0x4

    if-ge p0, p1, :cond_4

    const p0, 0x7f13000d

    return p0

    .line 1476
    :cond_4
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->obtainDefaultXmlID()I

    move-result p0

    return p0
.end method

.method public static declared-synchronized getDesignedDefaultScreenId(Landroid/content/Context;)J
    .locals 7

    const-class v0, Lcom/miui/home/launcher/DeviceConfig;

    monitor-enter v0

    .line 1787
    :try_start_0
    sget-wide v1, Lcom/miui/home/launcher/DeviceConfig;->sDesignedDefaultScreenId:J

    sget-wide v3, Lcom/miui/home/launcher/DeviceConfig;->INVALIDATE_DEFAULT_SCREEN_ID:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 1788
    sget-wide v1, Lcom/miui/home/launcher/DeviceConfig;->sDesignedDefaultScreenId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-wide v1

    .line 1791
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

    .line 1792
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 1793
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 1795
    :cond_1
    :goto_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    .line 1796
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v3, :cond_4

    :cond_2
    const/4 v5, 0x1

    if-eq v4, v5, :cond_4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    goto :goto_0

    .line 1800
    :cond_3
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "default"

    .line 1801
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1802
    sget-object v4, Lcom/miui/home/R$styleable;->Favorite:[I

    invoke-virtual {p0, v2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    const/16 v5, 0xd

    .line 1803
    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sput-wide v5, Lcom/miui/home/launcher/DeviceConfig;->sDesignedDefaultScreenId:J

    .line 1804
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .line 1807
    :cond_4
    sget-wide v1, Lcom/miui/home/launcher/DeviceConfig;->sDesignedDefaultScreenId:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-wide v1

    .line 1811
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
    .locals 1

    .line 1015
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveProfile:Lcom/miui/home/launcher/DeviceProfile;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DeviceProfile;->getDeviceHeight()I

    move-result v0

    return v0
.end method

.method public static getDeviceType()Lcom/miui/home/launcher/DeviceType;
    .locals 2

    .line 2413
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_0

    .line 2414
    sget-object v0, Lcom/miui/home/launcher/DeviceType;->PAD:Lcom/miui/home/launcher/DeviceType;

    return-object v0

    :cond_0
    const-string v0, "persist.sys.muiltdisplay_type"

    const/4 v1, 0x0

    .line 2415
    invoke-static {v0, v1}, Lcom/miui/launcher/utils/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2416
    sget-object v0, Lcom/miui/home/launcher/DeviceType;->FOLDABLE_DEVICE:Lcom/miui/home/launcher/DeviceType;

    return-object v0

    .line 2418
    :cond_1
    sget-object v0, Lcom/miui/home/launcher/DeviceType;->PHONE:Lcom/miui/home/launcher/DeviceType;

    return-object v0
.end method

.method public static final getDeviceWidth()I
    .locals 1

    .line 1011
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveProfile:Lcom/miui/home/launcher/DeviceProfile;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DeviceProfile;->getDeviceWidth()I

    move-result v0

    return v0
.end method

.method private static getDimenFromPkgResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    .line 2241
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    const-string v1, "dimen"

    .line 2242
    invoke-virtual {p0, p2, v1, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    .line 2244
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2247
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return v0
.end method

.method public static getDragIconScaleRatio()F
    .locals 1

    .line 933
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sDragIconScaleRatio:F

    return v0
.end method

.method public static final getEditModeTopMenuMarginTop()I
    .locals 2

    .line 1122
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsInMultiWindowMode:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0700eb

    goto :goto_0

    .line 1125
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->doLauncherHavePaddingTopForStatusBarAndNotch()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0700ec

    goto :goto_0

    :cond_1
    const v0, 0x7f0700ea

    .line 1129
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

    .line 2153
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sFolderCellHeight:I

    return v0
.end method

.method public static getFolderCellMaxWidth()I
    .locals 1

    .line 2157
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sFolderCellMaxWidth:I

    return v0
.end method

.method public static getGlobalSwipeUpPackage(Landroid/content/Context;)I
    .locals 2

    .line 1889
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "launchMiBrowserWhileSwipe"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getHotSeatsCellContentHeight()I
    .locals 1

    .line 1173
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveProfile:Lcom/miui/home/launcher/DeviceProfile;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DeviceProfile;->getHotSeatsCellContentHeight()I

    move-result v0

    return v0
.end method

.method public static getHotSeatsCellHeight()I
    .locals 1

    .line 1292
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveProfile:Lcom/miui/home/launcher/DeviceProfile;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DeviceProfile;->getHotSeatsCellHeight()I

    move-result v0

    return v0
.end method

.method public static getHotSeatsCellWidth()I
    .locals 1

    .line 1289
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveProfile:Lcom/miui/home/launcher/DeviceProfile;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DeviceProfile;->getHotSeatsCellWidth()I

    move-result v0

    return v0
.end method

.method public static getHotSeatsHeight()I
    .locals 1

    .line 676
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

    .line 672
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->sHotSeatsMarginBottom:Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/ChangeableValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getHotseatMaxCount()I
    .locals 1

    .line 1446
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sHotseatMaxCount:I

    return v0
.end method

.method public static final getIconHeight()I
    .locals 1

    .line 1095
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sIconHeight:I

    return v0
.end method

.method public static final getIconWidth()I
    .locals 1

    .line 1091
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sIconWidth:I

    return v0
.end method

.method public static getIterateDirection(Z)I
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    .line 797
    sget-boolean p0, Lcom/miui/home/launcher/DeviceConfig;->sIsLayoutRtl:Z

    if-eqz p0, :cond_0

    move v0, v1

    :cond_0
    return v0

    .line 799
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

    .line 296
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sLastRotation:I

    return v0
.end method

.method public static final getMiuiTitleHeight()I
    .locals 3

    .line 1522
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellHeight()I

    move-result v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellVerticalSpacing()I

    move-result v1

    add-int/2addr v0, v1

    .line 1523
    invoke-static {}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->getInstance()Lcom/miui/home/launcher/common/LauncherIconSizeProvider;

    move-result-object v1

    .line 1524
    invoke-virtual {v1}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->getLauncherIconHeight()I

    move-result v1

    sget v2, Lcom/miui/home/launcher/DeviceConfig;->sMiuiWidgetPaddingTop:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method public static final getMiuiWidgetPaddingTop()I
    .locals 1

    .line 1518
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sMiuiWidgetPaddingTop:I

    return v0
.end method

.method public static final getMiuiWidgetSizeSpec(IIZ)J
    .locals 2

    .line 1529
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->sMiuiWidgetSizeSpec:Lcom/miui/home/launcher/widget/MiuiWidgetSizeSpec;

    sget-object v1, Lcom/miui/home/launcher/DeviceConfig;->mActiveProfile:Lcom/miui/home/launcher/DeviceProfile;

    invoke-interface {v0, v1, p0, p1, p2}, Lcom/miui/home/launcher/widget/MiuiWidgetSizeSpec;->getMiuiWidgetSizeSpec(Lcom/miui/home/launcher/DeviceProfile;IIZ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final getMiuiWidgetSizeSpec(Lcom/miui/home/launcher/DeviceProfile;IIZ)J
    .locals 1

    .line 1533
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->sMiuiWidgetSizeSpec:Lcom/miui/home/launcher/widget/MiuiWidgetSizeSpec;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/miui/home/launcher/widget/MiuiWidgetSizeSpec;->getMiuiWidgetSizeSpec(Lcom/miui/home/launcher/DeviceProfile;IIZ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getNetWorkConnectedString()Ljava/lang/String;
    .locals 1

    .line 1999
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

    .line 2042
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->doLauncherHavePaddingTopForStatusBarAndNotch()Z

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
    .locals 2

    .line 2254
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isNotch()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "com.android.systemui"

    const-string v1, "notch_height"

    .line 2257
    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/DeviceConfig;->getDimenFromPkgResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static final getOptimalDB(Landroid/content/Context;Lcom/miui/home/launcher/allapps/LauncherMode;)Ljava/io/File;
    .locals 5

    const/4 v0, 0x0

    .line 1693
    :try_start_0
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/allapps/LauncherMode;->getLauncherDatabaseDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 1694
    new-instance v2, Lcom/miui/home/launcher/DeviceConfig$4;

    invoke-direct {v2}, Lcom/miui/home/launcher/DeviceConfig$4;-><init>()V

    invoke-virtual {v1, v2}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1701
    array-length v2, v1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    move-object v3, v0

    .line 1704
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_1

    .line 1705
    aget-object v4, v1, v2

    invoke-static {v3, v4}, Lcom/miui/home/launcher/DeviceConfig;->getBetterDBForMigrate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "Launcher.DeviceConfig"

    .line 1707
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "find optimal db "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1708
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    .line 1711
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

    .line 1713
    invoke-static {p1, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public static getQuickCallCellVerticalSpacing()I
    .locals 1

    .line 2075
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sQuickCallCellVerticalSpacing:I

    return v0
.end method

.method public static getQuickEditScreenRatio()F
    .locals 1

    .line 937
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sQuickEditScreenRatio:F

    return v0
.end method

.method public static getRealScreenHeight()I
    .locals 1

    .line 1027
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveProfile:Lcom/miui/home/launcher/DeviceProfile;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DeviceProfile;->getRealScreenHeight()I

    move-result v0

    return v0
.end method

.method public static final getRecommendGridPaddingBottom()I
    .locals 1

    .line 1133
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

    .line 300
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sRotation:I

    return v0
.end method

.method public static final getScreenDensity()F
    .locals 1

    .line 1039
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sScreenDensity:F

    return v0
.end method

.method public static getScreenDensityDpi()I
    .locals 1

    .line 1043
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sScreenDensityDpi:I

    return v0
.end method

.method public static final getScreenHeight()I
    .locals 1

    .line 1023
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveProfile:Lcom/miui/home/launcher/DeviceProfile;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DeviceProfile;->getScreenHeight()I

    move-result v0

    return v0
.end method

.method public static getScreenLongSize()I
    .locals 1

    .line 1031
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveProfile:Lcom/miui/home/launcher/DeviceProfile;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DeviceProfile;->getScreenLongSize()I

    move-result v0

    return v0
.end method

.method public static final getScreenWidth()I
    .locals 1

    .line 1019
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveProfile:Lcom/miui/home/launcher/DeviceProfile;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DeviceProfile;->getScreenWidth()I

    move-result v0

    return v0
.end method

.method public static getSearchBarHolderVerticalPadding(Landroid/content/Context;)I
    .locals 1

    .line 2165
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isShowNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2166
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070060

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    .line 2167
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f07005f

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static getSearchBarLightThreshold()F
    .locals 1

    .line 2161
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sSearchBarLightThreshold:F

    return v0
.end method

.method public static getSearchBarMarginBottom()I
    .locals 1

    .line 668
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

    .line 626
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "key_home_screen_search_bar_source"

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSearchBarStyle(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 664
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "key_home_screen_search_bar_style"

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSearchBarUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 660
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "key_home_screen_search_bar_url"

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSearchBarWidth()I
    .locals 1

    .line 680
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sSearchBarWidth:I

    return v0
.end method

.method public static getSearchBarWidthDelta()I
    .locals 1

    .line 684
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sSearchBarWidthDelta:I

    return v0
.end method

.method public static getSettingTitle()Ljava/lang/String;
    .locals 2

    .line 508
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

    .line 527
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.android.settings"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "home_title"

    const-string v1, "string"

    const-string v2, "com.android.settings"

    .line 528
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 530
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "Launcher.DeviceConfig"

    const-string v1, "getSettingTitle failed"

    .line 533
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getShortcutMenuDisappearThreshold()I
    .locals 1

    .line 1117
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sShortcutMenuDisappearThreshold:I

    return v0
.end method

.method public static final getStatusBarHeight()I
    .locals 1

    .line 1111
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sStatusBarHeight:I

    return v0
.end method

.method public static getSystemUIFsgVersion()I
    .locals 1

    .line 2020
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->sSystemuiFsgVersion:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public static getThemeValues()Lmiui/content/res/ThemeValues;
    .locals 1

    .line 776
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->sThemeValues:Lmiui/content/res/ThemeValues;

    return-object v0
.end method

.method public static getWidgetCellDefaultHeight()I
    .locals 1

    .line 2063
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellDefaultHeight:I

    return v0
.end method

.method public static getWidgetCellDefaultWidth()I
    .locals 1

    .line 2059
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellDefaultWidth:I

    return v0
.end method

.method public static final getWidgetSpanX(I)I
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1509
    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->getDipPixelSize(F)I

    move-result v0

    add-int/2addr p0, v0

    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellMeasureWidth:I

    div-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x1

    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountX:I

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static final getWidgetSpanY(I)I
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1514
    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->getDipPixelSize(F)I

    move-result v0

    add-int/2addr p0, v0

    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellMeasureHeight:I

    div-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x1

    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountY:I

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static final getWorkspaceCellPaddingBottom()I
    .locals 1

    .line 1087
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

    .line 1067
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceCellPaddingSide:I

    return v0
.end method

.method public static final getWorkspaceCellPaddingTop()I
    .locals 1

    .line 1071
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsInMultiWindowMode:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1072
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceCellPaddingTopMultiWindow:I

    return v0

    .line 1074
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getWorkspaceNormalModeCellPaddingTop()I

    move-result v0

    return v0
.end method

.method public static getWorkspaceIndicatorMarginBottom()I
    .locals 1

    .line 1772
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceIndicatorMarginBottom:I

    return v0
.end method

.method public static getWorkspaceIndicatorMarginBottomInEditMode()I
    .locals 1

    .line 1776
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceIndicatorMarginBottomInEditMode:I

    return v0
.end method

.method public static getWorkspaceIndicatorThumbnailHeight()I
    .locals 1

    .line 1003
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceIndicatorThumbnailHeight:I

    return v0
.end method

.method public static final getWorkspaceInvalidateEdgeWidth()I
    .locals 1

    .line 1107
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceInvalidateEdgeWidth:I

    return v0
.end method

.method private static final getWorkspaceNormalModeCellPaddingTop()I
    .locals 1

    .line 1079
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isShowNotch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1080
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceCellPaddingTopNotch:I

    return v0

    .line 1082
    :cond_0
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceCellPaddingTop:I

    return v0
.end method

.method public static getWorkspacePaddingTop(Landroid/content/Context;)F
    .locals 1

    .line 1780
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsInMultiWindowMode:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070438

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    :goto_0
    return p0
.end method

.method private static getXmlId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    .line 1334
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

    .line 1335
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static hasNavigationBar()Z
    .locals 8

    .line 539
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x1c

    if-le v0, v3, :cond_0

    :try_start_0
    const-string v0, "android.view.WindowManagerGlobal"

    .line 541
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v3, "getWindowManagerService"

    .line 542
    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 543
    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 544
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "hasNavigationBar"

    const/4 v4, 0x1

    .line 545
    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v2

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 546
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v3

    .line 547
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "getDisplayId"

    .line 548
    new-array v7, v2, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 549
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

    .line 551
    invoke-static {v1, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    :try_start_1
    const-string v0, "android.view.WindowManagerGlobal"

    .line 555
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v3, "getWindowManagerService"

    .line 556
    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 557
    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 558
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "hasNavigationBar"

    .line 559
    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 560
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

    .line 562
    invoke-static {v1, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v2
.end method

.method private initDeviceProfile(Landroid/content/Context;)V
    .locals 4

    .line 460
    new-instance v0, Lcom/miui/home/launcher/DeviceProfile$Builder;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/DeviceProfile$Builder;-><init>(Landroid/content/Context;)V

    .line 461
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v2, "window"

    .line 462
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 463
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 464
    invoke-virtual {v2, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 466
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 467
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 468
    sput v2, Lcom/miui/home/launcher/DeviceConfig;->sScreenSmallestWidth:I

    .line 469
    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/DeviceProfile$Builder;->setScreenSize(II)Lcom/miui/home/launcher/DeviceProfile$Builder;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/miui/home/launcher/DeviceProfile$Builder;->setDeviceConfig(Lcom/miui/home/launcher/DeviceConfig;)Lcom/miui/home/launcher/DeviceProfile$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/DeviceProfile$Builder;->build()Lcom/miui/home/launcher/DeviceProfile;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/home/launcher/DeviceConfig;->landscapeProfile:Lcom/miui/home/launcher/DeviceProfile;

    .line 470
    invoke-virtual {v0, v2, v1}, Lcom/miui/home/launcher/DeviceProfile$Builder;->setScreenSize(II)Lcom/miui/home/launcher/DeviceProfile$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/DeviceProfile$Builder;->setDeviceConfig(Lcom/miui/home/launcher/DeviceConfig;)Lcom/miui/home/launcher/DeviceProfile$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/DeviceProfile$Builder;->build()Lcom/miui/home/launcher/DeviceProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/DeviceConfig;->portraitProfile:Lcom/miui/home/launcher/DeviceProfile;

    .line 471
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceProfile(Landroid/content/Context;)Lcom/miui/home/launcher/DeviceProfile;

    move-result-object p1

    sput-object p1, Lcom/miui/home/launcher/DeviceConfig;->mActiveProfile:Lcom/miui/home/launcher/DeviceProfile;

    return-void
.end method

.method public static is720Mode()Z
    .locals 1

    .line 2038
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIs720Mode:Z

    return v0
.end method

.method public static declared-synchronized isAccessibilityEnabled()Z
    .locals 2

    const-class v0, Lcom/miui/home/launcher/DeviceConfig;

    monitor-enter v0

    .line 1929
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

    .line 1905
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsAppStoreEnabled:Z

    return v0
.end method

.method public static isAssistantCTAAgree(Landroid/content/Context;)Z
    .locals 2

    .line 1839
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "com.miui.personalassistant.preferences.key_cta_welcome"

    const/4 v1, 0x1

    .line 1840
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eq v1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isCellSizeChangedByTheme(Landroid/content/Context;Lcom/miui/home/launcher/compat/LauncherCellCount;)Z
    .locals 7

    .line 2374
    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountXDef(Landroid/content/Context;)I

    move-result v0

    .line 2375
    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountXMax(Landroid/content/Context;)I

    move-result v1

    .line 2376
    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountXMin(Landroid/content/Context;)I

    move-result v2

    .line 2377
    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountYDef(Landroid/content/Context;)I

    move-result v3

    .line 2378
    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountYMin(Landroid/content/Context;)I

    move-result v4

    .line 2379
    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountYMax(Landroid/content/Context;)I

    move-result v5

    .line 2380
    sget-boolean v6, Lcom/miui/home/launcher/DeviceConfig;->IS_SB_BUILD:Z

    if-nez v6, :cond_1

    sget-boolean v6, Lcom/miui/home/launcher/DeviceConfig;->IS_KDDI_BUILD:Z

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    .line 2382
    :cond_1
    :goto_0
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isNoWordModel()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->isThemeCoverCellConfig:Z

    if-nez v2, :cond_2

    move v4, v5

    .line 2385
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPocoLauncher()Z

    move-result v2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_5

    .line 2386
    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountXDef(Landroid/content/Context;)I

    move-result v0

    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountXMax(Landroid/content/Context;)I

    move-result v1

    if-ne v0, v1, :cond_4

    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountYDef(Landroid/content/Context;)I

    move-result v0

    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountYMax(Landroid/content/Context;)I

    move-result v1

    if-eq v0, v1, :cond_3

    goto :goto_1

    :cond_3
    const-string v0, "pref_key_use_theme_cells_size"

    .line 2390
    invoke-static {p1, v0, v5}, Lcom/miui/home/launcher/common/PreferenceUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_2

    :cond_4
    :goto_1
    const-string v0, "pref_key_use_theme_cells_size"

    .line 2388
    invoke-static {p1, v0, v6}, Lcom/miui/home/launcher/common/PreferenceUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    move v0, v6

    goto :goto_4

    :cond_5
    if-ne v0, v1, :cond_7

    if-eq v3, v4, :cond_6

    goto :goto_3

    :cond_6
    const-string v0, "pref_key_use_theme_cells_size"

    .line 2398
    invoke-static {p1, v0, v5}, Lcom/miui/home/launcher/common/PreferenceUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    :goto_2
    move v0, v5

    goto :goto_4

    :cond_7
    :goto_3
    const-string v0, "pref_key_use_theme_cells_size"

    .line 2396
    invoke-static {p1, v0, v6}, Lcom/miui/home/launcher/common/PreferenceUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    move v0, v6

    .line 2400
    :goto_4
    instance-of v1, p2, Lcom/miui/home/launcher/compat/LauncherCellCountCompatNoWord;

    if-eqz v1, :cond_a

    if-nez v0, :cond_8

    .line 2401
    sget-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->isThemeCoverCellConfig:Z

    if-eqz v1, :cond_9

    :cond_8
    move v5, v6

    .line 2402
    :cond_9
    move-object v1, p2

    check-cast v1, Lcom/miui/home/launcher/compat/LauncherCellCountCompatNoWord;

    .line 2403
    invoke-virtual {v1}, Lcom/miui/home/launcher/compat/LauncherCellCountCompatNoWord;->getLoadResCellConfig()Z

    move-result v2

    if-eq v2, v5, :cond_a

    .line 2404
    invoke-virtual {v1, v5}, Lcom/miui/home/launcher/compat/LauncherCellCountCompatNoWord;->setLoadResCellConfig(Z)V

    .line 2406
    invoke-static {p2, p1}, Lcom/miui/home/launcher/DeviceConfig;->loadCellConfigFromController(Lcom/miui/home/launcher/compat/LauncherCellCount;Landroid/content/Context;)V

    :cond_a
    return v0
.end method

.method public static isCotaOrangeDevice()Z
    .locals 3

    const-string v0, "OR"

    const-string v1, "persist.sys.cota.carrier"

    const-string v2, ""

    .line 2340
    invoke-static {v1, v2}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getStringFromSystemProperites(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2339
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isCurrentThemeSupportSearchBar(Landroid/content/Context;)Z
    .locals 2

    .line 618
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "key_home_screen_search_bar"

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

.method public static isDarkMode()Z
    .locals 1

    .line 2079
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsDarkMode:Z

    return v0
.end method

.method public static isDarkModeChanged()Z
    .locals 4

    .line 2083
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    .line 2084
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2085
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

    .line 2086
    :goto_0
    sget-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sIsDarkMode:Z

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    .line 2087
    :goto_1
    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsDarkMode:Z

    return v2
.end method

.method public static isDarkenWholeWallpaper(Landroid/content/Context;)Z
    .locals 2

    .line 2307
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sSupportDarkenWallpaper:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2310
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

    .line 2214
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsDefaultIcon:Z

    return v0
.end method

.method public static isDisableOldQuickSwitch()Z
    .locals 1

    .line 2233
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportRecentsAndFsGesture()Z

    move-result v0

    return v0
.end method

.method public static isFirstBoot()Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.app.ActivityThread"

    .line 2137
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getPackageManager"

    .line 2138
    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    .line 2139
    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2140
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "isFirstBoot"

    new-array v4, v0, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 2141
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

    .line 2143
    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public static isFoldDevice()Z
    .locals 1

    .line 2423
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->IS_FOLD_DEVICE:Z

    return v0
.end method

.method public static isGlobalSearchBottomEffectEnable(Landroid/content/Context;)Z
    .locals 2

    .line 1879
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

    .line 1884
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

    .line 1869
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

    .line 585
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.android.quicksearchbox"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "support_home_screen_search_bar"

    const-string v1, "bool"

    const-string v2, "com.android.quicksearchbox"

    .line 586
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 588
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 591
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isGlobalSearchSupportSearchBarIcon(Landroid/content/Context;)Z
    .locals 3

    .line 598
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.android.quicksearchbox"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "support_search_bar_baidu_icon"

    const-string v1, "bool"

    const-string v2, "com.android.quicksearchbox"

    .line 599
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 601
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 604
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isHasNavigationBar()Z
    .locals 1

    .line 569
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sHasNavigationBar:Z

    return v0
.end method

.method public static isHideNotch()Z
    .locals 1

    .line 2095
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sHideNotch:Z

    return v0
.end method

.method public static isHomeSupportIconSearchBar(Landroid/content/Context;)Z
    .locals 1

    .line 577
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/allapps/LauncherMode;->isHomeSupportIconSearchBar(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isHomeSupportSearchBar(Landroid/content/Context;)Z
    .locals 1

    .line 573
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/allapps/LauncherMode;->isHomeSupportSearchBar(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isHotseatsAppTitleHided()Z
    .locals 1

    .line 1921
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsHotseatsAppTitleHided:Z

    return v0
.end method

.method public static isInMultiWindowMode()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 816
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsInMultiWindowMode:Z

    return v0
.end method

.method public static isInSnapshotMode()Z
    .locals 1

    .line 1897
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsInSnapShotMode:Z

    return v0
.end method

.method public static final isInvalidateCellPosition(IIII)Z
    .locals 0

    add-int/2addr p0, p2

    .line 1541
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result p2

    if-gt p0, p2, :cond_1

    add-int/2addr p1, p3

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result p0

    if-le p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isKeepRecentsViewPortrait()Z
    .locals 1

    .line 502
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isUseFixedRotationTransform()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sRotatable:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isLayoutRtl()Z
    .locals 1

    .line 792
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsLayoutRtl:Z

    return v0
.end method

.method public static final isMigratingDBFromOthers()Z
    .locals 2

    .line 1350
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

    .line 2331
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

    .line 2333
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method private static isNaturalWidth720p(Landroid/content/Context;)Z
    .locals 1

    .line 1304
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

    .line 1995
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

.method public static isPhone()Z
    .locals 2

    .line 2436
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->DEVICE:Lcom/miui/home/launcher/DeviceType;

    sget-object v1, Lcom/miui/home/launcher/DeviceType;->PHONE:Lcom/miui/home/launcher/DeviceType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isRecommendServerEnable()Z
    .locals 1

    .line 1007
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isRotatable()Z
    .locals 1

    .line 788
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sRotatable:Z

    return v0
.end method

.method public static final isScreenOrientationChanged()Z
    .locals 1

    .line 1047
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sScreenOrientationChanged:Z

    return v0
.end method

.method public static final isScreenOrientationLandscape()Z
    .locals 2

    .line 1059
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isScreenSizeChanged()Z
    .locals 1

    .line 1051
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sScreenSizeChanged:Z

    return v0
.end method

.method public static isSearchBarVisibleChanged()Z
    .locals 1

    .line 1055
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsSearchBarChanged:Z

    return v0
.end method

.method public static isShowGestureLine()Z
    .locals 1

    .line 1913
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsShowGestureLine:Z

    return v0
.end method

.method public static isShowNavigationBar()Z
    .locals 1

    .line 1909
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

    .line 2099
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

    .line 955
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

    .line 483
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    sget v0, Lcom/miui/home/launcher/common/Utilities;->MIUI_VERSION:F

    const/high16 v3, 0x41300000    # 11.0f

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_0

    .line 485
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isHasNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 486
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

    .line 1339
    invoke-static {v0, v1}, Lcom/miui/home/library/utils/MiuiFeatureUtils;->isSystemFeatureSupported(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportLaunchPairApp()Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.app.ActivityOptions"

    .line 2441
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setEnterAppPairFromShortCut"

    const/4 v3, 0x0

    new-array v4, v0, [Ljava/lang/Class;

    invoke-static {v1, v2, v3, v4}, Lcom/miui/launcher/utils/ReflectUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v2, "Launcher.DeviceConfig"

    .line 2444
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSupportLaunchPairApp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    .line 2447
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    return v0
.end method

.method public static isSupportRecentsAndFsGesture()Z
    .locals 1

    .line 2222
    invoke-static {}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->isSupportRecentsAndFsGesture()Z

    move-result v0

    return v0
.end method

.method public static isSupportSearchBar()Z
    .locals 1

    .line 943
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsSupportSearchBar:Z

    return v0
.end method

.method public static isSupportSearchBarLongPress(Landroid/content/Context;)Z
    .locals 2

    .line 634
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

    .line 642
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "key_home_screen_search_bar_transfer"

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

.method public static isSupportSearchBarXiaoAi(Landroid/content/Context;)Z
    .locals 2

    .line 638
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

    .line 2314
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sSupportSmallWindow:Z

    return v0
.end method

.method public static isTetheringSupported()Z
    .locals 1

    .line 2007
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsTetheringSupported:Z

    return v0
.end method

.method public static isThemeCoverCellConfig()Z
    .locals 1

    .line 2368
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->isThemeCoverCellConfig:Z

    return v0
.end method

.method public static isUseFixedRotationTransform()Z
    .locals 1

    .line 498
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

    .line 251
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->USE_GOOGLE_MINUS_SCREEN_REGIONS:Ljava/util/HashSet;

    sget-object v1, Lcom/miui/home/launcher/DeviceConfig;->CURRENT_REGION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->USE_GOOGLE_MINUS_SCREEN_CLIENT_ID:Ljava/util/HashSet;

    sget-object v1, Lcom/miui/home/launcher/LauncherAssistantCompat;->CLIENT_ID_BASE:Ljava/lang/String;

    .line 252
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/miui/home/launcher/LauncherAssistantCompat;->CAN_SWITCH_MINUS_SCREEN:Z

    if-eqz v0, :cond_0

    .line 253
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

    .line 1537
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

.method public static keepStatusBarShowingForBetterPerformance()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$checkIsAccessibilityEnabledAsync$3(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    .line 1955
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method static synthetic lambda$checkIsAccessibilityEnabledAsync$4(ILandroid/accessibilityservice/AccessibilityServiceInfo;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 1957
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

.method static synthetic lambda$checkIsAccessibilityEnabledAsync$5(Landroid/accessibilityservice/AccessibilityServiceInfo;)Ljava/lang/String;
    .locals 0

    .line 1962
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

.method static synthetic lambda$checkIsAccessibilityEnabledAsync$6(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1968
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    .line 1969
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->setIsAccessibilityEnabled(Z)V

    return-void

    :cond_0
    return-void
.end method

.method static synthetic lambda$checkIsAccessibilityEnabledAsync$7(Ljava/util/List;ILjava/lang/String;)V
    .locals 1

    .line 1956
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->stream(Ljava/util/Collection;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$9OnBuQvuslchjslvn8oVHnMma2g;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$9OnBuQvuslchjslvn8oVHnMma2g;-><init>(I)V

    .line 1957
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object p1, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$Y_mBsMR4k5_oPMgP2CBDVr6617g;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$Y_mBsMR4k5_oPMgP2CBDVr6617g;

    .line 1960
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$nz3benqVwBIFUQEAXQxPHyvFw3U;

    invoke-direct {p1, p2}, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$nz3benqVwBIFUQEAXQxPHyvFw3U;-><init>(Ljava/lang/String;)V

    .line 1967
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method static synthetic lambda$checkIsAccessibilityEnabledAsync$8()V
    .locals 4

    const/4 v0, 0x0

    .line 1938
    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->setIsAccessibilityEnabled(Z)V

    .line 1940
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enabled_accessibility_services"

    .line 1939
    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1944
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    const-string v2, "accessibility"

    .line 1945
    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 1949
    :cond_1
    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v1

    const-string v2, ":"

    .line 1950
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x7

    .line 1954
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->stream(Ljava/util/Collection;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v3, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$2EbDvr98kUJb-Y6vBAlC5C6dwxg;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$2EbDvr98kUJb-Y6vBAlC5C6dwxg;

    .line 1955
    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v3, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$v2SDZl1CHcZb66B1EYDk-eVu5bM;

    invoke-direct {v3, v1, v2}, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$v2SDZl1CHcZb66B1EYDk-eVu5bM;-><init>(Ljava/util/List;I)V

    .line 1956
    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method static synthetic lambda$checkIsNetworkConnectedAsync$9()V
    .locals 2

    .line 1979
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const-string v1, "connectivity"

    .line 1980
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1981
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1984
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1986
    :goto_0
    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->setIsNetWorkConnected(Z)V

    return-void
.end method

.method static synthetic lambda$checkIsSupportMultiWindowMode$2(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    .line 830
    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsSupportMultiWindowMode:Z

    .line 832
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

    .line 835
    invoke-static {v1, v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_0

    .line 837
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_0

    .line 838
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz p0, :cond_0

    const-string v1, "SupportLauncherMultiWindowMode"

    .line 840
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    sput-boolean p0, Lcom/miui/home/launcher/DeviceConfig;->sIsSupportMultiWindowMode:Z

    :cond_0
    return-void
.end method

.method static synthetic lambda$checkIsTetheringSupported$10()V
    .locals 1

    .line 2003
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/launcher/utils/ConnectivityHelper;->isTetheringSupported(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsTetheringSupported:Z

    return-void
.end method

.method static synthetic lambda$checkSystemUIFsgVersion$11()V
    .locals 4

    .line 2014
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    .line 2015
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

.method static synthetic lambda$resolveMiuiVersionAndCheckUpgrade$12(Landroid/content/Context;)V
    .locals 1

    .line 2118
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->isCurrentThemeSupportSearchBar(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2119
    invoke-static {p0, v0}, Lcom/miui/home/launcher/DeviceConfig;->setCurrentThemeSupportSearchBar(Landroid/content/Context;Z)Z

    const-string v0, "ota"

    .line 2120
    invoke-static {p0, v0}, Lcom/miui/home/launcher/DeviceConfig;->setSearchBarSource(Landroid/content/Context;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method static synthetic lambda$static$0(Landroid/content/Context;)Lcom/miui/home/launcher/DeviceConfig;
    .locals 0

    .line 95
    new-instance p0, Lcom/miui/home/launcher/DeviceConfig;

    invoke-direct {p0}, Lcom/miui/home/launcher/DeviceConfig;-><init>()V

    return-object p0
.end method

.method static synthetic lambda$static$1()V
    .locals 3

    .line 519
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->getSettingTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 520
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 521
    sget-object v1, Lcom/miui/home/launcher/DeviceConfig;->sSettingTitle:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static loadAllAppsCellCountX(Landroid/content/Context;)V
    .locals 1

    .line 2190
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2191
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0b001c

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    sput p0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountXDrawerMode:I

    goto :goto_0

    .line 2193
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result p0

    sput p0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountXDrawerMode:I

    :goto_0
    return-void
.end method

.method private static loadCellConfigFromController(Lcom/miui/home/launcher/compat/LauncherCellCount;Landroid/content/Context;)V
    .locals 1

    .line 440
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/compat/LauncherCellCount;->getCellCountXDef(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountXDef:I

    .line 441
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/compat/LauncherCellCount;->getCellCountXMin(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountXMin:I

    .line 442
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/compat/LauncherCellCount;->getCellCountXMax(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountXMax:I

    .line 443
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/compat/LauncherCellCount;->getCellCountYDef(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountYDef:I

    .line 444
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/compat/LauncherCellCount;->getCellCountYMin(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountYMin:I

    .line 445
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/compat/LauncherCellCount;->getCellCountYMax(Landroid/content/Context;)I

    move-result p0

    sput p0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountYMax:I

    return-void
.end method

.method private static final loadCellsCountConfig(Landroid/content/Context;Z)V
    .locals 7

    const-string v0, "pref_key_use_theme_cells_size"

    const/4 v1, 0x0

    .line 1180
    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    .line 1181
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isElderlyManMode()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 1185
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

    sget-boolean v3, Lcom/miui/home/launcher/DeviceConfig;->sUseThemeOrOldmanCellCount:Z

    if-eqz v3, :cond_4

    :cond_1
    if-eqz p1, :cond_2

    .line 1188
    sget v3, Lcom/miui/home/launcher/DeviceConfig;->sCellCountX:I

    if-eq v3, v4, :cond_2

    sget v3, Lcom/miui/home/launcher/DeviceConfig;->sCellCountY:I

    if-ne v3, v4, :cond_4

    .line 1189
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellConfigXSpKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountXDef(Landroid/content/Context;)I

    move-result v4

    invoke-static {p0, v3, v4}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    .line 1190
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellConfigYSpKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountYDef(Landroid/content/Context;)I

    move-result v5

    invoke-static {p0, v4, v5}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    .line 1191
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountXMax(Landroid/content/Context;)I

    move-result v5

    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountXMin(Landroid/content/Context;)I

    move-result v6

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    sput v3, Lcom/miui/home/launcher/DeviceConfig;->sCellCountX:I

    .line 1192
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountYMax(Landroid/content/Context;)I

    move-result v3

    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountYMin(Landroid/content/Context;)I

    move-result v5

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    sput v3, Lcom/miui/home/launcher/DeviceConfig;->sCellCountY:I

    .line 1193
    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sUseThemeOrOldmanCellCount:Z

    goto :goto_1

    .line 1182
    :cond_3
    :goto_0
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountXDef(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/miui/home/launcher/DeviceConfig;->sCellCountX:I

    .line 1183
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountYDef(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/miui/home/launcher/DeviceConfig;->sCellCountY:I

    .line 1184
    sput-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->sUseThemeOrOldmanCellCount:Z

    :cond_4
    :goto_1
    if-eqz v0, :cond_5

    const-string v1, "by_theme"

    .line 1197
    sput-object v1, Lcom/miui/home/launcher/DeviceConfig;->sCurrentScreenCells:Ljava/lang/String;

    goto :goto_2

    .line 1199
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/miui/home/launcher/DeviceConfig;->sCellCountX:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/miui/home/launcher/DeviceConfig;->sCellCountY:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/miui/home/launcher/DeviceConfig;->sCurrentScreenCells:Ljava/lang/String;

    :goto_2
    const-string v1, "Launcher.DeviceConfig"

    .line 1201
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadCellsCountConfig ignoreCellCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " useThemeCellsSize = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    sget p1, Lcom/miui/home/launcher/DeviceConfig;->sCellCountX:I

    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountXDef(Landroid/content/Context;)I

    move-result v0

    if-le p1, v0, :cond_6

    .line 1204
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07049b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sput p1, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellMeasureWidth:I

    goto :goto_3

    .line 1206
    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07049a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sput p1, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellMeasureWidth:I

    .line 1208
    :goto_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070486

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sput p1, Lcom/miui/home/launcher/DeviceConfig;->sCellHorizontalSpacing:I

    .line 1209
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->useNavigationBarLayoutMode()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1210
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07048f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_4

    .line 1211
    :cond_7
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07048e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    :goto_4
    sput p1, Lcom/miui/home/launcher/DeviceConfig;->sCellVerticalSpacing:I

    .line 1212
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0703b2

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sput p1, Lcom/miui/home/launcher/DeviceConfig;->sQuickCallCellVerticalSpacing:I

    .line 1213
    sget-object p1, Lcom/miui/home/launcher/DeviceConfig;->INSTANCE:Lcom/miui/home/launcher/util/MainThreadInitializedObject;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/DeviceConfig;

    .line 1214
    iget-object v0, p1, Lcom/miui/home/launcher/DeviceConfig;->portraitProfile:Lcom/miui/home/launcher/DeviceProfile;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/DeviceProfile;->calculateCellSize(Landroid/content/Context;)V

    .line 1215
    iget-object p1, p1, Lcom/miui/home/launcher/DeviceConfig;->landscapeProfile:Lcom/miui/home/launcher/DeviceProfile;

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/DeviceProfile;->calculateCellSize(Landroid/content/Context;)V

    .line 1216
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellWidth()I

    move-result p1

    .line 1217
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07009d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sub-int/2addr p1, v0

    sput p1, Lcom/miui/home/launcher/DeviceConfig;->sSearchBarWidthDelta:I

    .line 1218
    sget p1, Lcom/miui/home/launcher/DeviceConfig;->sFolderWorkingHeight:I

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr p1, v0

    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountY:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    sput p1, Lcom/miui/home/launcher/DeviceConfig;->sFolderCellHeight:I

    .line 1219
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07012a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    .line 1220
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070128

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sub-float/2addr p1, v0

    .line 1221
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070129

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sub-float/2addr p1, v0

    .line 1222
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 1219
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    sput p1, Lcom/miui/home/launcher/DeviceConfig;->sFolderCellMaxWidth:I

    .line 1227
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isRotatable()Z

    move-result p1

    if-nez p1, :cond_8

    .line 1228
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellWorkingWidth()I

    move-result p1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellWidth()I

    move-result v0

    sget v1, Lcom/miui/home/launcher/DeviceConfig;->sCellCountX:I

    mul-int/2addr v0, v1

    sub-int/2addr p1, v0

    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountY:I

    sub-int/2addr v0, v2

    div-int/2addr p1, v0

    .line 1229
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellMeasureWidth:I

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellWidth()I

    move-result v1

    add-int/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    sput p1, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellMeasureWidth:I

    .line 1230
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellWorkingHeight()I

    move-result p1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellHeight()I

    move-result v0

    sget v1, Lcom/miui/home/launcher/DeviceConfig;->sCellCountY:I

    mul-int/2addr v0, v1

    sub-int/2addr p1, v0

    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountX:I

    sub-int/2addr v0, v2

    div-int/2addr p1, v0

    .line 1231
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellMeasureHeight:I

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellHeight()I

    move-result v1

    add-int/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    sput p1, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellMeasureHeight:I

    :cond_8
    const-string p1, "Launcher.DeviceConfig"

    .line 1234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "widgetCellMeasureWidth = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellMeasureWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " widgetCellMeasureHeight = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellMeasureHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->calcAllAppsCellSize(Landroid/content/Context;)V

    .line 1237
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->loadAllAppsCellCountX(Landroid/content/Context;)V

    return-void
.end method

.method private loadDensity(Landroid/content/Context;)V
    .locals 1

    const-string v0, "window"

    .line 780
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 781
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 782
    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 783
    iget p1, v0, Landroid/util/DisplayMetrics;->density:F

    sput p1, Lcom/miui/home/launcher/DeviceConfig;->sScreenDensity:F

    .line 784
    iget p1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    sput p1, Lcom/miui/home/launcher/DeviceConfig;->sScreenDensityDpi:I

    return-void
.end method

.method private static loadThemeResource(Landroid/content/Context;)V
    .locals 2

    .line 760
    :try_start_0
    new-instance v0, Lmiui/content/res/ThemeValues;

    invoke-direct {v0}, Lmiui/content/res/ThemeValues;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/DeviceConfig;->sThemeValues:Lmiui/content/res/ThemeValues;

    .line 761
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    check-cast v0, Landroid/content/res/MiuiResources;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/content/res/ThemeResourcesPackage;->getThemeResources(Landroid/content/res/MiuiResources;Ljava/lang/String;)Lmiui/content/res/ThemeResourcesPackage;

    move-result-object v0

    .line 762
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/miui/home/launcher/DeviceConfig;->sThemeValues:Lmiui/content/res/ThemeValues;

    invoke-virtual {v0, p0, v1}, Lmiui/content/res/ThemeResourcesPackage;->mergeThemeValues(Ljava/lang/String;Lmiui/content/res/ThemeValues;)V

    .line 763
    sget-object p0, Lcom/miui/home/launcher/DeviceConfig;->sThemeValues:Lmiui/content/res/ThemeValues;

    iget-object p0, p0, Lmiui/content/res/ThemeValues;->mIntegers:Ljava/util/HashMap;

    const v0, 0x7f0b001b

    .line 764
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/miui/home/launcher/DeviceConfig;->sThemeValues:Lmiui/content/res/ThemeValues;

    iget-object p0, p0, Lmiui/content/res/ThemeValues;->mIntegers:Ljava/util/HashMap;

    const v0, 0x7f0b001f

    .line 765
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/miui/home/launcher/DeviceConfig;->sThemeValues:Lmiui/content/res/ThemeValues;

    iget-object p0, p0, Lmiui/content/res/ThemeValues;->mIntegers:Ljava/util/HashMap;

    const v0, 0x7f0b001e

    .line 766
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/miui/home/launcher/DeviceConfig;->sThemeValues:Lmiui/content/res/ThemeValues;

    iget-object p0, p0, Lmiui/content/res/ThemeValues;->mIntegers:Ljava/util/HashMap;

    const v0, 0x7f0b0021

    .line 767
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/miui/home/launcher/DeviceConfig;->sThemeValues:Lmiui/content/res/ThemeValues;

    iget-object p0, p0, Lmiui/content/res/ThemeValues;->mIntegers:Ljava/util/HashMap;

    const v0, 0x7f0b001d

    .line 768
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/miui/home/launcher/DeviceConfig;->sThemeValues:Lmiui/content/res/ThemeValues;

    iget-object p0, p0, Lmiui/content/res/ThemeValues;->mIntegers:Ljava/util/HashMap;

    const v0, 0x7f0b0020

    .line 769
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    sput-boolean p0, Lcom/miui/home/launcher/DeviceConfig;->isThemeCoverCellConfig:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    const-string v0, "Launcher.DeviceConfig"

    const-string v1, "loadThemeResource error"

    .line 771
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method

.method public static loadWorkspaceIndicatorThumbnailHeight(Landroid/content/Context;)V
    .locals 3

    .line 997
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->calcWorkspaceIndicatorMarginBottomInEditMode(Landroid/content/Context;)I

    move-result v0

    .line 998
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b004b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 999
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f0700f9

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    mul-int/2addr v1, p0

    add-int/2addr v0, v1

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceIndicatorThumbnailHeight:I

    return-void
.end method

.method public static final needHideLockProvider(Landroid/content/Context;)Z
    .locals 1

    .line 1643
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1645
    :cond_0
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->needHideThemeManager(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static needHideMinusScreen()Z
    .locals 2

    .line 1847
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1851
    :cond_0
    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_MIUI_12_5_PLUS:Z

    if-eqz v0, :cond_1

    return v1

    .line 1855
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->supportAssistant()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1856
    invoke-static {}, Lcom/miui/home/launcher/ApplicationConfig;->isAssistantInstalled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1857
    invoke-static {}, Lcom/miui/home/launcher/ApplicationConfig;->isAssistantSupportOverlay()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    return v1
.end method

.method public static final needHideThemeManager(Landroid/content/Context;)Z
    .locals 2

    .line 1546
    :try_start_0
    invoke-static {p0}, Lmiui/theme/ThemeManagerHelper;->needDisableTheme(Landroid/content/Context;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "Launcher.DeviceConfig"

    const-string v1, "needHideThemeManager"

    .line 1548
    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static final needRecalculateWidgetSpan()Z
    .locals 1

    .line 1635
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sNeedRecalculateWidgetSpan:Z

    return v0
.end method

.method public static needShowCellsEntry(Landroid/content/Context;)Z
    .locals 4

    .line 1407
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountXMin(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountXMax(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_1

    .line 1408
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
    const-string v1, "pref_key_use_theme_cells_size"

    .line 1409
    invoke-static {p0, v1, v3}, Lcom/miui/home/launcher/common/PreferenceUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz v0, :cond_2

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    return v2
.end method

.method public static final needShowMisplacedTips()Z
    .locals 1

    .line 1639
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sNeedShowMisplacedTips:Z

    return v0
.end method

.method private static obtainDefaultXmlID()I
    .locals 2

    .line 1486
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_2

    .line 1487
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isRotatable()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f13000f

    goto :goto_0

    .line 1489
    :cond_0
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->IS_MEITU:Z

    if-eqz v0, :cond_1

    const v0, 0x7f13001e

    goto :goto_0

    :cond_1
    const v0, 0x7f13000b

    goto :goto_0

    .line 1494
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_5

    .line 1495
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isRotatable()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f13000e

    goto :goto_0

    .line 1497
    :cond_3
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->IS_MEITU:Z

    if-eqz v0, :cond_4

    const v0, 0x7f13001d

    goto :goto_0

    :cond_4
    const v0, 0x7f130009

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static removeDownloadInstallInfo(Landroid/content/Context;)V
    .locals 1

    .line 1684
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/miui/home/launcher/LauncherSettings;->getDownloadInstallInfoPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1685
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1686
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method public static final removeInvalidateDatabase(Landroid/content/Context;Z)V
    .locals 6

    .line 1652
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v0

    .line 1653
    invoke-static {p0}, Lcom/miui/home/launcher/common/StorageContextGetter;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    .line 1654
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDatabaseName()Ljava/lang/String;

    move-result-object v1

    .line 1659
    :try_start_0
    sget-object v2, Lcom/miui/home/launcher/DeviceConfig;->sLauncherDatabaseName:Ljava/lang/String;

    invoke-virtual {v0, p0, v2}, Lcom/miui/home/launcher/allapps/LauncherMode;->getLauncherDatabasePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_4

    if-eqz p1, :cond_0

    sget-object v2, Lcom/miui/home/launcher/DeviceConfig;->sLauncherDatabaseName:Ljava/lang/String;

    .line 1660
    invoke-virtual {v0, p0, v2}, Lcom/miui/home/launcher/allapps/LauncherMode;->getLauncherDatabasePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    .line 1663
    :cond_0
    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/allapps/LauncherMode;->getLauncherDatabaseDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    .line 1664
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    aget-object v4, v0, v3

    if-eqz p1, :cond_1

    .line 1665
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, ".db"

    .line 1666
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1667
    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "app_category_new.db"

    .line 1668
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "app_status.db"

    .line 1669
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "assistant"

    .line 1670
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "apps_data.db"

    .line 1671
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1672
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isStaging()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "mistat.db"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    .line 1675
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

    .line 1679
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    return-void
.end method

.method public static requestIsAppStoreEnabled()V
    .locals 1

    .line 1901
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

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

    .line 2111
    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2112
    sget-object v1, Lcom/miui/home/launcher/common/Utilities;->MIUI_BIG_VERSION:Ljava/lang/String;

    const-string v2, "V11"

    .line 2113
    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "V11"

    .line 2114
    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2115
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFirstBoot()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2116
    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sUpdateIconPositionForMiui11Upgrade:Z

    .line 2117
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$__HvwoIRNMn7f0UJNoDgNmpf7JA;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$__HvwoIRNMn7f0UJNoDgNmpf7JA;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    :cond_0
    const-string v0, "miui_version"

    .line 2124
    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static restoreBackupDB(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    .line 1618
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v0

    .line 1619
    invoke-static {}, Lcom/miui/home/library/utils/Preconditions;->assertNonUiThread()V

    .line 1621
    sget-object v1, Lcom/miui/home/launcher/DeviceConfig;->sLauncherDatabaseName:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/miui/home/launcher/allapps/LauncherMode;->getLauncherDatabasePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1623
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/miui/home/launcher/DeviceConfig;->sLauncherDatabaseName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/miui/home/launcher/allapps/LauncherMode;->getLauncherDatabasePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 1624
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1627
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v1

    invoke-static {p1, v1}, Lmiuix/core/util/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1628
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public static saveCurrentDefaultScreenId(J)V
    .locals 2

    .line 2055
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const-string v1, "pref_default_screen"

    .line 2054
    invoke-static {v0, v1, p0, p1}, Lcom/miui/home/launcher/common/PreferenceUtils;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public static setAllAppsBackgroundAlpha(I)V
    .locals 0

    .line 2202
    sput p0, Lcom/miui/home/launcher/DeviceConfig;->sAllAppsBackgroundAlpha:I

    return-void
.end method

.method public static setAllAppsColorMode(Lcom/miui/home/launcher/allapps/AllAppsColorMode;)V
    .locals 0

    .line 2186
    sput-object p0, Lcom/miui/home/launcher/DeviceConfig;->sAllAppsColorMode:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    return-void
.end method

.method public static setAllAppsRecommendCount(I)V
    .locals 0

    .line 2198
    sput p0, Lcom/miui/home/launcher/DeviceConfig;->sRecommendAppsCount:I

    return-void
.end method

.method public static setCurrentThemeSupportSearchBar(Landroid/content/Context;Z)Z
    .locals 1

    .line 622
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "key_home_screen_search_bar"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static setGlobalSearchEnable(Landroid/content/Context;Z)V
    .locals 1

    .line 1874
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "QSB_SCROLL_ENTRANCE_STATUS"

    invoke-static {p0, v0, p1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->putBooleanToSystem(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    return-void
.end method

.method public static setHotseatMaxCount(I)V
    .locals 0

    .line 1450
    sput p0, Lcom/miui/home/launcher/DeviceConfig;->sHotseatMaxCount:I

    return-void
.end method

.method public static declared-synchronized setIsAccessibilityEnabled(Z)V
    .locals 1

    const-class v0, Lcom/miui/home/launcher/DeviceConfig;

    monitor-enter v0

    .line 1933
    :try_start_0
    sput-boolean p0, Lcom/miui/home/launcher/DeviceConfig;->sIsAccessibilityEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1934
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static setIsInMultiWindowModes(Landroid/content/Context;Landroid/content/res/Resources;Z)V
    .locals 0

    .line 805
    sget-boolean p1, Lcom/miui/home/launcher/DeviceConfig;->sIsInMultiWindowMode:Z

    if-eq p1, p2, :cond_0

    .line 806
    sput-boolean p2, Lcom/miui/home/launcher/DeviceConfig;->sIsInMultiWindowMode:Z

    const/4 p1, 0x1

    .line 807
    invoke-static {p0, p1}, Lcom/miui/home/launcher/DeviceConfig;->calcGridSize(Landroid/content/Context;Z)V

    :cond_0
    return-void
.end method

.method private static declared-synchronized setIsNetWorkConnected(Z)V
    .locals 1

    const-class v0, Lcom/miui/home/launcher/DeviceConfig;

    monitor-enter v0

    .line 1991
    :try_start_0
    sput-boolean p0, Lcom/miui/home/launcher/DeviceConfig;->sIsNetWorkConnected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1992
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static setLastRotation(I)V
    .locals 0

    .line 312
    sput p0, Lcom/miui/home/launcher/DeviceConfig;->sLastRotation:I

    return-void
.end method

.method public static setRotatable(Z)V
    .locals 1

    .line 2427
    sput-boolean p0, Lcom/miui/home/launcher/DeviceConfig;->sRotatable:Z

    .line 2428
    sget-boolean p0, Lcom/miui/home/launcher/DeviceConfig;->sRotatable:Z

    if-eqz p0, :cond_0

    .line 2429
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->setRequestedOrientation(I)V

    goto :goto_0

    .line 2431
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->setRequestedOrientation(I)V

    :goto_0
    return-void
.end method

.method public static setRotation(I)V
    .locals 0

    .line 316
    sput p0, Lcom/miui/home/launcher/DeviceConfig;->sRotation:I

    return-void
.end method

.method public static setRotationBerforStart(I)V
    .locals 0

    .line 304
    sput p0, Lcom/miui/home/launcher/DeviceConfig;->sRotationBeforeStart:I

    return-void
.end method

.method public static setScreenCells(Landroid/content/Context;II)Z
    .locals 6

    const-string v0, "pref_key_use_theme_cells_size"

    const/4 v1, 0x0

    .line 1265
    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 1269
    :cond_0
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountXMin(Landroid/content/Context;)I

    move-result v0

    .line 1270
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountXMax(Landroid/content/Context;)I

    move-result v2

    .line 1271
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountYMin(Landroid/content/Context;)I

    move-result v3

    .line 1272
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountYMax(Landroid/content/Context;)I

    move-result v4

    const/4 v5, 0x1

    if-lt p1, v0, :cond_2

    if-gt p1, v2, :cond_2

    if-lt p2, v3, :cond_2

    if-le p2, v4, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v5

    :goto_1
    if-eqz v0, :cond_3

    return v1

    .line 1278
    :cond_3
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellConfigXSpKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/miui/home/launcher/common/PreferenceUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1279
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellConfigYSpKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/miui/home/launcher/common/PreferenceUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1280
    sput p1, Lcom/miui/home/launcher/DeviceConfig;->sCellCountX:I

    .line 1281
    sput p2, Lcom/miui/home/launcher/DeviceConfig;->sCellCountY:I

    .line 1282
    sget p0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountX:I

    sget p1, Lcom/miui/home/launcher/DeviceConfig;->sCellCountY:I

    invoke-static {p0, p1}, Lcom/miui/home/launcher/DeviceConfig;->getCellSizeVal(II)Ljava/lang/String;

    move-result-object p0

    .line 1283
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getDatabaseNameBySuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/miui/home/launcher/DeviceConfig;->sLauncherDatabaseName:Ljava/lang/String;

    .line 1284
    sput-boolean v5, Lcom/miui/home/launcher/DeviceConfig;->sScreenCellsChangedTemporary:Z

    return v5
.end method

.method public static setSearchBarSource(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 630
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "key_home_screen_search_bar_source"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static setUseLauncherRecentsAndFsGesture(Landroid/content/Context;Z)V
    .locals 1

    if-eqz p0, :cond_0

    .line 2227
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "use_gesture_version_three"

    invoke-static {p0, v0, p1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->putBooleanToGlobal(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    :cond_0
    return-void
.end method

.method private setWorkspaceCellPadding(Landroid/content/res/Resources;)V
    .locals 2

    .line 900
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isRotatable()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f070489

    goto :goto_0

    .line 902
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isNoWordModel()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f070488

    goto :goto_0

    :cond_1
    const v0, 0x7f070487

    .line 900
    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceCellPaddingSide:I

    const v0, 0x7f07048a

    .line 903
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceCellPaddingTop:I

    .line 904
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceCellPaddingTop:I

    const v1, 0x7f070484

    .line 905
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceCellPaddingTopNotch:I

    .line 906
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isRotatable()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f07049f

    goto :goto_1

    :cond_2
    const v0, 0x7f07049e

    :goto_1
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sput p1, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellPaddingBottom:I

    return-void
.end method

.method public static showBackGestureInEditingMode()Z
    .locals 2

    .line 2030
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

    .line 2026
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

.method public static supportAssistant()Z
    .locals 2

    .line 1828
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1829
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsLayoutRtl:Z

    xor-int/2addr v0, v1

    return v0

    :cond_0
    return v1
.end method

.method public static supportAssistant(Lcom/miui/home/launcher/Launcher;)Z
    .locals 1

    .line 1835
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInMultiWindowMode()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lmiui/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v0, "cetus"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static supportCheckRegionalWallpaper()Z
    .locals 1

    .line 2280
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sSupportDarkenWallpaper:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static supportDarkMode()Z
    .locals 1

    .line 2171
    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_P:Z

    return v0
.end method

.method public static supportIconTextShadow()Z
    .locals 1

    .line 2273
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sSupportDarkenWallpaper:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static supportsMultiWindow()Z
    .locals 1

    .line 824
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsSupportMultiWindowMode:Z

    return v0
.end method

.method public static supportsMultiWindowAndNotInSecuritySpace()Z
    .locals 2

    .line 820
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
    .locals 6

    .line 1554
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v0

    .line 1555
    invoke-static {p0}, Lcom/miui/home/launcher/common/StorageContextGetter;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    .line 1556
    sget-object v1, Lcom/miui/home/launcher/DeviceConfig;->sLauncherDatabaseName:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/miui/home/launcher/allapps/LauncherMode;->getLauncherDatabasePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1557
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 1558
    invoke-static {p0, v0}, Lcom/miui/home/launcher/DeviceConfig;->getOptimalDB(Landroid/content/Context;Lcom/miui/home/launcher/allapps/LauncherMode;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "Launcher.DeviceConfig"

    .line 1560
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Migrate db "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v2, v1}, Lmiuix/core/util/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 1562
    sput-boolean v3, Lcom/miui/home/launcher/DeviceConfig;->sNeedRecalculateWidgetSpan:Z

    .line 1563
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    .line 1564
    new-array v1, v1, [I

    .line 1565
    invoke-static {v0, v1}, Lcom/miui/home/launcher/ScreenUtils;->parseCellsSize(Ljava/lang/String;[I)Z

    const/4 v0, 0x0

    .line 1566
    aget v0, v1, v0

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sCellXMigratedFrom:I

    .line 1567
    aget v0, v1, v3

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sCellYMigratedFrom:I

    .line 1569
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sScreenCellsChangedTemporary:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sThemeChanged:Z

    if-nez v0, :cond_0

    .line 1570
    sget-object v0, Lcom/miui/home/launcher/util/noword/NoWordSettingHelper;->INSTANCE:Lcom/miui/home/launcher/util/noword/NoWordSettingHelper;

    invoke-virtual {v0}, Lcom/miui/home/launcher/util/noword/NoWordSettingHelper;->getSwitchingNoWordModel()Z

    move-result v0

    xor-int/2addr v0, v3

    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sNeedShowMisplacedTips:Z

    .line 1574
    :cond_0
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sScreenCellsChangedTemporary:Z

    if-nez v0, :cond_1

    .line 1575
    invoke-static {p0, v3}, Lcom/miui/home/launcher/DeviceConfig;->removeInvalidateDatabase(Landroid/content/Context;Z)V

    :cond_1
    return-void
.end method

.method private updateDeviceProfileSize(Landroid/content/Context;)Z
    .locals 3

    .line 912
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v1, "window"

    .line 913
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 914
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 915
    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 917
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 918
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 919
    sput v1, Lcom/miui/home/launcher/DeviceConfig;->sScreenSmallestWidth:I

    .line 920
    sget-object v2, Lcom/miui/home/launcher/DeviceConfig;->mActiveProfile:Lcom/miui/home/launcher/DeviceProfile;

    invoke-virtual {v2, v0, v1, p1}, Lcom/miui/home/launcher/DeviceProfile;->updateDeviceSize(IILandroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public static updateIconPositionForMiui11Upgrade()Z
    .locals 2

    .line 2130
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sUpdateIconPositionForMiui11Upgrade:Z

    const/4 v1, 0x0

    .line 2131
    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sUpdateIconPositionForMiui11Upgrade:Z

    return v0
.end method

.method public static updateIsDefaultIcon(Landroid/content/Context;)V
    .locals 2

    .line 2218
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

.method private updateScreenSize(Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 2

    .line 891
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 892
    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float p2, p2

    mul-float/2addr v0, p2

    float-to-int p2, v0

    .line 893
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenHeight()I

    move-result v0

    .line 894
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 895
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 896
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveProfile:Lcom/miui/home/launcher/DeviceProfile;

    invoke-virtual {v0, p2, v1, p1}, Lcom/miui/home/launcher/DeviceProfile;->updateDeviceSize(IILandroid/content/Context;)Z

    return-void
.end method

.method public static updateSearchBarTransferEnable(Landroid/content/Context;)V
    .locals 3

    .line 651
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "key_home_screen_search_bar_transfer"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    .line 654
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "key_home_screen_search_bar_transfer"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    return-void
.end method

.method public static useNavigationBarLayoutMode()Z
    .locals 1

    .line 1925
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

    .line 2034
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sUseOldVersionIcons:Z

    return v0
.end method

.method private static useSecondSpaceLayout()Z
    .locals 2

    .line 1329
    invoke-static {}, Lmiui/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {}, Lcom/miui/launcher/utils/LauncherUtils;->getUserSystemId()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1330
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

    .line 1917
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsGestureEnable:Z

    return v0
.end method


# virtual methods
.method public Init(Landroid/content/Context;Z)Z
    .locals 7

    .line 323
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result v0

    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sRotatable:Z

    .line 324
    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->loadThemeResource(Landroid/content/Context;)V

    .line 325
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->enableAndResetCache()Z

    move-result v0

    .line 327
    invoke-static {p1}, Lcom/miui/home/launcher/util/noword/NoWordSettingHelperKt;->checkNoWordSettings(Landroid/content/Context;)V

    .line 328
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentLauncherCellCountInstance()Lcom/miui/home/launcher/compat/LauncherCellCount;

    move-result-object v1

    .line 329
    instance-of v2, v1, Lcom/miui/home/launcher/compat/LauncherCellCountCompatNoWord;

    if-eqz v2, :cond_0

    .line 331
    move-object v2, v1

    check-cast v2, Lcom/miui/home/launcher/compat/LauncherCellCountCompatNoWord;

    sget-boolean v3, Lcom/miui/home/launcher/DeviceConfig;->isThemeCoverCellConfig:Z

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/compat/LauncherCellCountCompatNoWord;->setLoadResCellConfig(Z)V

    .line 333
    :cond_0
    invoke-static {v1, p1}, Lcom/miui/home/launcher/DeviceConfig;->loadCellConfigFromController(Lcom/miui/home/launcher/compat/LauncherCellCount;Landroid/content/Context;)V

    .line 335
    invoke-static {p1}, Lcom/miui/home/launcher/compat/LauncherThemeCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/compat/LauncherThemeCompat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/compat/LauncherThemeCompat;->enableAndResetCache()V

    .line 336
    invoke-static {}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->getInstance()Lcom/miui/home/launcher/common/LauncherIconSizeProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->enableAndResetCache()V

    .line 337
    invoke-static {}, Lcom/miui/home/launcher/MIUIWidgetUtil;->resetCache()V

    .line 338
    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->checkSearchBarSupport(Landroid/content/Context;)V

    .line 339
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/DeviceConfig;->loadDensity(Landroid/content/Context;)V

    .line 340
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 341
    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_1

    .line 342
    sput-boolean v5, Lcom/miui/home/launcher/DeviceConfig;->sIsLayoutRtl:Z

    goto :goto_0

    .line 344
    :cond_1
    sput-boolean v4, Lcom/miui/home/launcher/DeviceConfig;->sIsLayoutRtl:Z

    .line 346
    :goto_0
    sget-object v3, Lcom/miui/home/launcher/DeviceConfig;->sLastConfiguration:Landroid/content/res/Configuration;

    if-nez v3, :cond_2

    .line 347
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    sput-object v0, Lcom/miui/home/launcher/DeviceConfig;->sLastConfiguration:Landroid/content/res/Configuration;

    goto :goto_3

    .line 349
    :cond_2
    invoke-virtual {v3, v2}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v3

    const/high16 v6, -0x80000000

    and-int/2addr v6, v3

    if-eqz v6, :cond_3

    .line 351
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->clearWallpaperSrc()V

    :cond_3
    if-eqz v6, :cond_4

    .line 354
    sput-boolean v5, Lcom/miui/home/launcher/DeviceConfig;->sThemeChanged:Z

    goto :goto_1

    .line 356
    :cond_4
    sput-boolean v4, Lcom/miui/home/launcher/DeviceConfig;->sThemeChanged:Z

    :goto_1
    const v6, -0x3fffed7c

    and-int/2addr v3, v6

    if-nez v3, :cond_6

    if-nez p2, :cond_6

    .line 358
    sget-boolean v3, Lcom/miui/home/launcher/DeviceConfig;->sScreenCellsChangedTemporary:Z

    if-nez v3, :cond_6

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    return v4

    .line 362
    :cond_6
    :goto_2
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->sLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 367
    :goto_3
    invoke-direct {p0, p1, v1}, Lcom/miui/home/launcher/DeviceConfig;->isCellSizeChangedByTheme(Landroid/content/Context;Lcom/miui/home/launcher/compat/LauncherCellCount;)Z

    move-result v0

    .line 368
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 369
    invoke-static {}, Lcom/miui/launcher/utils/MiuiWindowManagerUtils;->getInitialDisplaySize()Landroid/graphics/Point;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 370
    iget v3, v3, Landroid/graphics/Point;->x:I

    const/16 v6, 0x2d0

    if-le v3, v6, :cond_7

    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->isNaturalWidth720p(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_7

    move v3, v5

    goto :goto_4

    :cond_7
    move v3, v4

    :goto_4
    sput-boolean v3, Lcom/miui/home/launcher/DeviceConfig;->sIs720Mode:Z

    .line 371
    sget-object v3, Lcom/miui/home/LauncherDecoupleHelper;->INSTANCE:Lcom/miui/home/LauncherDecoupleHelper;

    invoke-virtual {v3}, Lcom/miui/home/LauncherDecoupleHelper;->migratePocoData()V

    .line 372
    invoke-static {v1}, Lcom/miui/home/launcher/DeviceConfig;->calcIconSize(Landroid/content/res/Resources;)V

    .line 373
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0700ed

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    sput v3, Lcom/miui/home/launcher/DeviceConfig;->sNotchEditModePaddingTopDelta:I

    const v3, 0x7f070497

    .line 374
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sput v3, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceInvalidateEdgeWidth:I

    const v3, 0x7f070438

    .line 375
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sput v3, Lcom/miui/home/launcher/DeviceConfig;->sStatusBarHeight:I

    .line 377
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/DeviceConfig;->setWorkspaceCellPadding(Landroid/content/res/Resources;)V

    const v3, 0x7f0703de

    .line 378
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sput v3, Lcom/miui/home/launcher/DeviceConfig;->sFolderRecommendGridPaddingBottom:I

    const v3, 0x7f07049a

    .line 380
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sput v3, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellMeasureWidth:I

    const v3, 0x7f070499

    .line 381
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sput v3, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellMeasureHeight:I

    const v3, 0x7f07049d

    .line 382
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sput v3, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellMinWidth:I

    const v3, 0x7f07049c

    .line 383
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sput v3, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellMinHeight:I

    const v3, 0x7f0704a0

    .line 384
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sput v3, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellPaddingTop:I

    .line 385
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isRotatable()Z

    move-result v3

    if-eqz v3, :cond_8

    const v3, 0x7f07049f

    goto :goto_5

    :cond_8
    const v3, 0x7f07049e

    :goto_5
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sput v3, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellPaddingBottom:I

    const v3, 0x7f070194

    .line 389
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sput v3, Lcom/miui/home/launcher/DeviceConfig;->sMiuiWidgetPaddingTop:I

    .line 390
    invoke-static {p1, v1}, Lcom/miui/home/launcher/DeviceConfig;->calcLauncherHeightWhenMultiWindow(Landroid/content/Context;Landroid/content/res/Resources;)V

    .line 391
    sput-boolean v4, Lcom/miui/home/launcher/DeviceConfig;->sNeedRecalculateWidgetSpan:Z

    .line 392
    sput-boolean v4, Lcom/miui/home/launcher/DeviceConfig;->sNeedShowMisplacedTips:Z

    .line 393
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->hasNavigationBar()Z

    move-result v3

    sput-boolean v3, Lcom/miui/home/launcher/DeviceConfig;->sHasNavigationBar:Z

    .line 394
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f05000c

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    sput-boolean v3, Lcom/miui/home/launcher/DeviceConfig;->sIsHotseatsAppTitleHided:Z

    const v3, 0x7f090004

    .line 395
    invoke-virtual {v1, v3, v5, v5}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v3

    sput v3, Lcom/miui/home/launcher/DeviceConfig;->sScreenScaleRatio:F

    .line 397
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/DeviceConfig;->initDeviceProfile(Landroid/content/Context;)V

    .line 398
    invoke-virtual {p0, p1, v1}, Lcom/miui/home/launcher/DeviceConfig;->loadScreenSize(Landroid/content/Context;Landroid/content/res/Resources;)V

    .line 399
    invoke-static {p1, v4}, Lcom/miui/home/launcher/DeviceConfig;->calcGridSize(Landroid/content/Context;Z)V

    .line 401
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f100386

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/miui/home/launcher/DeviceConfig;->sRecommendLoadingTitle:Ljava/lang/String;

    .line 402
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f07012a

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    const v6, 0x3f4ccccd    # 0.8f

    mul-float/2addr v3, v6

    float-to-int v3, v3

    sput v3, Lcom/miui/home/launcher/DeviceConfig;->sRecommendBannerWidth:I

    .line 403
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v6

    float-to-int v3, v3

    sput v3, Lcom/miui/home/launcher/DeviceConfig;->sRecommendBannerHeight:I

    .line 404
    sput-boolean v4, Lcom/miui/home/launcher/DeviceConfig;->sScreenCellsChangedTemporary:Z

    if-eqz p2, :cond_9

    if-nez v0, :cond_9

    .line 405
    sget-object p2, Lcom/miui/home/launcher/util/noword/NoWordSettingHelper;->INSTANCE:Lcom/miui/home/launcher/util/noword/NoWordSettingHelper;

    invoke-virtual {p2}, Lcom/miui/home/launcher/util/noword/NoWordSettingHelper;->getSwitchingNoWordModel()Z

    move-result p2

    if-eqz p2, :cond_a

    .line 407
    :cond_9
    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->confirmCellsCount(Landroid/content/Context;)V

    .line 409
    :cond_a
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->checkIsTetheringSupported()V

    .line 410
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->checkSettingTitle()V

    const/high16 p2, 0x3f800000    # 1.0f

    .line 411
    invoke-static {p2}, Lcom/miui/home/launcher/common/Utilities;->getDipPixelSize(F)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x50

    int-to-float v0, v0

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->getDipPixelSize(F)I

    move-result v0

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellDefaultWidth:I

    .line 412
    invoke-static {p2}, Lcom/miui/home/launcher/common/Utilities;->getDipPixelSize(F)I

    move-result p2

    rsub-int/lit8 p2, p2, 0x4a

    int-to-float p2, p2

    invoke-static {p2}, Lcom/miui/home/launcher/common/Utilities;->getDipPixelSize(F)I

    move-result p2

    sput p2, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellDefaultHeight:I

    .line 413
    iget p2, v2, Landroid/content/res/Configuration;->uiMode:I

    const/16 v0, 0x20

    and-int/2addr p2, v0

    if-ne p2, v0, :cond_b

    move v4, v5

    :cond_b
    sput-boolean v4, Lcom/miui/home/launcher/DeviceConfig;->sIsDarkMode:Z

    .line 414
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f07040f

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    sput p2, Lcom/miui/home/launcher/DeviceConfig;->sShortcutMenuDisappearThreshold:I

    .line 415
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f090007

    invoke-virtual {p2, v0, v5, v5}, Landroid/content/res/Resources;->getFraction(III)F

    move-result p2

    sput p2, Lcom/miui/home/launcher/DeviceConfig;->sSearchBarLightThreshold:F

    .line 418
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isNoWordModel()Z

    move-result p2

    if-eqz p2, :cond_c

    const p2, 0x7f090006

    goto :goto_6

    :cond_c
    const p2, 0x7f090005

    .line 417
    :goto_6
    invoke-virtual {v1, p2, v5, v5}, Landroid/content/res/Resources;->getFraction(III)F

    move-result p2

    sput p2, Lcom/miui/home/launcher/DeviceConfig;->sQuickEditScreenRatio:F

    const/high16 p2, 0x7f090000

    .line 421
    invoke-virtual {v1, p2, v5, v5}, Landroid/content/res/Resources;->getFraction(III)F

    move-result p2

    sput p2, Lcom/miui/home/launcher/DeviceConfig;->sDragIconScaleRatio:F

    .line 423
    invoke-static {}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getInstance()Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getSavedColorMode()Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    move-result-object p2

    invoke-static {p2}, Lcom/miui/home/launcher/DeviceConfig;->setAllAppsColorMode(Lcom/miui/home/launcher/allapps/AllAppsColorMode;)V

    .line 424
    invoke-static {}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getInstance()Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getBackgroundAlpha()I

    move-result p2

    invoke-static {p2}, Lcom/miui/home/launcher/DeviceConfig;->setAllAppsBackgroundAlpha(I)V

    .line 425
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    sget-object v0, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 426
    invoke-static {}, Lcom/github/promeg/pinyinhelper/Pinyin;->newConfig()Lcom/github/promeg/pinyinhelper/Pinyin$Config;

    move-result-object p2

    invoke-static {}, Lcom/miui/home/library/utils/CustomPinyinDict;->getInstance()Lcom/miui/home/library/utils/CustomPinyinDict;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/github/promeg/pinyinhelper/Pinyin$Config;->with(Lcom/github/promeg/pinyinhelper/PinyinDict;)Lcom/github/promeg/pinyinhelper/Pinyin$Config;

    move-result-object p2

    invoke-static {p2}, Lcom/github/promeg/pinyinhelper/Pinyin;->init(Lcom/github/promeg/pinyinhelper/Pinyin$Config;)V

    goto :goto_7

    :cond_d
    const/4 p2, 0x0

    .line 428
    invoke-static {p2}, Lcom/github/promeg/pinyinhelper/Pinyin;->init(Lcom/github/promeg/pinyinhelper/Pinyin$Config;)V

    .line 431
    :goto_7
    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->checkDarkenWallpaperSupport(Landroid/content/Context;)Z

    move-result p2

    sput-boolean p2, Lcom/miui/home/launcher/DeviceConfig;->sSupportDarkenWallpaper:Z

    .line 432
    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->updateIsDefaultIcon(Landroid/content/Context;)V

    .line 433
    invoke-static {}, Lcom/miui/home/launcher/PathDataIconUtil;->initDataPathFroClipIcon()V

    .line 434
    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->checkIsSupportMultiWindowMode(Landroid/content/Context;)V

    .line 435
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->checkIsSupportSmallWindow()Z

    move-result p1

    sput-boolean p1, Lcom/miui/home/launcher/DeviceConfig;->sSupportSmallWindow:Z

    return v5
.end method

.method public checkIfIsOrientationChanged(Landroid/content/Context;)Z
    .locals 1

    .line 924
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceProfile(Landroid/content/Context;)Lcom/miui/home/launcher/DeviceProfile;

    move-result-object p1

    .line 925
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveProfile:Lcom/miui/home/launcher/DeviceProfile;

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 927
    sput-object p1, Lcom/miui/home/launcher/DeviceConfig;->mActiveProfile:Lcom/miui/home/launcher/DeviceProfile;

    :cond_1
    return v0
.end method

.method public getDeviceProfile(Landroid/content/Context;)Lcom/miui/home/launcher/DeviceProfile;
    .locals 1

    .line 475
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isRotatable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 476
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 477
    iget-object p1, p0, Lcom/miui/home/launcher/DeviceConfig;->landscapeProfile:Lcom/miui/home/launcher/DeviceProfile;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/DeviceConfig;->portraitProfile:Lcom/miui/home/launcher/DeviceProfile;

    :goto_0
    return-object p1

    .line 479
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/DeviceConfig;->portraitProfile:Lcom/miui/home/launcher/DeviceProfile;

    return-object p1
.end method

.method public loadScreenSize(Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 1

    .line 847
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 848
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInMultiWindowMode()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/home/launcher/DeviceConfig;->loadScreenSize(Landroid/content/Context;Landroid/content/res/Resources;Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 850
    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/home/launcher/DeviceConfig;->loadScreenSize(Landroid/content/Context;Landroid/content/res/Resources;Z)V

    :goto_0
    return-void
.end method

.method public loadScreenSize(Landroid/content/Context;Landroid/content/res/Resources;Z)V
    .locals 9

    .line 863
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/DeviceConfig;->setWorkspaceCellPadding(Landroid/content/res/Resources;)V

    const/4 v0, 0x1

    const v1, 0x7f090004

    .line 864
    invoke-virtual {p2, v1, v0, v0}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    sput v1, Lcom/miui/home/launcher/DeviceConfig;->sScreenScaleRatio:F

    .line 865
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/DeviceConfig;->updateGestureEnable(Landroid/content/Context;)V

    .line 866
    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->checkSearchBarSupport(Landroid/content/Context;)V

    .line 867
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "force_black_v2"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sHideNotch:Z

    .line 868
    sget-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sIsSupportSearchBar:Z

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    move v1, v3

    .line 869
    :goto_1
    sget-object v2, Lcom/miui/home/launcher/DeviceConfig;->sShowSearchBar:Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/common/ChangeableValue;->setValue(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sIsSearchBarChanged:Z

    const v2, 0x7f070414

    .line 870
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v4, 0x7f070415

    .line 871
    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 872
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/DeviceConfig;->updateDeviceProfileSize(Landroid/content/Context;)Z

    move-result v5

    .line 873
    sget-object v6, Lcom/miui/home/launcher/DeviceConfig;->sSearchBarMarginBottom:Lcom/miui/home/launcher/common/ChangeableValue;

    sget-boolean v7, Lcom/miui/home/launcher/DeviceConfig;->sIsShowGestureLine:Z

    invoke-static {p1, v7}, Lcom/miui/home/launcher/DeviceConfig;->calcSearchBarMarginBottom(Landroid/content/Context;Z)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/miui/home/launcher/common/ChangeableValue;->setValue(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v1, v6

    .line 874
    sget-object v6, Lcom/miui/home/launcher/DeviceConfig;->sHotSeatsMarginBottom:Lcom/miui/home/launcher/common/ChangeableValue;

    sget-object v7, Lcom/miui/home/launcher/DeviceConfig;->sShowSearchBar:Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-virtual {v7}, Lcom/miui/home/launcher/common/ChangeableValue;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    sget-boolean v8, Lcom/miui/home/launcher/DeviceConfig;->sIsShowGestureLine:Z

    invoke-static {p1, v7, v8}, Lcom/miui/home/launcher/DeviceConfig;->calcHotSeatsMarginBottom(Landroid/content/Context;ZZ)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/miui/home/launcher/common/ChangeableValue;->setValue(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v1, v6

    .line 875
    sget-object v6, Lcom/miui/home/launcher/DeviceConfig;->sHotSeatsMarginTop:Lcom/miui/home/launcher/common/ChangeableValue;

    sget-object v7, Lcom/miui/home/launcher/DeviceConfig;->sShowSearchBar:Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-virtual {v7}, Lcom/miui/home/launcher/common/ChangeableValue;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-static {p1, v7}, Lcom/miui/home/launcher/DeviceConfig;->calcHotSeatsMarginTop(Landroid/content/Context;Z)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/miui/home/launcher/common/ChangeableValue;->setValue(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v1, v6

    .line 876
    sget-object v6, Lcom/miui/home/launcher/DeviceConfig;->sHotSeatsHeight:Lcom/miui/home/launcher/common/ChangeableValue;

    sget-object v7, Lcom/miui/home/launcher/DeviceConfig;->sShowSearchBar:Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-virtual {v7}, Lcom/miui/home/launcher/common/ChangeableValue;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-static {p1, v7}, Lcom/miui/home/launcher/DeviceConfig;->calcHotSeatsHeight(Landroid/content/Context;Z)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/miui/home/launcher/common/ChangeableValue;->setValue(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v1, v6

    .line 877
    sget-object v6, Lcom/miui/home/launcher/DeviceConfig;->sHotSeatsMarginBottom:Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-virtual {v6}, Lcom/miui/home/launcher/common/ChangeableValue;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget-object v7, Lcom/miui/home/launcher/DeviceConfig;->sHotSeatsHeight:Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-virtual {v7}, Lcom/miui/home/launcher/common/ChangeableValue;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v6, v7

    sget-object v7, Lcom/miui/home/launcher/DeviceConfig;->sHotSeatsMarginTop:Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-virtual {v7}, Lcom/miui/home/launcher/common/ChangeableValue;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v6, v7

    sput v6, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceIndicatorMarginBottom:I

    .line 878
    sget-object v6, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceCellPaddingBottom:Lcom/miui/home/launcher/common/ChangeableValue;

    sget v7, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceIndicatorMarginBottom:I

    add-int/2addr v7, v2

    add-int/2addr v7, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/miui/home/launcher/common/ChangeableValue;->setValue(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 879
    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->calcSearchBarWidth(Landroid/content/Context;)I

    move-result v2

    sput v2, Lcom/miui/home/launcher/DeviceConfig;->sSearchBarWidth:I

    .line 880
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/DeviceConfig;->checkIfIsOrientationChanged(Landroid/content/Context;)Z

    move-result v2

    sput-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->sScreenOrientationChanged:Z

    if-nez v1, :cond_3

    if-eqz v5, :cond_2

    .line 881
    sget-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sScreenOrientationChanged:Z

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    move v0, v3

    :cond_3
    :goto_2
    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sScreenSizeChanged:Z

    .line 882
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceProfile(Landroid/content/Context;)Lcom/miui/home/launcher/DeviceProfile;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveProfile:Lcom/miui/home/launcher/DeviceProfile;

    .line 883
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/DeviceConfig;->updateScreenSize(Landroid/content/Context;Landroid/content/res/Resources;)V

    .line 884
    sget-object p2, Lcom/miui/home/launcher/DeviceConfig;->mActiveProfile:Lcom/miui/home/launcher/DeviceProfile;

    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/DeviceProfile;->subNavigationBarHeight(Landroid/content/Context;)V

    .line 885
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isScreenOrientationChanged()Z

    move-result p2

    if-nez p2, :cond_4

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isScreenSizeChanged()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 886
    :cond_4
    invoke-static {p1, p3}, Lcom/miui/home/launcher/DeviceConfig;->calcGridSize(Landroid/content/Context;Z)V

    :cond_5
    return-void
.end method

.method public updateGestureEnable(Landroid/content/Context;)V
    .locals 4

    .line 855
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "force_fsg_nav_bar"

    invoke-static {v0, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 856
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "force_immersive_nav_bar"

    invoke-static {v0, v3}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsGestureEnable:Z

    .line 857
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsGestureEnable:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportRecentsAndFsGesture()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 858
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "hide_gesture_line"

    invoke-static {p1, v0}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    move p1, v2

    goto :goto_2

    :cond_2
    move p1, v1

    :goto_2
    sput-boolean p1, Lcom/miui/home/launcher/DeviceConfig;->sIsShowGestureLine:Z

    .line 859
    sget-boolean p1, Lcom/miui/home/launcher/DeviceConfig;->sIsGestureEnable:Z

    if-eqz p1, :cond_3

    sget-boolean p1, Lcom/miui/home/launcher/DeviceConfig;->sIsShowGestureLine:Z

    if-nez p1, :cond_3

    move v1, v2

    :cond_3
    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sIsImmersiveNavigationBar:Z

    return-void
.end method
