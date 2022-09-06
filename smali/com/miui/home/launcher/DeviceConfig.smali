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

.field public static final IS_BUILD_CETUS:Z

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

.field private static sUnstableDialogShowed:Z

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

    .line 93
    new-instance v0, Lcom/miui/home/launcher/util/MainThreadInitializedObject;

    sget-object v1, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$xd45_OqI55HUF6eZBq1EnywKyL0;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$xd45_OqI55HUF6eZBq1EnywKyL0;

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/util/MainThreadInitializedObject;-><init>(Lcom/miui/home/launcher/util/MainThreadInitializedObject$ObjectProvider;)V

    sput-object v0, Lcom/miui/home/launcher/DeviceConfig;->INSTANCE:Lcom/miui/home/launcher/util/MainThreadInitializedObject;

    const/4 v0, -0x1

    .line 102
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sScreenSmallestWidth:I

    const/4 v1, 0x0

    .line 103
    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sIs720Mode:Z

    const/high16 v2, -0x40800000    # -1.0f

    .line 104
    sput v2, Lcom/miui/home/launcher/DeviceConfig;->sScreenDensity:F

    .line 105
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sScreenDensityDpi:I

    .line 106
    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sScreenOrientationChanged:Z

    .line 107
    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sIsLayoutRtl:Z

    .line 108
    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sScreenSizeChanged:Z

    .line 109
    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sIsSearchBarChanged:Z

    .line 110
    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sScreenCellsChangedTemporary:Z

    .line 111
    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sNeedRecalculateWidgetSpan:Z

    .line 112
    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sNeedShowMisplacedTips:Z

    .line 113
    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sThemeChanged:Z

    .line 114
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sCellXMigratedFrom:I

    .line 115
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sCellYMigratedFrom:I

    .line 127
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sStatusBarHeight:I

    .line 128
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sSearchBarWidth:I

    .line 129
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sSearchBarWidthDelta:I

    .line 130
    new-instance v2, Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/miui/home/launcher/common/ChangeableValue;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/miui/home/launcher/DeviceConfig;->sSearchBarMarginBottom:Lcom/miui/home/launcher/common/ChangeableValue;

    .line 131
    new-instance v2, Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/miui/home/launcher/common/ChangeableValue;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/miui/home/launcher/DeviceConfig;->sHotSeatsMarginBottom:Lcom/miui/home/launcher/common/ChangeableValue;

    .line 132
    new-instance v2, Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/miui/home/launcher/common/ChangeableValue;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/miui/home/launcher/DeviceConfig;->sHotSeatsMarginTop:Lcom/miui/home/launcher/common/ChangeableValue;

    .line 133
    new-instance v2, Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/miui/home/launcher/common/ChangeableValue;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/miui/home/launcher/DeviceConfig;->sHotSeatsHeight:Lcom/miui/home/launcher/common/ChangeableValue;

    .line 134
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceCellPaddingSide:I

    .line 135
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceCellPaddingTop:I

    .line 136
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceCellPaddingTopNotch:I

    .line 137
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceCellPaddingTopMultiWindow:I

    .line 138
    new-instance v2, Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/miui/home/launcher/common/ChangeableValue;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceCellPaddingBottom:Lcom/miui/home/launcher/common/ChangeableValue;

    .line 139
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceIndicatorMarginBottom:I

    .line 140
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceIndicatorMarginBottomInEditMode:I

    .line 141
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceIndicatorThumbnailHeight:I

    .line 142
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sFolderRecommendGridPaddingBottom:I

    .line 144
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sMiuiWidgetPaddingTop:I

    .line 145
    invoke-static {}, Lcom/miui/home/launcher/widget/MiuiWidgetSizeSpecFactory;->getWidgetSpec()Lcom/miui/home/launcher/widget/MiuiWidgetSizeSpec;

    move-result-object v2

    sput-object v2, Lcom/miui/home/launcher/DeviceConfig;->sMiuiWidgetSizeSpec:Lcom/miui/home/launcher/widget/MiuiWidgetSizeSpec;

    .line 147
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sIconWidth:I

    .line 148
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sApplicationIconContainerWidth:I

    .line 149
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sHotseatIconContainerWidth:I

    .line 150
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sNotchEditModePaddingTopDelta:I

    .line 151
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sIconHeight:I

    .line 152
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sApplicationIconContainerHeight:I

    .line 153
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountXDrawerMode:I

    .line 154
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sRecommendAppsCount:I

    .line 155
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountX:I

    .line 156
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountY:I

    .line 157
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountXDef:I

    .line 158
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountXMin:I

    .line 159
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountXMax:I

    .line 160
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountYDef:I

    .line 161
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountYMin:I

    .line 162
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountYMax:I

    .line 163
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sAllAppsCellHeight:I

    .line 164
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sAllAppsDividerTop:I

    .line 165
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sAllAppsDividerBottom:I

    .line 166
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sFolderCellHeight:I

    .line 168
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sCellVerticalSpacing:I

    .line 169
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sCellHorizontalSpacing:I

    .line 170
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sQuickCallCellVerticalSpacing:I

    .line 171
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sFolderWorkingHeight:I

    .line 172
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sHotseatMaxCount:I

    .line 189
    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sIsInSnapShotMode:Z

    const/4 v0, 0x0

    .line 194
    sput-object v0, Lcom/miui/home/launcher/DeviceConfig;->sLastConfiguration:Landroid/content/res/Configuration;

    const-string v0, "support_force_touch"

    .line 197
    invoke-static {v0, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getBooleanFromFeatureParse(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->IS_SURRPORT_FORCE_TOUCH:Z

    const/4 v0, 0x1

    .line 202
    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsShowNotification:Z

    .line 203
    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sIsAppStoreEnabled:Z

    .line 204
    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sHasNavigationBar:Z

    .line 205
    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sIsGestureEnable:Z

    .line 206
    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sIsShowGestureLine:Z

    .line 207
    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sIsImmersiveNavigationBar:Z

    .line 208
    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsHotseatsAppTitleHided:Z

    .line 209
    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sIsNetWorkConnected:Z

    .line 211
    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sIsAccessibilityEnabled:Z

    .line 213
    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sIsTetheringSupported:Z

    .line 215
    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sIsDarkMode:Z

    .line 216
    sput v1, Lcom/miui/home/launcher/DeviceConfig;->sLastRotation:I

    .line 218
    sput v1, Lcom/miui/home/launcher/DeviceConfig;->sRotation:I

    .line 219
    sput v1, Lcom/miui/home/launcher/DeviceConfig;->sRotationBeforeStart:I

    const v2, 0x3dcccccd    # 0.1f

    .line 221
    sput v2, Lcom/miui/home/launcher/DeviceConfig;->sSearchBarLightThreshold:F

    .line 223
    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sSupportSmallWindow:Z

    const-string v2, "ro.hardware"

    const-string v3, "unknown"

    .line 224
    invoke-static {v2, v3}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getStringFromSystemProperites(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/miui/home/launcher/DeviceConfig;->VENDOR_NAME:Ljava/lang/String;

    .line 225
    sget-object v2, Lcom/miui/home/launcher/DeviceConfig;->VENDOR_NAME:Ljava/lang/String;

    const-string v3, "mt"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->IS_MTK:Z

    const-string v2, "ro.miui.customized.region"

    const-string v3, ""

    .line 228
    invoke-static {v2, v3}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getStringFromSystemProperites(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/miui/home/launcher/DeviceConfig;->CURRENT_REGION:Ljava/lang/String;

    const-string v2, "ro.miui.build.region"

    const-string v3, ""

    .line 234
    invoke-static {v2, v3}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getStringFromSystemProperites(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/miui/home/launcher/DeviceConfig;->BUILD_REGION:Ljava/lang/String;

    .line 236
    new-instance v2, Lcom/miui/home/launcher/DeviceConfig$1;

    invoke-direct {v2}, Lcom/miui/home/launcher/DeviceConfig$1;-><init>()V

    sput-object v2, Lcom/miui/home/launcher/DeviceConfig;->USE_GOOGLE_MINUS_SCREEN_REGIONS:Ljava/util/HashSet;

    .line 241
    new-instance v2, Lcom/miui/home/launcher/DeviceConfig$2;

    invoke-direct {v2}, Lcom/miui/home/launcher/DeviceConfig$2;-><init>()V

    sput-object v2, Lcom/miui/home/launcher/DeviceConfig;->USE_GOOGLE_MINUS_SCREEN_CLIENT_ID:Ljava/util/HashSet;

    .line 244
    new-instance v2, Lcom/miui/home/launcher/DeviceConfig$3;

    invoke-direct {v2}, Lcom/miui/home/launcher/DeviceConfig$3;-><init>()V

    sput-object v2, Lcom/miui/home/launcher/DeviceConfig;->SELECT_MINUS_SCREEN_CLIENT_ID:Ljava/util/HashSet;

    const-string v2, "fr_orange"

    .line 256
    sget-object v3, Lcom/miui/home/launcher/DeviceConfig;->CURRENT_REGION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->IS_ORANGE_BUILD:Z

    const-string v2, "jp_kd"

    .line 258
    sget-object v3, Lcom/miui/home/launcher/DeviceConfig;->CURRENT_REGION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->IS_KDDI_BUILD:Z

    const-string v2, "jp_sb"

    .line 260
    sget-object v3, Lcom/miui/home/launcher/DeviceConfig;->CURRENT_REGION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->IS_SB_BUILD:Z

    const-string v2, "in_fk"

    .line 263
    sget-object v3, Lcom/miui/home/launcher/DeviceConfig;->CURRENT_REGION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->IS_FK_BUILD:Z

    const-string v2, "lm_cr"

    .line 267
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

    .line 269
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isMiuiLiteVersion()Z

    move-result v2

    sput-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->IS_MIUI_LITE_DEVICE:Z

    .line 271
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceType()Lcom/miui/home/launcher/DeviceType;

    move-result-object v2

    sput-object v2, Lcom/miui/home/launcher/DeviceConfig;->DEVICE:Lcom/miui/home/launcher/DeviceType;

    .line 272
    sget-object v2, Lcom/miui/home/launcher/DeviceConfig;->DEVICE:Lcom/miui/home/launcher/DeviceType;

    sget-object v3, Lcom/miui/home/launcher/DeviceType;->FOLDABLE_DEVICE:Lcom/miui/home/launcher/DeviceType;

    if-ne v2, v3, :cond_2

    move v2, v0

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    sput-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->IS_FOLD_DEVICE:Z

    .line 274
    sget-object v2, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "cetus"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->IS_BUILD_CETUS:Z

    const-string v2, "ro.config.miui_magic_window_enable"

    .line 277
    invoke-static {v2, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getBooleanFromSystemProperties(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->IS_SUPPORT_MAGIC_WINDOW:Z

    const-string v2, "Meitu"

    .line 279
    sget-object v3, Lmiui/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->IS_MEITU:Z

    .line 287
    new-instance v2, Ljava/io/File;

    const-string v3, "/system/media/theme/icons_version_1"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    xor-int/2addr v2, v0

    sput-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->sUseOldVersionIcons:Z

    .line 289
    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->isThemeCoverCellConfig:Z

    .line 291
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportLaunchPairApp()Z

    move-result v2

    sput-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->sIsSupportLaunchPairApp:Z

    .line 506
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v2, Lcom/miui/home/launcher/DeviceConfig;->sSettingTitle:Ljava/util/concurrent/ConcurrentHashMap;

    .line 519
    sget-object v2, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$F58cM-W15WymyMchPxAmRAziee8;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$F58cM-W15WymyMchPxAmRAziee8;

    sput-object v2, Lcom/miui/home/launcher/DeviceConfig;->sCheckTitleRunnable:Ljava/lang/Runnable;

    .line 757
    new-instance v2, Lmiui/content/res/ThemeValues;

    invoke-direct {v2}, Lmiui/content/res/ThemeValues;-><init>()V

    sput-object v2, Lcom/miui/home/launcher/DeviceConfig;->sThemeValues:Lmiui/content/res/ThemeValues;

    .line 967
    new-instance v2, Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/miui/home/launcher/common/ChangeableValue;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/miui/home/launcher/DeviceConfig;->sShowSearchBar:Lcom/miui/home/launcher/common/ChangeableValue;

    .line 1191
    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sUseThemeOrOldmanCellCount:Z

    const-wide/16 v2, -0x1

    .line 1813
    sput-wide v2, Lcom/miui/home/launcher/DeviceConfig;->INVALIDATE_DEFAULT_SCREEN_ID:J

    .line 1814
    sget-wide v2, Lcom/miui/home/launcher/DeviceConfig;->INVALIDATE_DEFAULT_SCREEN_ID:J

    sput-wide v2, Lcom/miui/home/launcher/DeviceConfig;->sDesignedDefaultScreenId:J

    .line 1898
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_3

    move v0, v1

    .line 1899
    :cond_3
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->TEMP_SHARE_MODE_FOR_WORLD_READABLE:I

    .line 1901
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_4

    move v0, v1

    goto :goto_3

    :cond_4
    const/4 v0, 0x2

    .line 1902
    :goto_3
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->TEMP_SHARE_MODE_FOR_WORLD_WRITEABLE:I

    .line 2046
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/DeviceConfig;->sSystemuiFsgVersion:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2129
    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sHideNotch:Z

    .line 2164
    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sUpdateIconPositionForMiui11Upgrade:Z

    .line 2537
    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sUnstableDialogShowed:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static backupDB(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9

    .line 1605
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v0

    .line 1606
    invoke-static {}, Lcom/miui/home/library/utils/Preconditions;->assertNonUiThread()V

    .line 1607
    sget-object v1, Lcom/miui/home/launcher/DeviceConfig;->sLauncherDatabaseName:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/miui/home/launcher/allapps/LauncherMode;->getLauncherDatabasePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1608
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    const-string v2, "pref_key_auto_backup_time"

    const-wide/16 v4, -0x1

    .line 1611
    invoke-static {p0, v2, v4, v5}, Lcom/miui/home/launcher/common/PreferenceUtils;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v6

    .line 1613
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/miui/home/launcher/DeviceConfig;->sLauncherDatabaseName:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/miui/home/launcher/allapps/LauncherMode;->getLauncherDatabasePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 1614
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    cmp-long v0, v6, v4

    if-eqz v0, :cond_1

    .line 1618
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x6ddd00

    cmp-long v0, v4, v6

    if-gez v0, :cond_1

    return v2

    .line 1621
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 1625
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p1

    invoke-static {v0, p1}, Lmiuix/core/util/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "pref_key_auto_backup_time"

    .line 1626
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 1627
    invoke-static {p0}, Lcom/miui/home/launcher/IconReorganizeMonitor;->onDBBackupFinishedForReorgnize(Landroid/content/Context;)V

    return v2

    :cond_3
    return v3
.end method

.method public static calcAllAppsCellSize(Landroid/content/Context;)V
    .locals 5

    .line 1256
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07005c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1257
    sget-object v1, Lcom/miui/home/launcher/DeviceConfig;->mActiveProfile:Lcom/miui/home/launcher/DeviceProfile;

    invoke-virtual {v1}, Lcom/miui/home/launcher/DeviceProfile;->getScreenLongSize()I

    move-result v1

    .line 1258
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v2

    sub-int/2addr v1, v2

    .line 1259
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070073

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    .line 1260
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070072

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    .line 1261
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0705c8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    .line 1262
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getSearchBarHolderVerticalPadding(Landroid/content/Context;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 1263
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070060

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    .line 1265
    sget v2, Lcom/miui/home/launcher/DeviceConfig;->sCellCountY:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    sput v1, Lcom/miui/home/launcher/DeviceConfig;->sAllAppsCellHeight:I

    .line 1266
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701ad

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 1267
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2}, Landroid/text/TextPaint;-><init>()V

    .line 1268
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070683

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1269
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsCellHeight()I

    move-result v3

    sub-int/2addr v3, v1

    .line 1271
    invoke-static {p0}, Lcom/miui/home/launcher/compat/LauncherThemeCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/compat/LauncherThemeCompat;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/home/launcher/compat/LauncherThemeCompat;->getLauncherIconHeight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 1272
    invoke-static {p0}, Lcom/miui/home/launcher/compat/LauncherThemeCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/compat/LauncherThemeCompat;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/LauncherThemeCompat;->getTitleMarginTop()I

    move-result p0

    sub-int/2addr v3, p0

    const/4 p0, 0x0

    .line 1273
    invoke-virtual {v2, p0}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result p0

    sub-int/2addr v3, p0

    add-int p0, v0, v1

    sub-int/2addr p0, v3

    .line 1274
    div-int/lit8 p0, p0, 0x2

    sput p0, Lcom/miui/home/launcher/DeviceConfig;->sAllAppsDividerTop:I

    add-int/2addr v0, v3

    sub-int/2addr v0, v1

    .line 1275
    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sAllAppsDividerBottom:I

    return-void
.end method

.method private static calcDefaultWorkspaceName(Lcom/miui/home/launcher/allapps/LauncherMode;)Ljava/lang/String;
    .locals 2

    .line 1328
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountX:I

    .line 1329
    sget v1, Lcom/miui/home/launcher/DeviceConfig;->sCellCountY:I

    .line 1330
    invoke-static {v0, v1}, Lcom/miui/home/launcher/DeviceConfig;->getCellSizeVal(II)Ljava/lang/String;

    move-result-object v0

    .line 1331
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/LauncherMode;->getDefaultWorkspaceNamePrefix()Ljava/lang/String;

    move-result-object p0

    .line 1333
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isRotatable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1334
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "default_workspace_rotatable"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1335
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 1337
    :cond_0
    sget-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->IS_MEITU:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->useSecondSpaceLayout()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1338
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "meitu_"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1340
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1341
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "default_fold_workspace"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1343
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "default_workspace"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1345
    :goto_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->useSecondSpaceLayout()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_private_model"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_3
    :goto_1
    return-object p0
.end method

.method private static calcDefaultXmlID(Landroid/content/Context;Lcom/miui/home/launcher/allapps/LauncherMode;)I
    .locals 0

    .line 1501
    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->calcDefaultWorkspaceName(Lcom/miui/home/launcher/allapps/LauncherMode;)Ljava/lang/String;

    move-result-object p1

    .line 1502
    invoke-static {p0, p1}, Lcom/miui/home/launcher/DeviceConfig;->getXmlId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static calcFoldIndicatorMarginBottomInEditMode(Landroid/content/Context;)I
    .locals 5

    .line 991
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    const v2, 0x7f090002

    invoke-virtual {v0, v2, v1, v1}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    .line 992
    sget-object v1, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceCellPaddingBottom:Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-virtual {v1}, Lcom/miui/home/launcher/common/ChangeableValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 993
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

    .line 995
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isScreenOrientationLandscape()Z

    move-result v2

    if-nez v2, :cond_0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v0

    goto :goto_0

    :cond_0
    div-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    .line 997
    :goto_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getHotSeatsCellHeight()I

    move-result v0

    .line 998
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

    .line 999
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f070124

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr v0, p0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v0

    return v1
.end method

.method private static final calcGridSize(Landroid/content/Context;Z)V
    .locals 5

    .line 1152
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sStatusBarHeight:I

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getWorkspaceCellPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getWorkspaceCellPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 1153
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

    .line 1154
    :goto_0
    sget-object v3, Lcom/miui/home/launcher/DeviceConfig;->mActiveProfile:Lcom/miui/home/launcher/DeviceProfile;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getWorkspaceCellPaddingSide()I

    move-result v4

    mul-int/2addr v4, v2

    sub-int/2addr v1, v4

    invoke-virtual {v3, v1}, Lcom/miui/home/launcher/DeviceProfile;->setCellWorkingWidth(I)V

    .line 1155
    sget-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sIsInMultiWindowMode:Z

    if-nez v1, :cond_1

    .line 1156
    sget-object v1, Lcom/miui/home/launcher/DeviceConfig;->mActiveProfile:Lcom/miui/home/launcher/DeviceProfile;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenHeight()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {v1, v3}, Lcom/miui/home/launcher/DeviceProfile;->setCellWorkingHeight(I)V

    goto :goto_1

    .line 1158
    :cond_1
    sget-object v1, Lcom/miui/home/launcher/DeviceConfig;->mActiveProfile:Lcom/miui/home/launcher/DeviceProfile;

    sget v3, Lcom/miui/home/launcher/DeviceConfig;->sMultiWindowModeLauncherHeight:I

    sub-int/2addr v3, v0

    invoke-virtual {v1, v3}, Lcom/miui/home/launcher/DeviceProfile;->setCellWorkingHeight(I)V

    .line 1160
    :goto_1
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellWorkingHeight()I

    move-result v0

    sget-object v1, Lcom/miui/home/launcher/DeviceConfig;->sHotSeatsMarginBottom:Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-virtual {v1}, Lcom/miui/home/launcher/common/ChangeableValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x0

    .line 1161
    invoke-static {p0, v1}, Lcom/miui/home/launcher/DeviceConfig;->calcHotSeatsHeight(Landroid/content/Context;Z)I

    move-result v1

    const/4 v3, 0x1

    invoke-static {p0, v3}, Lcom/miui/home/launcher/DeviceConfig;->calcHotSeatsHeight(Landroid/content/Context;Z)I

    move-result v3

    sub-int/2addr v1, v3

    sub-int/2addr v0, v1

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sFolderWorkingHeight:I

    .line 1162
    invoke-static {p0, p1}, Lcom/miui/home/launcher/DeviceConfig;->loadCellsCountConfig(Landroid/content/Context;Z)V

    .line 1163
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->calcWorkspaceIndicatorMarginBottomInEditMode(Landroid/content/Context;)I

    move-result p1

    sput p1, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceIndicatorMarginBottomInEditMode:I

    .line 1164
    sget p1, Lcom/miui/home/launcher/DeviceConfig;->sCellCountX:I

    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountY:I

    invoke-static {p1, v0}, Lcom/miui/home/launcher/DeviceConfig;->getCellSizeVal(II)Ljava/lang/String;

    move-result-object p1

    .line 1165
    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->getDatabaseNameBySuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/miui/home/launcher/DeviceConfig;->sLauncherDatabaseName:Ljava/lang/String;

    .line 1166
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->tryToMigrateDefaultDatabase(Landroid/content/Context;)V

    .line 1167
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->calculateHotseatMaxCount()I

    move-result p1

    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->setHotseatMaxCount(I)V

    .line 1168
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

    .line 1169
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->loadWorkspaceIndicatorThumbnailHeight(Landroid/content/Context;)V

    .line 1170
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->calcSearchBarWidth(Landroid/content/Context;)I

    move-result p0

    sput p0, Lcom/miui/home/launcher/DeviceConfig;->sSearchBarWidth:I

    return-void
.end method

.method private static calcHotSeatsHeight(Landroid/content/Context;Z)I
    .locals 1

    .line 737
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p1, :cond_0

    .line 740
    invoke-static {}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->getInstance()Lcom/miui/home/launcher/common/LauncherIconSizeProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->getLauncherIconHeight()I

    move-result p1

    const v0, 0x7f0701ad

    .line 741
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr p1, p0

    goto :goto_1

    .line 743
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isScreenOrientationLandscape()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 744
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->useNavigationBarLayoutMode()Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f07019b

    .line 745
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_1
    const p1, 0x7f07019a

    .line 746
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    .line 748
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->useNavigationBarLayoutMode()Z

    move-result p1

    if-eqz p1, :cond_3

    const p1, 0x7f07019c

    .line 749
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_3
    const p1, 0x7f070199

    .line 750
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    :goto_0
    int-to-float p0, p0

    .line 752
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

    .line 715
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p1, :cond_0

    const p1, 0x7f0705c8

    .line 718
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 719
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->calcSearchBarMarginTop(Landroid/content/Context;)I

    move-result v0

    add-int/2addr p1, v0

    .line 720
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

    .line 726
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p1, :cond_0

    const p1, 0x7f0701a5

    .line 729
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const p1, 0x7f0701a4

    .line 731
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    :goto_0
    int-to-float p0, p0

    .line 733
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

    .line 450
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->useOldVersionIcons()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0700a7

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    .line 451
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->getInstance()Lcom/miui/home/launcher/common/LauncherIconSizeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->getLauncherIconWidth()I

    move-result v0

    :goto_0
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sIconWidth:I

    .line 452
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->useOldVersionIcons()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0700a4

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_1

    .line 453
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->getInstance()Lcom/miui/home/launcher/common/LauncherIconSizeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->getLauncherIconHeight()I

    move-result v0

    :goto_1
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sIconHeight:I

    .line 454
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sIconWidth:I

    const v1, 0x7f0701ac

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sApplicationIconContainerWidth:I

    .line 456
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sIconWidth:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sHotseatIconContainerWidth:I

    .line 457
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sIconHeight:I

    const v1, 0x7f0701ad

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr v0, p0

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sApplicationIconContainerHeight:I

    return-void
.end method

.method private static calcIndicatorMarginBottomInEditMode(Landroid/content/Context;)I
    .locals 4

    .line 1004
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

    .line 1006
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f070139

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->getDipPixelSize(F)I

    move-result v1

    add-int/2addr p0, v1

    .line 1008
    sget v1, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceIndicatorMarginBottom:I

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private static final calcLauncherHeightWhenMultiWindow(Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 2

    .line 491
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    const v1, 0x7f07061f

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    add-int/2addr v0, p1

    const-string/jumbo p1, "window"

    .line 492
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 493
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 494
    invoke-virtual {p0, p1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 495
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

    .line 689
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0705ca

    const v2, 0x7f0705cb

    if-eqz p1, :cond_0

    .line 692
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result p0

    .line 693
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    .line 694
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    sub-int v1, v0, p0

    .line 695
    invoke-static {v1, p1, v0}, Lcom/miui/home/launcher/common/Utilities;->boundToRange(III)I

    move-result v0

    if-ge v1, p1, :cond_2

    const-string p1, "Launcher.DeviceConfig"

    .line 698
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "please check navigationBar height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 701
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isShowNavigationBar()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 702
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    move v0, p0

    goto :goto_0

    .line 703
    :cond_1
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    move v0, p0

    :cond_2
    :goto_0
    int-to-float p0, v0

    .line 705
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

    .line 709
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0705cc

    .line 710
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    .line 711
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

    .line 974
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 975
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getWorkspaceCellPaddingSide()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellWidth()I

    move-result v1

    const v2, 0x7f0700a6

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    const v1, 0x7f0701a7

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

    .line 979
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 981
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

    .line 982
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 983
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->calcFoldIndicatorMarginBottomInEditMode(Landroid/content/Context;)I

    move-result p0

    return p0

    .line 985
    :cond_1
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->calcIndicatorMarginBottomInEditMode(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method private static calculateHotseatMaxCount()I
    .locals 3

    .line 1174
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceType()Lcom/miui/home/launcher/DeviceType;

    move-result-object v0

    sget-object v1, Lcom/miui/home/launcher/DeviceType;->FOLDABLE_DEVICE:Lcom/miui/home/launcher/DeviceType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    return v0

    .line 1177
    :cond_0
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sScreenSmallestWidth:I

    sget v1, Lcom/miui/home/launcher/DeviceConfig;->sHotseatIconContainerWidth:I

    div-int/2addr v0, v1

    .line 1178
    sget v1, Lcom/miui/home/launcher/DeviceConfig;->sCellCountX:I

    div-int v2, v0, v1

    add-int/2addr v1, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public static checkDarkenWallpaperSupport(Landroid/content/Context;)Z
    .locals 7

    .line 2328
    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_MIUI_12:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2330
    :cond_0
    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_P:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 2332
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.android.systemui"

    .line 2333
    invoke-virtual {p0, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 2334
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

    .line 2336
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_2
    return v2
.end method

.method public static checkIsAccessibilityEnabledAsync()V
    .locals 1

    .line 1973
    sget-object v0, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$2GeFyz3nMKubd-9nXPNGhyrdeQ4;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$2GeFyz3nMKubd-9nXPNGhyrdeQ4;

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static checkIsInSnapShotMode()V
    .locals 2

    .line 1929
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

    .line 2014
    sget-object v0, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$dLWxJdj8Zo4InhhGIEmYWidwUsM;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$dLWxJdj8Zo4InhhGIEmYWidwUsM;

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static checkIsSupportMultiWindowMode(Landroid/content/Context;)V
    .locals 1

    .line 838
    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_T:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    .line 839
    sput-boolean p0, Lcom/miui/home/launcher/DeviceConfig;->sIsSupportMultiWindowMode:Z

    return-void

    .line 842
    :cond_0
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

    .line 2361
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "hasSmallFreeformFeature"

    .line 2362
    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 2363
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

    .line 2365
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public static checkIsTetheringSupported()V
    .locals 1

    .line 2039
    sget-object v0, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$9R3IozFxgbwmVH-NTsWOjUFHwFw;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$9R3IozFxgbwmVH-NTsWOjUFHwFw;

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static checkSearchBarSupport(Landroid/content/Context;)V
    .locals 1

    .line 962
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->isHomeSupportSearchBar(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 963
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->isGlobalSearchSupportSearchBar(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 964
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

    .line 513
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->sSettingTitle:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 514
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->sCheckTitleRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 515
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->sCheckTitleRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static checkSystemUIFsgVersion()V
    .locals 1

    .line 2049
    sget-object v0, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$24EKnG26AjOng3n6JCDT3Q9lRJE;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$24EKnG26AjOng3n6JCDT3Q9lRJE;

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static clearBackupDB(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 1635
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

    .line 1636
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 1639
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public static confirmCellsCount(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x1

    .line 1367
    invoke-static {p0, v0}, Lcom/miui/home/launcher/DeviceConfig;->removeInvalidateDatabase(Landroid/content/Context;Z)V

    .line 1368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1369
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "miui_home_screen_cells_size"

    invoke-static {p0, v1, v0}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->putStringToSystem(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static doLauncherHavePaddingTopForStatusBarAndNotch()Z
    .locals 1

    .line 2140
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

.method private static enableMultiWindow()Z
    .locals 1

    .line 834
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->IS_BUILD_CETUS:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

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

    .line 1378
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sCellXMigratedFrom:I

    .line 1379
    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sCellYMigratedFrom:I

    return-void
.end method

.method public static getAllAppRecommendDividerPaddingBottom()I
    .locals 1

    .line 2251
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sAllAppsDividerBottom:I

    return v0
.end method

.method public static getAllAppRecommendDividerPaddingTop()I
    .locals 1

    .line 2247
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sAllAppsDividerTop:I

    return v0
.end method

.method public static getAllAppsBackgroundAlpha()I
    .locals 1

    .line 2219
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sAllAppsBackgroundAlpha:I

    return v0
.end method

.method public static getAllAppsCellHeight()I
    .locals 1

    .line 2186
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sAllAppsCellHeight:I

    return v0
.end method

.method public static getAllAppsColorMode()Lcom/miui/home/launcher/allapps/AllAppsColorMode;
    .locals 1

    .line 2215
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->sAllAppsColorMode:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    return-object v0
.end method

.method public static getAllAppsRecommendCount()I
    .locals 1

    .line 1399
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sRecommendAppsCount:I

    return v0
.end method

.method public static getApplicationIconContainerHeight()I
    .locals 1

    .line 1114
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sApplicationIconContainerHeight:I

    return v0
.end method

.method public static getApplicationIconContainerWidth()I
    .locals 1

    .line 1118
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sApplicationIconContainerWidth:I

    return v0
.end method

.method private static final getBetterDBForMigrate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1746
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1747
    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    .line 1748
    new-array v3, v2, [I

    .line 1749
    new-array v2, v2, [I

    .line 1750
    invoke-static {v0, v3}, Lcom/miui/home/launcher/ScreenUtils;->parseCellsSize(Ljava/lang/String;[I)Z

    move-result v0

    .line 1751
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

    .line 1759
    aget v1, v3, v0

    aget v4, v2, v0

    if-ne v1, v4, :cond_6

    const/4 v0, 0x1

    .line 1762
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

    .line 1764
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

    .line 1767
    :cond_4
    aget v0, v3, v0

    sget v1, Lcom/miui/home/launcher/DeviceConfig;->sCellCountY:I

    if-ge v0, v1, :cond_5

    goto :goto_0

    :cond_5
    move-object p0, p1

    :goto_0
    return-object p0

    .line 1772
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

    .line 1774
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

    .line 1777
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

    .line 1316
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

    .line 1320
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

    .line 1784
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 1787
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDatabaseNamePrefix()Ljava/lang/String;

    move-result-object v0

    .line 1788
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1789
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

    .line 1391
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountX:I

    return v0
.end method

.method public static final getCellCountXDef(Landroid/content/Context;)I
    .locals 0

    .line 1423
    sget p0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountXDef:I

    return p0
.end method

.method public static getCellCountXDrawerMode()I
    .locals 1

    .line 1395
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountXDrawerMode:I

    return v0
.end method

.method public static getCellCountXMax(Landroid/content/Context;)I
    .locals 0

    .line 1415
    sget p0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountXMax:I

    return p0
.end method

.method public static getCellCountXMin(Landroid/content/Context;)I
    .locals 0

    .line 1407
    sget p0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountXMin:I

    return p0
.end method

.method public static final getCellCountY()I
    .locals 1

    .line 1403
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountY:I

    return v0
.end method

.method public static final getCellCountYDef(Landroid/content/Context;)I
    .locals 0

    .line 1438
    sget p0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountYDef:I

    return p0
.end method

.method public static getCellCountYMax(Landroid/content/Context;)I
    .locals 0

    .line 1419
    sget p0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountYMax:I

    return p0
.end method

.method public static getCellCountYMin(Landroid/content/Context;)I
    .locals 0

    .line 1411
    sget p0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountYMin:I

    return p0
.end method

.method public static final getCellHeight()I
    .locals 1

    .line 1450
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveProfile:Lcom/miui/home/launcher/DeviceProfile;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DeviceProfile;->getCellHeight()I

    move-result v0

    return v0
.end method

.method public static getCellHorizontalSpacing()I
    .locals 1

    .line 2103
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sCellHorizontalSpacing:I

    return v0
.end method

.method public static final getCellSizeVal(II)Ljava/lang/String;
    .locals 1

    .line 1454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "x"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCellVerticalSpacing()I
    .locals 1

    .line 2107
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sCellVerticalSpacing:I

    return v0
.end method

.method public static final getCellWidth()I
    .locals 1

    .line 1446
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveProfile:Lcom/miui/home/launcher/DeviceProfile;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DeviceProfile;->getCellWidth()I

    move-result v0

    return v0
.end method

.method private static getCellWorkingHeight()I
    .locals 1

    .line 2385
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveProfile:Lcom/miui/home/launcher/DeviceProfile;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DeviceProfile;->getCellWorkingHeight()I

    move-result v0

    return v0
.end method

.method private static getCellWorkingWidth()I
    .locals 1

    .line 2389
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveProfile:Lcom/miui/home/launcher/DeviceProfile;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DeviceProfile;->getCellWorkingWidth()I

    move-result v0

    return v0
.end method

.method public static getClosingAppDefaultDisappearRect()Landroid/graphics/Rect;
    .locals 6

    const-string v0, "Launcher.DeviceConfig"

    .line 2393
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

    .line 2394
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getRotation()I

    move-result v0

    invoke-static {v0}, Lcom/miui/home/recents/util/RotationHelper;->isLandscapeRotation(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2395
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenHeight()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v1

    :goto_0
    if-eqz v0, :cond_1

    .line 2396
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v0

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenHeight()I

    move-result v0

    .line 2397
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

    .line 2401
    iput v4, v2, Landroid/graphics/Rect;->left:I

    sub-float v4, v0, v3

    float-to-int v4, v4

    .line 2402
    iput v4, v2, Landroid/graphics/Rect;->top:I

    add-float/2addr v1, v3

    float-to-int v1, v1

    .line 2403
    iput v1, v2, Landroid/graphics/Rect;->right:I

    add-float/2addr v0, v3

    float-to-int v0, v0

    .line 2404
    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    .line 2405
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getRotation()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformCoordinate(IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentDefaultScreenId()J
    .locals 2

    .line 2082
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/LauncherMode;->getCurrentDefaultScreenId()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getCurrentDefaultScreenIdFromPreference()J
    .locals 4

    .line 2086
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

    .line 1442
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->sCurrentScreenCells:Ljava/lang/String;

    return-object v0
.end method

.method public static getDatabaseName()Ljava/lang/String;
    .locals 1

    .line 1478
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->sLauncherDatabaseName:Ljava/lang/String;

    return-object v0
.end method

.method public static final getDatabaseNameBySuffix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1458
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

    .line 1463
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "_rotatable"

    .line 1466
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
    .locals 0

    .line 1483
    invoke-static {p0, p1}, Lcom/miui/home/launcher/DeviceConfig;->calcDefaultXmlID(Landroid/content/Context;Lcom/miui/home/launcher/allapps/LauncherMode;)I

    move-result p0

    if-eqz p0, :cond_0

    return p0

    .line 1488
    :cond_0
    invoke-static {p1}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isElderlyManMode(Lcom/miui/home/launcher/allapps/LauncherMode;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 1489
    sget-boolean p0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p0, :cond_1

    const p0, 0x7f140012

    goto :goto_0

    :cond_1
    const p0, 0x7f140025

    :goto_0
    return p0

    .line 1493
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result p0

    const/4 p1, 0x4

    if-ge p0, p1, :cond_3

    const p0, 0x7f14000e

    return p0

    .line 1497
    :cond_3
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->obtainDefaultXmlID()I

    move-result p0

    return p0
.end method

.method public static declared-synchronized getDesignedDefaultScreenId(Landroid/content/Context;)J
    .locals 7

    const-class v0, Lcom/miui/home/launcher/DeviceConfig;

    monitor-enter v0

    .line 1817
    :try_start_0
    sget-wide v1, Lcom/miui/home/launcher/DeviceConfig;->sDesignedDefaultScreenId:J

    sget-wide v3, Lcom/miui/home/launcher/DeviceConfig;->INVALIDATE_DEFAULT_SCREEN_ID:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 1818
    sget-wide v1, Lcom/miui/home/launcher/DeviceConfig;->sDesignedDefaultScreenId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-wide v1

    .line 1821
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

    .line 1822
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 1823
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 1825
    :cond_1
    :goto_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    .line 1826
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v3, :cond_4

    :cond_2
    const/4 v5, 0x1

    if-eq v4, v5, :cond_4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    goto :goto_0

    .line 1830
    :cond_3
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "default"

    .line 1831
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1832
    sget-object v4, Lcom/miui/home/R$styleable;->Favorite:[I

    invoke-virtual {p0, v2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    const/16 v5, 0x10

    .line 1833
    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sput-wide v5, Lcom/miui/home/launcher/DeviceConfig;->sDesignedDefaultScreenId:J

    .line 1834
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .line 1837
    :cond_4
    sget-wide v1, Lcom/miui/home/launcher/DeviceConfig;->sDesignedDefaultScreenId:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-wide v1

    .line 1841
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

    .line 1030
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveProfile:Lcom/miui/home/launcher/DeviceProfile;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DeviceProfile;->getDeviceHeight()I

    move-result v0

    return v0
.end method

.method public static getDeviceType()Lcom/miui/home/launcher/DeviceType;
    .locals 2

    .line 2454
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_0

    .line 2455
    sget-object v0, Lcom/miui/home/launcher/DeviceType;->PAD:Lcom/miui/home/launcher/DeviceType;

    return-object v0

    :cond_0
    const-string v0, "persist.sys.muiltdisplay_type"

    const/4 v1, 0x0

    .line 2456
    invoke-static {v0, v1}, Lcom/miui/launcher/utils/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2457
    sget-object v0, Lcom/miui/home/launcher/DeviceType;->FOLDABLE_DEVICE:Lcom/miui/home/launcher/DeviceType;

    return-object v0

    .line 2459
    :cond_1
    sget-object v0, Lcom/miui/home/launcher/DeviceType;->PHONE:Lcom/miui/home/launcher/DeviceType;

    return-object v0
.end method

.method public static final getDeviceWidth()I
    .locals 1

    .line 1026
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveProfile:Lcom/miui/home/launcher/DeviceProfile;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DeviceProfile;->getDeviceWidth()I

    move-result v0

    return v0
.end method

.method private static getDimenFromPkgResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    .line 2282
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    const-string v1, "dimen"

    .line 2283
    invoke-virtual {p0, p2, v1, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    .line 2285
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2288
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return v0
.end method

.method public static getDragIconScaleRatio()F
    .locals 1

    .line 948
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sDragIconScaleRatio:F

    return v0
.end method

.method public static final getEditModeTopMenuMarginTop()I
    .locals 2

    .line 1137
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsInMultiWindowMode:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f070126

    goto :goto_0

    .line 1140
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->doLauncherHavePaddingTopForStatusBarAndNotch()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f070127

    goto :goto_0

    :cond_1
    const v0, 0x7f070125

    .line 1144
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

    .line 2190
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sFolderCellHeight:I

    return v0
.end method

.method public static getFolderCellMaxWidth()I
    .locals 1

    .line 2194
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sFolderCellMaxWidth:I

    return v0
.end method

.method public static getGlobalSwipeUpPackage(Landroid/content/Context;)I
    .locals 2

    .line 1925
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

    .line 1188
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveProfile:Lcom/miui/home/launcher/DeviceProfile;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DeviceProfile;->getHotSeatsCellContentHeight()I

    move-result v0

    return v0
.end method

.method public static getHotSeatsCellHeight()I
    .locals 1

    .line 1312
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveProfile:Lcom/miui/home/launcher/DeviceProfile;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DeviceProfile;->getHotSeatsCellHeight()I

    move-result v0

    return v0
.end method

.method public static getHotSeatsCellWidth()I
    .locals 1

    .line 1304
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveProfile:Lcom/miui/home/launcher/DeviceProfile;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DeviceProfile;->getHotSeatsCellWidth()I

    move-result v0

    return v0
.end method

.method public static getHotSeatsHeight()I
    .locals 1

    .line 677
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->sHotSeatsHeight:Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/ChangeableValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getHotSeatsListCellWidth()I
    .locals 1

    .line 1308
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveProfile:Lcom/miui/home/launcher/DeviceProfile;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DeviceProfile;->getHotSeatsCellListWidth()I

    move-result v0

    return v0
.end method

.method public static getHotSeatsMarginBottom()I
    .locals 1

    .line 673
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

    .line 1470
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sHotseatMaxCount:I

    return v0
.end method

.method public static final getIconHeight()I
    .locals 1

    .line 1110
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sIconHeight:I

    return v0
.end method

.method public static final getIconWidth()I
    .locals 1

    .line 1106
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sIconWidth:I

    return v0
.end method

.method public static getIterateDirection(Z)I
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    .line 802
    sget-boolean p0, Lcom/miui/home/launcher/DeviceConfig;->sIsLayoutRtl:Z

    if-eqz p0, :cond_0

    move v0, v1

    :cond_0
    return v0

    .line 804
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

    .line 297
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sLastRotation:I

    return v0
.end method

.method public static final getMiuiTitleHeight()I
    .locals 3

    .line 1545
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellHeight()I

    move-result v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellVerticalSpacing()I

    move-result v1

    add-int/2addr v0, v1

    .line 1546
    invoke-static {}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->getInstance()Lcom/miui/home/launcher/common/LauncherIconSizeProvider;

    move-result-object v1

    .line 1547
    invoke-virtual {v1}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->getLauncherIconHeight()I

    move-result v1

    sget v2, Lcom/miui/home/launcher/DeviceConfig;->sMiuiWidgetPaddingTop:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method public static final getMiuiWidgetPaddingTop()I
    .locals 1

    .line 1541
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sMiuiWidgetPaddingTop:I

    return v0
.end method

.method public static final getMiuiWidgetSizeSpec(IIZ)J
    .locals 2

    .line 1552
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->sMiuiWidgetSizeSpec:Lcom/miui/home/launcher/widget/MiuiWidgetSizeSpec;

    sget-object v1, Lcom/miui/home/launcher/DeviceConfig;->mActiveProfile:Lcom/miui/home/launcher/DeviceProfile;

    invoke-interface {v0, v1, p0, p1, p2}, Lcom/miui/home/launcher/widget/MiuiWidgetSizeSpec;->getMiuiWidgetSizeSpec(Lcom/miui/home/launcher/DeviceProfile;IIZ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final getMiuiWidgetSizeSpec(Lcom/miui/home/launcher/DeviceProfile;IIZ)J
    .locals 1

    .line 1556
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->sMiuiWidgetSizeSpec:Lcom/miui/home/launcher/widget/MiuiWidgetSizeSpec;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/miui/home/launcher/widget/MiuiWidgetSizeSpec;->getMiuiWidgetSizeSpec(Lcom/miui/home/launcher/DeviceProfile;IIZ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getNetWorkConnectedString()Ljava/lang/String;
    .locals 1

    .line 2035
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

    .line 2078
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

    .line 2295
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isNotch()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "com.android.systemui"

    const-string v1, "notch_height"

    .line 2298
    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/DeviceConfig;->getDimenFromPkgResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static final getOptimalDB(Landroid/content/Context;Lcom/miui/home/launcher/allapps/LauncherMode;)Ljava/io/File;
    .locals 5

    const/4 v0, 0x0

    .line 1718
    :try_start_0
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/allapps/LauncherMode;->getLauncherDatabaseDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 1719
    new-instance v2, Lcom/miui/home/launcher/DeviceConfig$4;

    invoke-direct {v2}, Lcom/miui/home/launcher/DeviceConfig$4;-><init>()V

    invoke-virtual {v1, v2}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1726
    array-length v2, v1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    move-object v3, v0

    .line 1729
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_1

    .line 1730
    aget-object v4, v1, v2

    invoke-static {v3, v4}, Lcom/miui/home/launcher/DeviceConfig;->getBetterDBForMigrate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "Launcher.DeviceConfig"

    .line 1732
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "find optimal db "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1733
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    .line 1736
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

    .line 1738
    invoke-static {p1, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public static getQuickCallCellVerticalSpacing()I
    .locals 1

    .line 2111
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sQuickCallCellVerticalSpacing:I

    return v0
.end method

.method public static getQuickEditScreenRatio()F
    .locals 1

    .line 952
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sQuickEditScreenRatio:F

    return v0
.end method

.method public static getRealScreenHeight()I
    .locals 1

    .line 1042
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveProfile:Lcom/miui/home/launcher/DeviceProfile;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DeviceProfile;->getRealScreenHeight()I

    move-result v0

    return v0
.end method

.method public static final getRecommendGridPaddingBottom()I
    .locals 1

    .line 1148
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

    .line 301
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sRotation:I

    return v0
.end method

.method public static final getScreenDensity()F
    .locals 1

    .line 1054
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sScreenDensity:F

    return v0
.end method

.method public static getScreenDensityDpi()I
    .locals 1

    .line 1058
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sScreenDensityDpi:I

    return v0
.end method

.method public static final getScreenHeight()I
    .locals 1

    .line 1038
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveProfile:Lcom/miui/home/launcher/DeviceProfile;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DeviceProfile;->getScreenHeight()I

    move-result v0

    return v0
.end method

.method public static getScreenLongSize()I
    .locals 1

    .line 1046
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveProfile:Lcom/miui/home/launcher/DeviceProfile;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DeviceProfile;->getScreenLongSize()I

    move-result v0

    return v0
.end method

.method public static final getScreenWidth()I
    .locals 1

    .line 1034
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveProfile:Lcom/miui/home/launcher/DeviceProfile;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DeviceProfile;->getScreenWidth()I

    move-result v0

    return v0
.end method

.method public static getSearchBarHolderVerticalPadding(Landroid/content/Context;)I
    .locals 1

    .line 2202
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isShowNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2203
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070064

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    .line 2204
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070063

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static getSearchBarLightThreshold()F
    .locals 1

    .line 2198
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sSearchBarLightThreshold:F

    return v0
.end method

.method public static getSearchBarMarginBottom()I
    .locals 1

    .line 669
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

    .line 627
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "key_home_screen_search_bar_source"

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSearchBarStyle(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 665
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "key_home_screen_search_bar_style"

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSearchBarUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 661
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "key_home_screen_search_bar_url"

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSearchBarWidth()I
    .locals 1

    .line 681
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sSearchBarWidth:I

    return v0
.end method

.method public static getSearchBarWidthDelta()I
    .locals 1

    .line 685
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sSearchBarWidthDelta:I

    return v0
.end method

.method public static getSettingTitle()Ljava/lang/String;
    .locals 2

    .line 509
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

    .line 528
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.android.settings"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "home_title"

    const-string v1, "string"

    const-string v2, "com.android.settings"

    .line 529
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 531
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "Launcher.DeviceConfig"

    const-string v1, "getSettingTitle failed"

    .line 534
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getShortcutMenuDisappearThreshold()I
    .locals 1

    .line 1132
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sShortcutMenuDisappearThreshold:I

    return v0
.end method

.method public static final getStatusBarHeight()I
    .locals 1

    .line 1126
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sStatusBarHeight:I

    return v0
.end method

.method public static getSystemUIFsgVersion()I
    .locals 1

    .line 2056
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->sSystemuiFsgVersion:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public static getThemeValues()Lmiui/content/res/ThemeValues;
    .locals 1

    .line 777
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->sThemeValues:Lmiui/content/res/ThemeValues;

    return-object v0
.end method

.method public static getWidgetCellDefaultHeight()I
    .locals 1

    .line 2099
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellDefaultHeight:I

    return v0
.end method

.method public static getWidgetCellDefaultWidth()I
    .locals 1

    .line 2095
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellDefaultWidth:I

    return v0
.end method

.method public static final getWidgetSpanX(I)I
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1532
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

    .line 1537
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

    .line 1102
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

    .line 1082
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceCellPaddingSide:I

    return v0
.end method

.method public static final getWorkspaceCellPaddingTop()I
    .locals 1

    .line 1086
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsInMultiWindowMode:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1087
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceCellPaddingTopMultiWindow:I

    return v0

    .line 1089
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getWorkspaceNormalModeCellPaddingTop()I

    move-result v0

    return v0
.end method

.method public static getWorkspaceIndicatorMarginBottom()I
    .locals 1

    .line 1797
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceIndicatorMarginBottom:I

    return v0
.end method

.method public static getWorkspaceIndicatorMarginBottomInEditMode()I
    .locals 1

    .line 1801
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceIndicatorMarginBottomInEditMode:I

    return v0
.end method

.method public static getWorkspaceIndicatorThumbnailHeight()I
    .locals 1

    .line 1018
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceIndicatorThumbnailHeight:I

    return v0
.end method

.method public static final getWorkspaceInvalidateEdgeWidth()I
    .locals 1

    .line 1122
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceInvalidateEdgeWidth:I

    return v0
.end method

.method private static final getWorkspaceNormalModeCellPaddingTop()I
    .locals 1

    .line 1094
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isShowNotch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1095
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceCellPaddingTopNotch:I

    return v0

    .line 1097
    :cond_0
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceCellPaddingTop:I

    return v0
.end method

.method public static getWorkspacePaddingTop(Landroid/content/Context;)F
    .locals 2

    .line 1805
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070618

    .line 1806
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 1807
    sget-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sIsInMultiWindowMode:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f070685

    .line 1808
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    add-float/2addr v0, p0

    return v0

    .line 1810
    :cond_0
    sget-boolean p0, Lcom/miui/home/launcher/DeviceConfig;->sIsInMultiWindowMode:Z

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method private static getXmlId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    .line 1358
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

    .line 1359
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static hasNavigationBar()Z
    .locals 8

    .line 540
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x1c

    if-le v0, v3, :cond_0

    :try_start_0
    const-string v0, "android.view.WindowManagerGlobal"

    .line 542
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v3, "getWindowManagerService"

    .line 543
    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 544
    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 545
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "hasNavigationBar"

    const/4 v4, 0x1

    .line 546
    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v2

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 547
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v3

    .line 548
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "getDisplayId"

    .line 549
    new-array v7, v2, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 550
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

    .line 552
    invoke-static {v1, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    :try_start_1
    const-string v0, "android.view.WindowManagerGlobal"

    .line 556
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v3, "getWindowManagerService"

    .line 557
    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 558
    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 559
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "hasNavigationBar"

    .line 560
    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 561
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

    .line 563
    invoke-static {v1, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v2
.end method

.method private initDeviceProfile(Landroid/content/Context;)V
    .locals 4

    .line 461
    new-instance v0, Lcom/miui/home/launcher/DeviceProfile$Builder;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/DeviceProfile$Builder;-><init>(Landroid/content/Context;)V

    .line 462
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    const-string/jumbo v2, "window"

    .line 463
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 464
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 465
    invoke-virtual {v2, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 467
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 468
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 469
    sput v2, Lcom/miui/home/launcher/DeviceConfig;->sScreenSmallestWidth:I

    .line 470
    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/DeviceProfile$Builder;->setScreenSize(II)Lcom/miui/home/launcher/DeviceProfile$Builder;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/miui/home/launcher/DeviceProfile$Builder;->setDeviceConfig(Lcom/miui/home/launcher/DeviceConfig;)Lcom/miui/home/launcher/DeviceProfile$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/DeviceProfile$Builder;->build()Lcom/miui/home/launcher/DeviceProfile;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/home/launcher/DeviceConfig;->landscapeProfile:Lcom/miui/home/launcher/DeviceProfile;

    .line 471
    invoke-virtual {v0, v2, v1}, Lcom/miui/home/launcher/DeviceProfile$Builder;->setScreenSize(II)Lcom/miui/home/launcher/DeviceProfile$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/DeviceProfile$Builder;->setDeviceConfig(Lcom/miui/home/launcher/DeviceConfig;)Lcom/miui/home/launcher/DeviceProfile$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/DeviceProfile$Builder;->build()Lcom/miui/home/launcher/DeviceProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/DeviceConfig;->portraitProfile:Lcom/miui/home/launcher/DeviceProfile;

    .line 472
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceProfile(Landroid/content/Context;)Lcom/miui/home/launcher/DeviceProfile;

    move-result-object p1

    sput-object p1, Lcom/miui/home/launcher/DeviceConfig;->mActiveProfile:Lcom/miui/home/launcher/DeviceProfile;

    return-void
.end method

.method public static is720Mode()Z
    .locals 1

    .line 2074
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIs720Mode:Z

    return v0
.end method

.method public static declared-synchronized isAccessibilityEnabled()Z
    .locals 2

    const-class v0, Lcom/miui/home/launcher/DeviceConfig;

    monitor-enter v0

    .line 1965
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

.method public static isAllowRotate()Z
    .locals 2

    .line 2511
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "cetus"

    .line 2512
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isAppStoreEnabled()Z
    .locals 1

    .line 1941
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsAppStoreEnabled:Z

    return v0
.end method

.method public static isAssistantCTAAgree(Landroid/content/Context;)Z
    .locals 1

    .line 1869
    sget-object v0, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->sAssistantWidget:Lcom/miui/home/launcher/AssistantWidget;

    invoke-interface {v0, p0}, Lcom/miui/home/launcher/AssistantWidget;->isAssistantCTAAgree(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private isCellSizeChangedByTheme(Landroid/content/Context;Lcom/miui/home/launcher/compat/LauncherCellCount;)Z
    .locals 7

    .line 2415
    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountXDef(Landroid/content/Context;)I

    move-result v0

    .line 2416
    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountXMax(Landroid/content/Context;)I

    move-result v1

    .line 2417
    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountXMin(Landroid/content/Context;)I

    move-result v2

    .line 2418
    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountYDef(Landroid/content/Context;)I

    move-result v3

    .line 2419
    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountYMin(Landroid/content/Context;)I

    move-result v4

    .line 2420
    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountYMax(Landroid/content/Context;)I

    move-result v5

    .line 2421
    sget-boolean v6, Lcom/miui/home/launcher/DeviceConfig;->IS_SB_BUILD:Z

    if-nez v6, :cond_1

    sget-boolean v6, Lcom/miui/home/launcher/DeviceConfig;->IS_KDDI_BUILD:Z

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    .line 2423
    :cond_1
    :goto_0
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isNoWordModel()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->isThemeCoverCellConfig:Z

    if-nez v2, :cond_2

    move v4, v5

    .line 2426
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPocoLauncher()Z

    move-result v2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_5

    .line 2427
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

    .line 2431
    invoke-static {p1, v0, v5}, Lcom/miui/home/launcher/common/PreferenceUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_2

    :cond_4
    :goto_1
    const-string v0, "pref_key_use_theme_cells_size"

    .line 2429
    invoke-static {p1, v0, v6}, Lcom/miui/home/launcher/common/PreferenceUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    move v0, v6

    goto :goto_4

    :cond_5
    if-ne v0, v1, :cond_7

    if-eq v3, v4, :cond_6

    goto :goto_3

    :cond_6
    const-string v0, "pref_key_use_theme_cells_size"

    .line 2439
    invoke-static {p1, v0, v5}, Lcom/miui/home/launcher/common/PreferenceUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    :goto_2
    move v0, v5

    goto :goto_4

    :cond_7
    :goto_3
    const-string v0, "pref_key_use_theme_cells_size"

    .line 2437
    invoke-static {p1, v0, v6}, Lcom/miui/home/launcher/common/PreferenceUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    move v0, v6

    .line 2441
    :goto_4
    instance-of v1, p2, Lcom/miui/home/launcher/compat/LauncherCellCountCompatNoWord;

    if-eqz v1, :cond_a

    if-nez v0, :cond_8

    .line 2442
    sget-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->isThemeCoverCellConfig:Z

    if-eqz v1, :cond_9

    :cond_8
    move v5, v6

    .line 2443
    :cond_9
    move-object v1, p2

    check-cast v1, Lcom/miui/home/launcher/compat/LauncherCellCountCompatNoWord;

    .line 2444
    invoke-virtual {v1}, Lcom/miui/home/launcher/compat/LauncherCellCountCompatNoWord;->getLoadResCellConfig()Z

    move-result v2

    if-eq v2, v5, :cond_a

    .line 2445
    invoke-virtual {v1, v5}, Lcom/miui/home/launcher/compat/LauncherCellCountCompatNoWord;->setLoadResCellConfig(Z)V

    .line 2447
    invoke-static {p2, p1}, Lcom/miui/home/launcher/DeviceConfig;->loadCellConfigFromController(Lcom/miui/home/launcher/compat/LauncherCellCount;Landroid/content/Context;)V

    :cond_a
    return v0
.end method

.method public static isCotaOrangeDevice()Z
    .locals 3

    const-string v0, "OR"

    const-string v1, "persist.sys.cota.carrier"

    const-string v2, ""

    .line 2381
    invoke-static {v1, v2}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getStringFromSystemProperites(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2380
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isCurrentThemeSupportSearchBar(Landroid/content/Context;)Z
    .locals 2

    .line 619
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

    .line 2115
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsDarkMode:Z

    return v0
.end method

.method public static isDarkModeChanged()Z
    .locals 5

    .line 2119
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    .line 2120
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2121
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

    .line 2122
    :goto_0
    sget-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sIsDarkMode:Z

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    const-string v1, "Launcher.DeviceConfig"

    .line 2123
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isDarkModeChanged , nowIsDarkMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", sIsDarkMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lcom/miui/home/launcher/DeviceConfig;->sIsDarkMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2124
    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsDarkMode:Z

    return v2
.end method

.method public static isDarkenWholeWallpaper(Landroid/content/Context;)Z
    .locals 2

    .line 2348
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sSupportDarkenWallpaper:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2351
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

    .line 2255
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsDefaultIcon:Z

    return v0
.end method

.method public static isDisableOldQuickSwitch()Z
    .locals 1

    .line 2274
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportRecentsAndFsGesture()Z

    move-result v0

    return v0
.end method

.method public static isFirstBoot()Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.app.ActivityThread"

    .line 2174
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getPackageManager"

    .line 2175
    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    .line 2176
    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2177
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "isFirstBoot"

    new-array v4, v0, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 2178
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

    .line 2180
    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public static isFoldDevice()Z
    .locals 1

    .line 2464
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->IS_FOLD_DEVICE:Z

    return v0
.end method

.method public static isGlobalSearchBottomEffectEnable(Landroid/content/Context;)Z
    .locals 2

    .line 1915
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

    .line 1920
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

    .line 1905
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

    .line 586
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.android.quicksearchbox"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "support_home_screen_search_bar"

    const-string v1, "bool"

    const-string v2, "com.android.quicksearchbox"

    .line 587
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 589
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 592
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isGlobalSearchSupportSearchBarIcon(Landroid/content/Context;)Z
    .locals 3

    .line 599
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.android.quicksearchbox"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "support_search_bar_baidu_icon"

    const-string v1, "bool"

    const-string v2, "com.android.quicksearchbox"

    .line 600
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 602
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 605
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isHasNavigationBar()Z
    .locals 1

    .line 570
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sHasNavigationBar:Z

    return v0
.end method

.method public static isHideNotch()Z
    .locals 1

    .line 2132
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sHideNotch:Z

    return v0
.end method

.method public static isHomeSupportIconSearchBar(Landroid/content/Context;)Z
    .locals 1

    .line 578
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/allapps/LauncherMode;->isHomeSupportIconSearchBar(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isHomeSupportSearchBar(Landroid/content/Context;)Z
    .locals 1

    .line 574
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/allapps/LauncherMode;->isHomeSupportSearchBar(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isHotseatsAppTitleHided()Z
    .locals 1

    .line 1957
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsHotseatsAppTitleHided:Z

    return v0
.end method

.method public static isInLargeScreen(Landroid/content/Context;)Z
    .locals 1

    .line 2507
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p0, p0, 0xf

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isInMultiWindowMode()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 821
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsInMultiWindowMode:Z

    return v0
.end method

.method public static isInSnapshotMode()Z
    .locals 1

    .line 1933
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsInSnapShotMode:Z

    return v0
.end method

.method public static final isInvalidateCellPosition(IIII)Z
    .locals 0

    add-int/2addr p0, p2

    .line 1564
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

    .line 503
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isUseFixedRotationTransform()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isRotatable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isLargeRtlLayout()Z
    .locals 1

    .line 797
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isLayoutRtl()Z
    .locals 1

    .line 793
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsLayoutRtl:Z

    return v0
.end method

.method public static isLight()Z
    .locals 1

    .line 2227
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasAppliedLightWallpaper()Z

    move-result v0

    return v0
.end method

.method public static final isMigratingDBFromOthers()Z
    .locals 2

    .line 1374
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

    .line 2372
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

    .line 2374
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method private static isNaturalWidth720p(Landroid/content/Context;)Z
    .locals 1

    .line 1324
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

    .line 2031
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

    .line 2468
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

    .line 1022
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isRotatable()Z
    .locals 1

    .line 789
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sRotatable:Z

    return v0
.end method

.method public static final isScreenOrientationChanged()Z
    .locals 1

    .line 1062
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sScreenOrientationChanged:Z

    return v0
.end method

.method public static final isScreenOrientationLandscape()Z
    .locals 2

    .line 1074
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

    .line 1066
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sScreenSizeChanged:Z

    return v0
.end method

.method public static isSearchBarVisibleChanged()Z
    .locals 1

    .line 1070
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsSearchBarChanged:Z

    return v0
.end method

.method public static isShowGestureLine()Z
    .locals 1

    .line 1949
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsShowGestureLine:Z

    return v0
.end method

.method public static isShowNavigationBar()Z
    .locals 1

    .line 1945
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

    .line 2136
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

    .line 970
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

    .line 484
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    sget v0, Lcom/miui/home/launcher/common/Utilities;->MIUI_VERSION:F

    const/high16 v3, 0x41300000    # 11.0f

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_0

    .line 486
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isHasNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 487
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

    .line 1363
    invoke-static {v0, v1}, Lcom/miui/home/library/utils/MiuiFeatureUtils;->isSystemFeatureSupported(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportLaunchPairApp()Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.app.ActivityOptions"

    .line 2473
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

    .line 2476
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

    .line 2479
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    return v0
.end method

.method public static isSupportMIUIWidget(Landroid/content/Context;)Z
    .locals 1

    .line 1876
    sget-object v0, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->sAssistantWidget:Lcom/miui/home/launcher/AssistantWidget;

    invoke-interface {v0, p0}, Lcom/miui/home/launcher/AssistantWidget;->isSupportMIUIWidget(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isSupportMultipleSmallWindows()Z
    .locals 1

    .line 2500
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->IS_FOLD_DEVICE:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 2501
    :cond_1
    :goto_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportNewFreeForm()Z

    move-result v0

    return v0
.end method

.method public static isSupportNewFreeForm()Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "miui.app.MiuiFreeFormManager"

    .line 2526
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v3, "getMiuiFreeformVersion"

    const/4 v4, 0x0

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/miui/launcher/utils/ReflectUtils;->callStaticMethod(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Launcher.DeviceConfig"

    const-string v3, "getMiuiFreeformVersion error"

    .line 2528
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v0

    :goto_0
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isSupportPip()Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "miui.app.MiuiFreeFormManager"

    .line 2488
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v3, "isSupportPin"

    const/4 v4, 0x0

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/miui/launcher/utils/ReflectUtils;->callStaticMethod(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "Launcher.DeviceConfig"

    .line 2489
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSupportPip: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Launcher.DeviceConfig"

    const-string v3, "isSupportPip error"

    .line 2491
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public static isSupportRecentsAndFsGesture()Z
    .locals 1

    .line 2263
    invoke-static {}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->isSupportRecentsAndFsGesture()Z

    move-result v0

    return v0
.end method

.method public static isSupportSearchBar()Z
    .locals 1

    .line 958
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsSupportSearchBar:Z

    return v0
.end method

.method public static isSupportSearchBarLongPress(Landroid/content/Context;)Z
    .locals 2

    .line 635
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

    .line 643
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

    .line 639
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

    .line 2355
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sSupportSmallWindow:Z

    return v0
.end method

.method public static isTetheringSupported()Z
    .locals 1

    .line 2043
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsTetheringSupported:Z

    return v0
.end method

.method public static isThemeCoverCellConfig()Z
    .locals 1

    .line 2409
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->isThemeCoverCellConfig:Z

    return v0
.end method

.method public static isUseFixedRotationTransform()Z
    .locals 1

    .line 499
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

    .line 250
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->USE_GOOGLE_MINUS_SCREEN_REGIONS:Ljava/util/HashSet;

    sget-object v1, Lcom/miui/home/launcher/DeviceConfig;->CURRENT_REGION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->USE_GOOGLE_MINUS_SCREEN_CLIENT_ID:Ljava/util/HashSet;

    sget-object v1, Lcom/miui/home/launcher/LauncherAssistantCompat;->CLIENT_ID_BASE:Ljava/lang/String;

    .line 251
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/miui/home/launcher/LauncherAssistantCompat;->CAN_SWITCH_MINUS_SCREEN:Z

    if-eqz v0, :cond_0

    .line 252
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

    .line 1560
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

    .line 1991
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

    .line 1993
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

    .line 1998
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

    .line 2004
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    .line 2005
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->setIsAccessibilityEnabled(Z)V

    return-void

    :cond_0
    return-void
.end method

.method static synthetic lambda$checkIsAccessibilityEnabledAsync$7(Ljava/util/List;ILjava/lang/String;)V
    .locals 1

    .line 1992
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->stream(Ljava/util/Collection;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$9OnBuQvuslchjslvn8oVHnMma2g;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$9OnBuQvuslchjslvn8oVHnMma2g;-><init>(I)V

    .line 1993
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object p1, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$Y_mBsMR4k5_oPMgP2CBDVr6617g;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$Y_mBsMR4k5_oPMgP2CBDVr6617g;

    .line 1996
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$nz3benqVwBIFUQEAXQxPHyvFw3U;

    invoke-direct {p1, p2}, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$nz3benqVwBIFUQEAXQxPHyvFw3U;-><init>(Ljava/lang/String;)V

    .line 2003
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method static synthetic lambda$checkIsAccessibilityEnabledAsync$8()V
    .locals 4

    const/4 v0, 0x0

    .line 1974
    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->setIsAccessibilityEnabled(Z)V

    .line 1976
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enabled_accessibility_services"

    .line 1975
    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1980
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    const-string v2, "accessibility"

    .line 1981
    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 1985
    :cond_1
    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v1

    const-string v2, ":"

    .line 1986
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x7

    .line 1990
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->stream(Ljava/util/Collection;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v3, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$2EbDvr98kUJb-Y6vBAlC5C6dwxg;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$2EbDvr98kUJb-Y6vBAlC5C6dwxg;

    .line 1991
    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v3, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$v2SDZl1CHcZb66B1EYDk-eVu5bM;

    invoke-direct {v3, v1, v2}, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$v2SDZl1CHcZb66B1EYDk-eVu5bM;-><init>(Ljava/util/List;I)V

    .line 1992
    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method static synthetic lambda$checkIsNetworkConnectedAsync$9()V
    .locals 2

    .line 2015
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const-string v1, "connectivity"

    .line 2016
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2017
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2020
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2022
    :goto_0
    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->setIsNetWorkConnected(Z)V

    return-void
.end method

.method static synthetic lambda$checkIsSupportMultiWindowMode$2(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    .line 844
    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsSupportMultiWindowMode:Z

    .line 846
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

    .line 849
    invoke-static {v1, v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_0

    .line 851
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_0

    .line 852
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz p0, :cond_0

    const-string v1, "SupportLauncherMultiWindowMode"

    .line 854
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    sput-boolean p0, Lcom/miui/home/launcher/DeviceConfig;->sIsSupportMultiWindowMode:Z

    :cond_0
    return-void
.end method

.method static synthetic lambda$checkIsTetheringSupported$10()V
    .locals 1

    .line 2039
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/launcher/utils/ConnectivityHelper;->isTetheringSupported(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsTetheringSupported:Z

    return-void
.end method

.method static synthetic lambda$checkSystemUIFsgVersion$11()V
    .locals 4

    .line 2050
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    .line 2051
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

    .line 2155
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->isCurrentThemeSupportSearchBar(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2156
    invoke-static {p0, v0}, Lcom/miui/home/launcher/DeviceConfig;->setCurrentThemeSupportSearchBar(Landroid/content/Context;Z)Z

    const-string v0, "ota"

    .line 2157
    invoke-static {p0, v0}, Lcom/miui/home/launcher/DeviceConfig;->setSearchBarSource(Landroid/content/Context;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method static synthetic lambda$static$0(Landroid/content/Context;)Lcom/miui/home/launcher/DeviceConfig;
    .locals 0

    .line 94
    new-instance p0, Lcom/miui/home/launcher/DeviceConfig;

    invoke-direct {p0}, Lcom/miui/home/launcher/DeviceConfig;-><init>()V

    return-object p0
.end method

.method static synthetic lambda$static$1()V
    .locals 3

    .line 520
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->getSettingTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 521
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 522
    sget-object v1, Lcom/miui/home/launcher/DeviceConfig;->sSettingTitle:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static loadAllAppsCellCountX(Landroid/content/Context;)V
    .locals 1

    .line 2231
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2232
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0b001e

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    sput p0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountXDrawerMode:I

    goto :goto_0

    .line 2234
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result p0

    sput p0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountXDrawerMode:I

    :goto_0
    return-void
.end method

.method private static loadCellConfigFromController(Lcom/miui/home/launcher/compat/LauncherCellCount;Landroid/content/Context;)V
    .locals 1

    .line 441
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/compat/LauncherCellCount;->getCellCountXDef(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountXDef:I

    .line 442
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/compat/LauncherCellCount;->getCellCountXMin(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountXMin:I

    .line 443
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/compat/LauncherCellCount;->getCellCountXMax(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountXMax:I

    .line 444
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/compat/LauncherCellCount;->getCellCountYDef(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountYDef:I

    .line 445
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/compat/LauncherCellCount;->getCellCountYMin(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountYMin:I

    .line 446
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/compat/LauncherCellCount;->getCellCountYMax(Landroid/content/Context;)I

    move-result p0

    sput p0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountYMax:I

    return-void
.end method

.method private static final loadCellsCountConfig(Landroid/content/Context;Z)V
    .locals 7

    const-string v0, "pref_key_use_theme_cells_size"

    const/4 v1, 0x0

    .line 1195
    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    .line 1196
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isElderlyManMode()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 1200
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

    .line 1203
    sget v3, Lcom/miui/home/launcher/DeviceConfig;->sCellCountX:I

    if-eq v3, v4, :cond_2

    sget v3, Lcom/miui/home/launcher/DeviceConfig;->sCellCountY:I

    if-ne v3, v4, :cond_4

    .line 1204
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellConfigXSpKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountXDef(Landroid/content/Context;)I

    move-result v4

    invoke-static {p0, v3, v4}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    .line 1205
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellConfigYSpKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountYDef(Landroid/content/Context;)I

    move-result v5

    invoke-static {p0, v4, v5}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    .line 1206
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountXMax(Landroid/content/Context;)I

    move-result v5

    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountXMin(Landroid/content/Context;)I

    move-result v6

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    sput v3, Lcom/miui/home/launcher/DeviceConfig;->sCellCountX:I

    .line 1207
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountYMax(Landroid/content/Context;)I

    move-result v3

    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountYMin(Landroid/content/Context;)I

    move-result v5

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    sput v3, Lcom/miui/home/launcher/DeviceConfig;->sCellCountY:I

    .line 1208
    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sUseThemeOrOldmanCellCount:Z

    goto :goto_1

    .line 1197
    :cond_3
    :goto_0
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountXDef(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/miui/home/launcher/DeviceConfig;->sCellCountX:I

    .line 1198
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountYDef(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/miui/home/launcher/DeviceConfig;->sCellCountY:I

    .line 1199
    sput-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->sUseThemeOrOldmanCellCount:Z

    :cond_4
    :goto_1
    if-eqz v0, :cond_5

    const-string v1, "by_theme"

    .line 1212
    sput-object v1, Lcom/miui/home/launcher/DeviceConfig;->sCurrentScreenCells:Ljava/lang/String;

    goto :goto_2

    .line 1214
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/miui/home/launcher/DeviceConfig;->sCellCountX:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/miui/home/launcher/DeviceConfig;->sCellCountY:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/miui/home/launcher/DeviceConfig;->sCurrentScreenCells:Ljava/lang/String;

    :goto_2
    const-string v1, "Launcher.DeviceConfig"

    .line 1216
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

    .line 1218
    sget p1, Lcom/miui/home/launcher/DeviceConfig;->sCellCountX:I

    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountXDef(Landroid/content/Context;)I

    move-result v0

    if-le p1, v0, :cond_6

    .line 1219
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070689

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sput p1, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellMeasureWidth:I

    goto :goto_3

    .line 1221
    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070688

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sput p1, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellMeasureWidth:I

    .line 1223
    :goto_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070673

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sput p1, Lcom/miui/home/launcher/DeviceConfig;->sCellHorizontalSpacing:I

    .line 1224
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->useNavigationBarLayoutMode()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1225
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07067c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_4

    .line 1226
    :cond_7
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07067b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    :goto_4
    sput p1, Lcom/miui/home/launcher/DeviceConfig;->sCellVerticalSpacing:I

    .line 1227
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070588

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sput p1, Lcom/miui/home/launcher/DeviceConfig;->sQuickCallCellVerticalSpacing:I

    .line 1228
    sget-object p1, Lcom/miui/home/launcher/DeviceConfig;->INSTANCE:Lcom/miui/home/launcher/util/MainThreadInitializedObject;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/DeviceConfig;

    .line 1229
    iget-object v0, p1, Lcom/miui/home/launcher/DeviceConfig;->portraitProfile:Lcom/miui/home/launcher/DeviceProfile;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/DeviceProfile;->calculateCellSize(Landroid/content/Context;)V

    .line 1230
    iget-object p1, p1, Lcom/miui/home/launcher/DeviceConfig;->landscapeProfile:Lcom/miui/home/launcher/DeviceProfile;

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/DeviceProfile;->calculateCellSize(Landroid/content/Context;)V

    .line 1231
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellWidth()I

    move-result p1

    .line 1232
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sub-int/2addr p1, v0

    sput p1, Lcom/miui/home/launcher/DeviceConfig;->sSearchBarWidthDelta:I

    .line 1233
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

    .line 1234
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070166

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    .line 1235
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070164

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sub-float/2addr p1, v0

    .line 1236
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070165

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sub-float/2addr p1, v0

    .line 1237
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 1234
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    sput p1, Lcom/miui/home/launcher/DeviceConfig;->sFolderCellMaxWidth:I

    .line 1242
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isRotatable()Z

    move-result p1

    if-nez p1, :cond_8

    .line 1243
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

    .line 1244
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellMeasureWidth:I

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellWidth()I

    move-result v1

    add-int/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    sput p1, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellMeasureWidth:I

    .line 1245
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

    .line 1246
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellMeasureHeight:I

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellHeight()I

    move-result v1

    add-int/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    sput p1, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellMeasureHeight:I

    :cond_8
    const-string p1, "Launcher.DeviceConfig"

    .line 1249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "widgetCellMeasureWidth = "

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

    .line 1251
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->calcAllAppsCellSize(Landroid/content/Context;)V

    .line 1252
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->loadAllAppsCellCountX(Landroid/content/Context;)V

    return-void
.end method

.method private loadDensity(Landroid/content/Context;)V
    .locals 1

    const-string/jumbo v0, "window"

    .line 781
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 782
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 783
    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 784
    iget p1, v0, Landroid/util/DisplayMetrics;->density:F

    sput p1, Lcom/miui/home/launcher/DeviceConfig;->sScreenDensity:F

    .line 785
    iget p1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    sput p1, Lcom/miui/home/launcher/DeviceConfig;->sScreenDensityDpi:I

    return-void
.end method

.method private static loadThemeResource(Landroid/content/Context;)V
    .locals 2

    .line 761
    :try_start_0
    new-instance v0, Lmiui/content/res/ThemeValues;

    invoke-direct {v0}, Lmiui/content/res/ThemeValues;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/DeviceConfig;->sThemeValues:Lmiui/content/res/ThemeValues;

    .line 762
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    check-cast v0, Landroid/content/res/MiuiResources;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/content/res/ThemeResourcesPackage;->getThemeResources(Landroid/content/res/MiuiResources;Ljava/lang/String;)Lmiui/content/res/ThemeResourcesPackage;

    move-result-object v0

    .line 763
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/miui/home/launcher/DeviceConfig;->sThemeValues:Lmiui/content/res/ThemeValues;

    invoke-virtual {v0, p0, v1}, Lmiui/content/res/ThemeResourcesPackage;->mergeThemeValues(Ljava/lang/String;Lmiui/content/res/ThemeValues;)V

    .line 764
    sget-object p0, Lcom/miui/home/launcher/DeviceConfig;->sThemeValues:Lmiui/content/res/ThemeValues;

    iget-object p0, p0, Lmiui/content/res/ThemeValues;->mIntegers:Ljava/util/HashMap;

    const v0, 0x7f0b001d

    .line 765
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/miui/home/launcher/DeviceConfig;->sThemeValues:Lmiui/content/res/ThemeValues;

    iget-object p0, p0, Lmiui/content/res/ThemeValues;->mIntegers:Ljava/util/HashMap;

    const v0, 0x7f0b0021

    .line 766
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/miui/home/launcher/DeviceConfig;->sThemeValues:Lmiui/content/res/ThemeValues;

    iget-object p0, p0, Lmiui/content/res/ThemeValues;->mIntegers:Ljava/util/HashMap;

    const v0, 0x7f0b0020

    .line 767
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/miui/home/launcher/DeviceConfig;->sThemeValues:Lmiui/content/res/ThemeValues;

    iget-object p0, p0, Lmiui/content/res/ThemeValues;->mIntegers:Ljava/util/HashMap;

    const v0, 0x7f0b0023

    .line 768
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/miui/home/launcher/DeviceConfig;->sThemeValues:Lmiui/content/res/ThemeValues;

    iget-object p0, p0, Lmiui/content/res/ThemeValues;->mIntegers:Ljava/util/HashMap;

    const v0, 0x7f0b001f

    .line 769
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/miui/home/launcher/DeviceConfig;->sThemeValues:Lmiui/content/res/ThemeValues;

    iget-object p0, p0, Lmiui/content/res/ThemeValues;->mIntegers:Ljava/util/HashMap;

    const v0, 0x7f0b0022

    .line 770
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

    .line 772
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method

.method public static loadWorkspaceIndicatorThumbnailHeight(Landroid/content/Context;)V
    .locals 3

    .line 1012
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->calcWorkspaceIndicatorMarginBottomInEditMode(Landroid/content/Context;)I

    move-result v0

    .line 1013
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b007b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 1014
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f070134

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    mul-int/2addr v1, p0

    add-int/2addr v0, v1

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceIndicatorThumbnailHeight:I

    return-void
.end method

.method public static final needHideLockProvider(Landroid/content/Context;)Z
    .locals 1

    .line 1668
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1670
    :cond_0
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->needHideThemeManager(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static needHideMinusScreen()Z
    .locals 2

    .line 1883
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1887
    :cond_0
    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_MIUI_12_5_PLUS:Z

    if-eqz v0, :cond_1

    return v1

    .line 1891
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->supportAssistant()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1892
    invoke-static {}, Lcom/miui/home/launcher/ApplicationConfig;->isAssistantInstalled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1893
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
    .locals 3

    .line 1569
    :try_start_0
    invoke-static {p0}, Lmiui/theme/ThemeManagerHelper;->needDisableTheme(Landroid/content/Context;)Z

    move-result p0

    const-string v0, "Launcher.DeviceConfig"

    .line 1570
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "needDisableTheme "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "Launcher.DeviceConfig"

    const-string v1, "needHideThemeManager"

    .line 1573
    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static final needRecalculateWidgetSpan()Z
    .locals 1

    .line 1660
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sNeedRecalculateWidgetSpan:Z

    return v0
.end method

.method public static needShowCellsEntry(Landroid/content/Context;)Z
    .locals 4

    .line 1431
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountXMin(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountXMax(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_1

    .line 1432
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

    .line 1433
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

    .line 1664
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sNeedShowMisplacedTips:Z

    return v0
.end method

.method public static needShowUnstableDialog()Z
    .locals 1

    .line 2540
    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_T:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sUnstableDialogShowed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static obtainDefaultXmlID()I
    .locals 2

    .line 1507
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_3

    .line 1508
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f140007

    return v0

    .line 1510
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isRotatable()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f140010

    goto :goto_0

    .line 1512
    :cond_1
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->IS_MEITU:Z

    if-eqz v0, :cond_2

    const v0, 0x7f140022

    goto :goto_0

    :cond_2
    const v0, 0x7f14000c

    goto :goto_0

    .line 1517
    :cond_3
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_6

    .line 1518
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isRotatable()Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f14000f

    goto :goto_0

    .line 1520
    :cond_4
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->IS_MEITU:Z

    if-eqz v0, :cond_5

    const v0, 0x7f140021

    goto :goto_0

    :cond_5
    const v0, 0x7f14000a

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static removeDownloadInstallInfo(Landroid/content/Context;)V
    .locals 1

    .line 1709
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/miui/home/launcher/LauncherSettings;->getDownloadInstallInfoPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1710
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1711
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method public static final removeInvalidateDatabase(Landroid/content/Context;Z)V
    .locals 6

    .line 1677
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v0

    .line 1678
    invoke-static {p0}, Lcom/miui/home/launcher/common/StorageContextGetter;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    .line 1679
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDatabaseName()Ljava/lang/String;

    move-result-object v1

    .line 1684
    :try_start_0
    sget-object v2, Lcom/miui/home/launcher/DeviceConfig;->sLauncherDatabaseName:Ljava/lang/String;

    invoke-virtual {v0, p0, v2}, Lcom/miui/home/launcher/allapps/LauncherMode;->getLauncherDatabasePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_4

    if-eqz p1, :cond_0

    sget-object v2, Lcom/miui/home/launcher/DeviceConfig;->sLauncherDatabaseName:Ljava/lang/String;

    .line 1685
    invoke-virtual {v0, p0, v2}, Lcom/miui/home/launcher/allapps/LauncherMode;->getLauncherDatabasePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    .line 1688
    :cond_0
    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/allapps/LauncherMode;->getLauncherDatabaseDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    .line 1689
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    aget-object v4, v0, v3

    if-eqz p1, :cond_1

    .line 1690
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, ".db"

    .line 1691
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1692
    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "app_category_new.db"

    .line 1693
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "app_status.db"

    .line 1694
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "assistant"

    .line 1695
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "apps_data.db"

    .line 1696
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1697
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isStaging()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "mistat.db"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    .line 1700
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

    .line 1704
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    return-void
.end method

.method public static requestIsAppStoreEnabled()V
    .locals 1

    .line 1937
    invoke-static {}, Lcom/market/sdk/MarketManager;->getManager()Lcom/market/sdk/MarketManager;

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

    .line 2148
    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2149
    sget-object v1, Lcom/miui/home/launcher/common/Utilities;->MIUI_BIG_VERSION:Ljava/lang/String;

    const-string v2, "V11"

    .line 2150
    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "V11"

    .line 2151
    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2152
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFirstBoot()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2153
    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sUpdateIconPositionForMiui11Upgrade:Z

    .line 2154
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$__HvwoIRNMn7f0UJNoDgNmpf7JA;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$__HvwoIRNMn7f0UJNoDgNmpf7JA;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    :cond_0
    const-string v0, "miui_version"

    .line 2161
    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static restoreBackupDB(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    .line 1643
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v0

    .line 1644
    invoke-static {}, Lcom/miui/home/library/utils/Preconditions;->assertNonUiThread()V

    .line 1646
    sget-object v1, Lcom/miui/home/launcher/DeviceConfig;->sLauncherDatabaseName:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/miui/home/launcher/allapps/LauncherMode;->getLauncherDatabasePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1648
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/miui/home/launcher/DeviceConfig;->sLauncherDatabaseName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/miui/home/launcher/allapps/LauncherMode;->getLauncherDatabasePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 1649
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1652
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v1

    invoke-static {p1, v1}, Lmiuix/core/util/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1653
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public static saveCurrentDefaultScreenId(J)V
    .locals 2

    .line 2091
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const-string v1, "pref_default_screen"

    .line 2090
    invoke-static {v0, v1, p0, p1}, Lcom/miui/home/launcher/common/PreferenceUtils;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public static setAllAppsBackgroundAlpha(I)V
    .locals 0

    .line 2243
    sput p0, Lcom/miui/home/launcher/DeviceConfig;->sAllAppsBackgroundAlpha:I

    return-void
.end method

.method public static setAllAppsColorMode(Lcom/miui/home/launcher/allapps/AllAppsColorMode;)V
    .locals 0

    .line 2223
    sput-object p0, Lcom/miui/home/launcher/DeviceConfig;->sAllAppsColorMode:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    return-void
.end method

.method public static setAllAppsRecommendCount(I)V
    .locals 0

    .line 2239
    sput p0, Lcom/miui/home/launcher/DeviceConfig;->sRecommendAppsCount:I

    return-void
.end method

.method public static setCurrentThemeSupportSearchBar(Landroid/content/Context;Z)Z
    .locals 1

    .line 623
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "key_home_screen_search_bar"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static setGlobalSearchEnable(Landroid/content/Context;Z)V
    .locals 1

    .line 1910
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "QSB_SCROLL_ENTRANCE_STATUS"

    invoke-static {p0, v0, p1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->putBooleanToSystem(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    return-void
.end method

.method public static setHotseatMaxCount(I)V
    .locals 0

    .line 1474
    sput p0, Lcom/miui/home/launcher/DeviceConfig;->sHotseatMaxCount:I

    return-void
.end method

.method public static declared-synchronized setIsAccessibilityEnabled(Z)V
    .locals 1

    const-class v0, Lcom/miui/home/launcher/DeviceConfig;

    monitor-enter v0

    .line 1969
    :try_start_0
    sput-boolean p0, Lcom/miui/home/launcher/DeviceConfig;->sIsAccessibilityEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1970
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static setIsInMultiWindowModes(Landroid/content/Context;Landroid/content/res/Resources;Z)V
    .locals 0

    .line 810
    sget-boolean p1, Lcom/miui/home/launcher/DeviceConfig;->sIsInMultiWindowMode:Z

    if-eq p1, p2, :cond_0

    .line 811
    sput-boolean p2, Lcom/miui/home/launcher/DeviceConfig;->sIsInMultiWindowMode:Z

    const/4 p1, 0x1

    .line 812
    invoke-static {p0, p1}, Lcom/miui/home/launcher/DeviceConfig;->calcGridSize(Landroid/content/Context;Z)V

    :cond_0
    return-void
.end method

.method private static declared-synchronized setIsNetWorkConnected(Z)V
    .locals 1

    const-class v0, Lcom/miui/home/launcher/DeviceConfig;

    monitor-enter v0

    .line 2027
    :try_start_0
    sput-boolean p0, Lcom/miui/home/launcher/DeviceConfig;->sIsNetWorkConnected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2028
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static setLastRotation(I)V
    .locals 0

    .line 313
    sput p0, Lcom/miui/home/launcher/DeviceConfig;->sLastRotation:I

    return-void
.end method

.method public static setRotation(I)V
    .locals 0

    .line 317
    sput p0, Lcom/miui/home/launcher/DeviceConfig;->sRotation:I

    return-void
.end method

.method public static setRotationBerforStart(I)V
    .locals 0

    .line 305
    sput p0, Lcom/miui/home/launcher/DeviceConfig;->sRotationBeforeStart:I

    return-void
.end method

.method public static setScreenCells(Landroid/content/Context;II)Z
    .locals 6

    const-string v0, "pref_key_use_theme_cells_size"

    const/4 v1, 0x0

    .line 1280
    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 1284
    :cond_0
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountXMin(Landroid/content/Context;)I

    move-result v0

    .line 1285
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountXMax(Landroid/content/Context;)I

    move-result v2

    .line 1286
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountYMin(Landroid/content/Context;)I

    move-result v3

    .line 1287
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

    .line 1293
    :cond_3
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellConfigXSpKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/miui/home/launcher/common/PreferenceUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1294
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellConfigYSpKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/miui/home/launcher/common/PreferenceUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1295
    sput p1, Lcom/miui/home/launcher/DeviceConfig;->sCellCountX:I

    .line 1296
    sput p2, Lcom/miui/home/launcher/DeviceConfig;->sCellCountY:I

    .line 1297
    sget p0, Lcom/miui/home/launcher/DeviceConfig;->sCellCountX:I

    sget p1, Lcom/miui/home/launcher/DeviceConfig;->sCellCountY:I

    invoke-static {p0, p1}, Lcom/miui/home/launcher/DeviceConfig;->getCellSizeVal(II)Ljava/lang/String;

    move-result-object p0

    .line 1298
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getDatabaseNameBySuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/miui/home/launcher/DeviceConfig;->sLauncherDatabaseName:Ljava/lang/String;

    .line 1299
    sput-boolean v5, Lcom/miui/home/launcher/DeviceConfig;->sScreenCellsChangedTemporary:Z

    return v5
.end method

.method public static setSearchBarSource(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 631
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "key_home_screen_search_bar_source"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static setUnstableDialogShowed(Z)V
    .locals 0

    .line 2544
    sput-boolean p0, Lcom/miui/home/launcher/DeviceConfig;->sUnstableDialogShowed:Z

    return-void
.end method

.method public static setUseLauncherRecentsAndFsGesture(Landroid/content/Context;Z)V
    .locals 1

    if-eqz p0, :cond_0

    .line 2268
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "use_gesture_version_three"

    invoke-static {p0, v0, p1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->putBooleanToGlobal(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    :cond_0
    return-void
.end method

.method private setWorkspaceCellPadding(Landroid/content/res/Resources;)V
    .locals 2

    .line 914
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isRotatable()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f070676

    goto :goto_0

    .line 916
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isNoWordModel()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f070675

    goto :goto_0

    :cond_1
    const v0, 0x7f070674

    .line 914
    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceCellPaddingSide:I

    const v0, 0x7f070677

    .line 917
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceCellPaddingTop:I

    .line 918
    sget v0, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceCellPaddingTop:I

    const v1, 0x7f070671

    .line 919
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceCellPaddingTopNotch:I

    .line 920
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isRotatable()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f07068d

    goto :goto_1

    :cond_2
    const v0, 0x7f07068c

    :goto_1
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sput p1, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellPaddingBottom:I

    return-void
.end method

.method public static showBackGestureInEditingMode()Z
    .locals 2

    .line 2066
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

    .line 2062
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

    .line 1858
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1859
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsLayoutRtl:Z

    xor-int/2addr v0, v1

    return v0

    :cond_0
    return v1
.end method

.method public static supportAssistant(Lcom/miui/home/launcher/Launcher;)Z
    .locals 0

    .line 1865
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInMultiWindowMode()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static supportCheckRegionalWallpaper()Z
    .locals 1

    .line 2321
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sSupportDarkenWallpaper:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static supportDarkMode()Z
    .locals 1

    .line 2208
    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_P:Z

    return v0
.end method

.method public static supportIconTextShadow()Z
    .locals 1

    .line 2314
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sSupportDarkenWallpaper:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static supportsMultiWindow()Z
    .locals 1

    .line 830
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsSupportMultiWindowMode:Z

    return v0
.end method

.method public static supportsMultiWindowAndNotInSecuritySpace()Z
    .locals 2

    .line 825
    invoke-static {}, Lmiui/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {}, Lcom/miui/launcher/utils/LauncherUtils;->getUserSystemId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 826
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->supportsMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->enableMultiWindow()Z

    move-result v0

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

    .line 1579
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v0

    .line 1580
    invoke-static {p0}, Lcom/miui/home/launcher/common/StorageContextGetter;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    .line 1581
    sget-object v1, Lcom/miui/home/launcher/DeviceConfig;->sLauncherDatabaseName:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/miui/home/launcher/allapps/LauncherMode;->getLauncherDatabasePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1582
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 1583
    invoke-static {p0, v0}, Lcom/miui/home/launcher/DeviceConfig;->getOptimalDB(Landroid/content/Context;Lcom/miui/home/launcher/allapps/LauncherMode;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "Launcher.DeviceConfig"

    .line 1585
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

    .line 1586
    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v2, v1}, Lmiuix/core/util/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 1587
    sput-boolean v3, Lcom/miui/home/launcher/DeviceConfig;->sNeedRecalculateWidgetSpan:Z

    .line 1588
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    .line 1589
    new-array v1, v1, [I

    .line 1590
    invoke-static {v0, v1}, Lcom/miui/home/launcher/ScreenUtils;->parseCellsSize(Ljava/lang/String;[I)Z

    const/4 v0, 0x0

    .line 1591
    aget v0, v1, v0

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sCellXMigratedFrom:I

    .line 1592
    aget v0, v1, v3

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sCellYMigratedFrom:I

    .line 1594
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sScreenCellsChangedTemporary:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sThemeChanged:Z

    if-nez v0, :cond_0

    .line 1595
    sget-object v0, Lcom/miui/home/launcher/util/noword/NoWordSettingHelper;->INSTANCE:Lcom/miui/home/launcher/util/noword/NoWordSettingHelper;

    invoke-virtual {v0}, Lcom/miui/home/launcher/util/noword/NoWordSettingHelper;->getSwitchingNoWordModel()Z

    move-result v0

    xor-int/2addr v0, v3

    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sNeedShowMisplacedTips:Z

    .line 1599
    :cond_0
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sScreenCellsChangedTemporary:Z

    if-nez v0, :cond_1

    .line 1600
    invoke-static {p0, v3}, Lcom/miui/home/launcher/DeviceConfig;->removeInvalidateDatabase(Landroid/content/Context;Z)V

    :cond_1
    return-void
.end method

.method private updateDeviceProfileSizMultiWindow(Landroid/content/Context;Landroid/content/res/Resources;)Z
    .locals 4

    .line 905
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 906
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 907
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 908
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    const-string v0, "Launcher.DeviceConfig"

    .line 909
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateDeviceProfileSizMultiWindow, smallSize = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , largeSize = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveProfile:Lcom/miui/home/launcher/DeviceProfile;

    invoke-virtual {v0, p2, v1, p1}, Lcom/miui/home/launcher/DeviceProfile;->updateDeviceSize(IILandroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method private updateDeviceProfileSize(Landroid/content/Context;)Z
    .locals 5

    .line 926
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const-string/jumbo v1, "window"

    .line 927
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 928
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 929
    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 931
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 932
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 933
    sput v1, Lcom/miui/home/launcher/DeviceConfig;->sScreenSmallestWidth:I

    const-string v2, "Launcher.DeviceConfig"

    .line 934
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateDeviceProfileSize, smallSize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " , largeSize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    sget-object v2, Lcom/miui/home/launcher/DeviceConfig;->mActiveProfile:Lcom/miui/home/launcher/DeviceProfile;

    invoke-virtual {v2, v0, v1, p1}, Lcom/miui/home/launcher/DeviceProfile;->updateDeviceSize(IILandroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public static updateIconPositionForMiui11Upgrade()Z
    .locals 2

    .line 2167
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sUpdateIconPositionForMiui11Upgrade:Z

    const/4 v1, 0x0

    .line 2168
    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sUpdateIconPositionForMiui11Upgrade:Z

    return v0
.end method

.method public static updateIsDefaultIcon(Landroid/content/Context;)V
    .locals 2

    .line 2259
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

.method public static updateRotate()V
    .locals 1

    .line 2516
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isAllowRotate()Z

    move-result v0

    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sRotatable:Z

    return-void
.end method

.method public static updateSearchBarTransferEnable(Landroid/content/Context;)V
    .locals 3

    .line 652
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

    .line 655
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "key_home_screen_search_bar_transfer"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    return-void
.end method

.method public static useNavigationBarLayoutMode()Z
    .locals 1

    .line 1961
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

    .line 2070
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sUseOldVersionIcons:Z

    return v0
.end method

.method private static useSecondSpaceLayout()Z
    .locals 2

    .line 1353
    invoke-static {}, Lmiui/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {}, Lcom/miui/launcher/utils/LauncherUtils;->getUserSystemId()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1354
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

    .line 1953
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsGestureEnable:Z

    return v0
.end method


# virtual methods
.method public Init(Landroid/content/Context;Z)Z
    .locals 7

    .line 324
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->updateRotate()V

    .line 325
    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->loadThemeResource(Landroid/content/Context;)V

    .line 326
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->enableAndResetCache()Z

    move-result v0

    .line 328
    invoke-static {p1}, Lcom/miui/home/launcher/util/noword/NoWordSettingHelperKt;->checkNoWordSettings(Landroid/content/Context;)V

    .line 329
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentLauncherCellCountInstance()Lcom/miui/home/launcher/compat/LauncherCellCount;

    move-result-object v1

    .line 330
    instance-of v2, v1, Lcom/miui/home/launcher/compat/LauncherCellCountCompatNoWord;

    if-eqz v2, :cond_0

    .line 332
    move-object v2, v1

    check-cast v2, Lcom/miui/home/launcher/compat/LauncherCellCountCompatNoWord;

    sget-boolean v3, Lcom/miui/home/launcher/DeviceConfig;->isThemeCoverCellConfig:Z

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/compat/LauncherCellCountCompatNoWord;->setLoadResCellConfig(Z)V

    .line 334
    :cond_0
    invoke-static {v1, p1}, Lcom/miui/home/launcher/DeviceConfig;->loadCellConfigFromController(Lcom/miui/home/launcher/compat/LauncherCellCount;Landroid/content/Context;)V

    .line 336
    invoke-static {p1}, Lcom/miui/home/launcher/compat/LauncherThemeCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/compat/LauncherThemeCompat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/compat/LauncherThemeCompat;->enableAndResetCache()V

    .line 337
    invoke-static {}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->getInstance()Lcom/miui/home/launcher/common/LauncherIconSizeProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->enableAndResetCache()V

    .line 338
    invoke-static {}, Lcom/miui/home/launcher/MIUIWidgetUtil;->resetCache()V

    .line 339
    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->checkSearchBarSupport(Landroid/content/Context;)V

    .line 340
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/DeviceConfig;->loadDensity(Landroid/content/Context;)V

    .line 341
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 342
    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_1

    .line 343
    sput-boolean v5, Lcom/miui/home/launcher/DeviceConfig;->sIsLayoutRtl:Z

    goto :goto_0

    .line 345
    :cond_1
    sput-boolean v4, Lcom/miui/home/launcher/DeviceConfig;->sIsLayoutRtl:Z

    .line 347
    :goto_0
    sget-object v3, Lcom/miui/home/launcher/DeviceConfig;->sLastConfiguration:Landroid/content/res/Configuration;

    if-nez v3, :cond_2

    .line 348
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    sput-object v0, Lcom/miui/home/launcher/DeviceConfig;->sLastConfiguration:Landroid/content/res/Configuration;

    goto :goto_3

    .line 350
    :cond_2
    invoke-virtual {v3, v2}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v3

    const/high16 v6, -0x80000000

    and-int/2addr v6, v3

    if-eqz v6, :cond_3

    .line 352
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->clearWallpaperSrc()V

    :cond_3
    if-eqz v6, :cond_4

    .line 355
    sput-boolean v5, Lcom/miui/home/launcher/DeviceConfig;->sThemeChanged:Z

    goto :goto_1

    .line 357
    :cond_4
    sput-boolean v4, Lcom/miui/home/launcher/DeviceConfig;->sThemeChanged:Z

    :goto_1
    const v6, -0x3fffed7c

    and-int/2addr v3, v6

    if-nez v3, :cond_6

    if-nez p2, :cond_6

    .line 359
    sget-boolean v3, Lcom/miui/home/launcher/DeviceConfig;->sScreenCellsChangedTemporary:Z

    if-nez v3, :cond_6

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    return v4

    .line 363
    :cond_6
    :goto_2
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->sLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 368
    :goto_3
    invoke-direct {p0, p1, v1}, Lcom/miui/home/launcher/DeviceConfig;->isCellSizeChangedByTheme(Landroid/content/Context;Lcom/miui/home/launcher/compat/LauncherCellCount;)Z

    move-result v0

    .line 369
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 370
    invoke-static {}, Lcom/miui/launcher/utils/MiuiWindowManagerUtils;->getInitialDisplaySize()Landroid/graphics/Point;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 371
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

    .line 372
    sget-object v3, Lcom/miui/home/LauncherDecoupleHelper;->INSTANCE:Lcom/miui/home/LauncherDecoupleHelper;

    invoke-virtual {v3}, Lcom/miui/home/LauncherDecoupleHelper;->migratePocoData()V

    .line 373
    invoke-static {v1}, Lcom/miui/home/launcher/DeviceConfig;->calcIconSize(Landroid/content/res/Resources;)V

    .line 374
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f070128

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    sput v3, Lcom/miui/home/launcher/DeviceConfig;->sNotchEditModePaddingTopDelta:I

    const v3, 0x7f070684

    .line 375
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sput v3, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceInvalidateEdgeWidth:I

    const v3, 0x7f070618

    .line 376
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sput v3, Lcom/miui/home/launcher/DeviceConfig;->sStatusBarHeight:I

    .line 378
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/DeviceConfig;->setWorkspaceCellPadding(Landroid/content/res/Resources;)V

    const v3, 0x7f0705bb

    .line 379
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sput v3, Lcom/miui/home/launcher/DeviceConfig;->sFolderRecommendGridPaddingBottom:I

    const v3, 0x7f070688

    .line 381
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sput v3, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellMeasureWidth:I

    const v3, 0x7f070687

    .line 382
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sput v3, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellMeasureHeight:I

    const v3, 0x7f07068b

    .line 383
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sput v3, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellMinWidth:I

    const v3, 0x7f07068a

    .line 384
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sput v3, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellMinHeight:I

    const v3, 0x7f07068e

    .line 385
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sput v3, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellPaddingTop:I

    .line 386
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isRotatable()Z

    move-result v3

    if-eqz v3, :cond_8

    const v3, 0x7f07068d

    goto :goto_5

    :cond_8
    const v3, 0x7f07068c

    :goto_5
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sput v3, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellPaddingBottom:I

    const v3, 0x7f0702a6

    .line 390
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sput v3, Lcom/miui/home/launcher/DeviceConfig;->sMiuiWidgetPaddingTop:I

    .line 391
    invoke-static {p1, v1}, Lcom/miui/home/launcher/DeviceConfig;->calcLauncherHeightWhenMultiWindow(Landroid/content/Context;Landroid/content/res/Resources;)V

    .line 392
    sput-boolean v4, Lcom/miui/home/launcher/DeviceConfig;->sNeedRecalculateWidgetSpan:Z

    .line 393
    sput-boolean v4, Lcom/miui/home/launcher/DeviceConfig;->sNeedShowMisplacedTips:Z

    .line 394
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->hasNavigationBar()Z

    move-result v3

    sput-boolean v3, Lcom/miui/home/launcher/DeviceConfig;->sHasNavigationBar:Z

    .line 395
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f05000b

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    sput-boolean v3, Lcom/miui/home/launcher/DeviceConfig;->sIsHotseatsAppTitleHided:Z

    const v3, 0x7f090004

    .line 396
    invoke-virtual {v1, v3, v5, v5}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v3

    sput v3, Lcom/miui/home/launcher/DeviceConfig;->sScreenScaleRatio:F

    .line 398
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/DeviceConfig;->initDeviceProfile(Landroid/content/Context;)V

    .line 399
    invoke-virtual {p0, p1, v1}, Lcom/miui/home/launcher/DeviceConfig;->loadScreenSize(Landroid/content/Context;Landroid/content/res/Resources;)V

    .line 400
    invoke-static {p1, v4}, Lcom/miui/home/launcher/DeviceConfig;->calcGridSize(Landroid/content/Context;Z)V

    .line 402
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f1103f3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/miui/home/launcher/DeviceConfig;->sRecommendLoadingTitle:Ljava/lang/String;

    .line 403
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f070166

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    const v6, 0x3f4ccccd    # 0.8f

    mul-float/2addr v3, v6

    float-to-int v3, v3

    sput v3, Lcom/miui/home/launcher/DeviceConfig;->sRecommendBannerWidth:I

    .line 404
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v6

    float-to-int v3, v3

    sput v3, Lcom/miui/home/launcher/DeviceConfig;->sRecommendBannerHeight:I

    .line 405
    sput-boolean v4, Lcom/miui/home/launcher/DeviceConfig;->sScreenCellsChangedTemporary:Z

    if-eqz p2, :cond_9

    if-nez v0, :cond_9

    .line 406
    sget-object p2, Lcom/miui/home/launcher/util/noword/NoWordSettingHelper;->INSTANCE:Lcom/miui/home/launcher/util/noword/NoWordSettingHelper;

    invoke-virtual {p2}, Lcom/miui/home/launcher/util/noword/NoWordSettingHelper;->getSwitchingNoWordModel()Z

    move-result p2

    if-eqz p2, :cond_a

    .line 408
    :cond_9
    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->confirmCellsCount(Landroid/content/Context;)V

    .line 410
    :cond_a
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->checkIsTetheringSupported()V

    .line 411
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->checkSettingTitle()V

    const/high16 p2, 0x3f800000    # 1.0f

    .line 412
    invoke-static {p2}, Lcom/miui/home/launcher/common/Utilities;->getDipPixelSize(F)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x50

    int-to-float v0, v0

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->getDipPixelSize(F)I

    move-result v0

    sput v0, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellDefaultWidth:I

    .line 413
    invoke-static {p2}, Lcom/miui/home/launcher/common/Utilities;->getDipPixelSize(F)I

    move-result p2

    rsub-int/lit8 p2, p2, 0x4a

    int-to-float p2, p2

    invoke-static {p2}, Lcom/miui/home/launcher/common/Utilities;->getDipPixelSize(F)I

    move-result p2

    sput p2, Lcom/miui/home/launcher/DeviceConfig;->sWidgetCellDefaultHeight:I

    .line 414
    iget p2, v2, Landroid/content/res/Configuration;->uiMode:I

    const/16 v0, 0x20

    and-int/2addr p2, v0

    if-ne p2, v0, :cond_b

    move v4, v5

    :cond_b
    sput-boolean v4, Lcom/miui/home/launcher/DeviceConfig;->sIsDarkMode:Z

    .line 415
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0705ef

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    sput p2, Lcom/miui/home/launcher/DeviceConfig;->sShortcutMenuDisappearThreshold:I

    .line 416
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f090007

    invoke-virtual {p2, v0, v5, v5}, Landroid/content/res/Resources;->getFraction(III)F

    move-result p2

    sput p2, Lcom/miui/home/launcher/DeviceConfig;->sSearchBarLightThreshold:F

    .line 419
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isNoWordModel()Z

    move-result p2

    if-eqz p2, :cond_c

    const p2, 0x7f090006

    goto :goto_6

    :cond_c
    const p2, 0x7f090005

    .line 418
    :goto_6
    invoke-virtual {v1, p2, v5, v5}, Landroid/content/res/Resources;->getFraction(III)F

    move-result p2

    sput p2, Lcom/miui/home/launcher/DeviceConfig;->sQuickEditScreenRatio:F

    const/high16 p2, 0x7f090000

    .line 422
    invoke-virtual {v1, p2, v5, v5}, Landroid/content/res/Resources;->getFraction(III)F

    move-result p2

    sput p2, Lcom/miui/home/launcher/DeviceConfig;->sDragIconScaleRatio:F

    .line 424
    invoke-static {}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getInstance()Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getSavedColorMode()Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    move-result-object p2

    invoke-static {p2}, Lcom/miui/home/launcher/DeviceConfig;->setAllAppsColorMode(Lcom/miui/home/launcher/allapps/AllAppsColorMode;)V

    .line 425
    invoke-static {}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getInstance()Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getBackgroundAlpha()I

    move-result p2

    invoke-static {p2}, Lcom/miui/home/launcher/DeviceConfig;->setAllAppsBackgroundAlpha(I)V

    .line 426
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    sget-object v0, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 427
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

    .line 429
    invoke-static {p2}, Lcom/github/promeg/pinyinhelper/Pinyin;->init(Lcom/github/promeg/pinyinhelper/Pinyin$Config;)V

    .line 432
    :goto_7
    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->checkDarkenWallpaperSupport(Landroid/content/Context;)Z

    move-result p2

    sput-boolean p2, Lcom/miui/home/launcher/DeviceConfig;->sSupportDarkenWallpaper:Z

    .line 433
    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->updateIsDefaultIcon(Landroid/content/Context;)V

    .line 434
    invoke-static {}, Lcom/miui/home/launcher/PathDataIconUtil;->initDataPathFroClipIcon()V

    .line 435
    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->checkIsSupportMultiWindowMode(Landroid/content/Context;)V

    .line 436
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->checkIsSupportSmallWindow()Z

    move-result p1

    sput-boolean p1, Lcom/miui/home/launcher/DeviceConfig;->sSupportSmallWindow:Z

    return v5
.end method

.method public checkIfIsOrientationChanged(Landroid/content/Context;)Z
    .locals 1

    .line 939
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceProfile(Landroid/content/Context;)Lcom/miui/home/launcher/DeviceProfile;

    move-result-object p1

    .line 940
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->mActiveProfile:Lcom/miui/home/launcher/DeviceProfile;

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 942
    sput-object p1, Lcom/miui/home/launcher/DeviceConfig;->mActiveProfile:Lcom/miui/home/launcher/DeviceProfile;

    :cond_1
    return v0
.end method

.method public getDeviceProfile(Landroid/content/Context;)Lcom/miui/home/launcher/DeviceProfile;
    .locals 1

    .line 476
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isRotatable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 477
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 478
    iget-object p1, p0, Lcom/miui/home/launcher/DeviceConfig;->landscapeProfile:Lcom/miui/home/launcher/DeviceProfile;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/DeviceConfig;->portraitProfile:Lcom/miui/home/launcher/DeviceProfile;

    :goto_0
    return-object p1

    .line 480
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/DeviceConfig;->portraitProfile:Lcom/miui/home/launcher/DeviceProfile;

    return-object p1
.end method

.method public loadScreenSize(Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 1

    .line 861
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 862
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInMultiWindowMode()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/home/launcher/DeviceConfig;->loadScreenSize(Landroid/content/Context;Landroid/content/res/Resources;Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 864
    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/home/launcher/DeviceConfig;->loadScreenSize(Landroid/content/Context;Landroid/content/res/Resources;Z)V

    :goto_0
    return-void
.end method

.method public loadScreenSize(Landroid/content/Context;Landroid/content/res/Resources;Z)V
    .locals 8

    .line 877
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/DeviceConfig;->setWorkspaceCellPadding(Landroid/content/res/Resources;)V

    const/4 v0, 0x1

    const v1, 0x7f090004

    .line 878
    invoke-virtual {p2, v1, v0, v0}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    sput v1, Lcom/miui/home/launcher/DeviceConfig;->sScreenScaleRatio:F

    .line 879
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/DeviceConfig;->updateGestureEnable(Landroid/content/Context;)V

    .line 880
    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->checkSearchBarSupport(Landroid/content/Context;)V

    .line 881
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

    .line 882
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

    .line 883
    :goto_1
    sget-object v2, Lcom/miui/home/launcher/DeviceConfig;->sShowSearchBar:Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/common/ChangeableValue;->setValue(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sIsSearchBarChanged:Z

    const v2, 0x7f0705f4

    .line 884
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v4, 0x7f0705f5

    .line 885
    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 886
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceProfile(Landroid/content/Context;)Lcom/miui/home/launcher/DeviceProfile;

    move-result-object v5

    sput-object v5, Lcom/miui/home/launcher/DeviceConfig;->mActiveProfile:Lcom/miui/home/launcher/DeviceProfile;

    .line 887
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 888
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/DeviceConfig;->updateDeviceProfileSizMultiWindow(Landroid/content/Context;Landroid/content/res/Resources;)Z

    move-result p2

    goto :goto_2

    :cond_2
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/DeviceConfig;->updateDeviceProfileSize(Landroid/content/Context;)Z

    move-result p2

    .line 889
    :goto_2
    sget-object v5, Lcom/miui/home/launcher/DeviceConfig;->sSearchBarMarginBottom:Lcom/miui/home/launcher/common/ChangeableValue;

    sget-boolean v6, Lcom/miui/home/launcher/DeviceConfig;->sIsShowGestureLine:Z

    invoke-static {p1, v6}, Lcom/miui/home/launcher/DeviceConfig;->calcSearchBarMarginBottom(Landroid/content/Context;Z)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/miui/home/launcher/common/ChangeableValue;->setValue(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v1, v5

    .line 890
    sget-object v5, Lcom/miui/home/launcher/DeviceConfig;->sHotSeatsMarginBottom:Lcom/miui/home/launcher/common/ChangeableValue;

    sget-object v6, Lcom/miui/home/launcher/DeviceConfig;->sShowSearchBar:Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-virtual {v6}, Lcom/miui/home/launcher/common/ChangeableValue;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    sget-boolean v7, Lcom/miui/home/launcher/DeviceConfig;->sIsShowGestureLine:Z

    invoke-static {p1, v6, v7}, Lcom/miui/home/launcher/DeviceConfig;->calcHotSeatsMarginBottom(Landroid/content/Context;ZZ)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/miui/home/launcher/common/ChangeableValue;->setValue(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v1, v5

    .line 891
    sget-object v5, Lcom/miui/home/launcher/DeviceConfig;->sHotSeatsMarginTop:Lcom/miui/home/launcher/common/ChangeableValue;

    sget-object v6, Lcom/miui/home/launcher/DeviceConfig;->sShowSearchBar:Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-virtual {v6}, Lcom/miui/home/launcher/common/ChangeableValue;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-static {p1, v6}, Lcom/miui/home/launcher/DeviceConfig;->calcHotSeatsMarginTop(Landroid/content/Context;Z)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/miui/home/launcher/common/ChangeableValue;->setValue(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v1, v5

    .line 892
    sget-object v5, Lcom/miui/home/launcher/DeviceConfig;->sHotSeatsHeight:Lcom/miui/home/launcher/common/ChangeableValue;

    sget-object v6, Lcom/miui/home/launcher/DeviceConfig;->sShowSearchBar:Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-virtual {v6}, Lcom/miui/home/launcher/common/ChangeableValue;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-static {p1, v6}, Lcom/miui/home/launcher/DeviceConfig;->calcHotSeatsHeight(Landroid/content/Context;Z)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/miui/home/launcher/common/ChangeableValue;->setValue(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v1, v5

    .line 893
    sget-object v5, Lcom/miui/home/launcher/DeviceConfig;->sHotSeatsMarginBottom:Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-virtual {v5}, Lcom/miui/home/launcher/common/ChangeableValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sget-object v6, Lcom/miui/home/launcher/DeviceConfig;->sHotSeatsHeight:Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-virtual {v6}, Lcom/miui/home/launcher/common/ChangeableValue;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v5, v6

    sget-object v6, Lcom/miui/home/launcher/DeviceConfig;->sHotSeatsMarginTop:Lcom/miui/home/launcher/common/ChangeableValue;

    invoke-virtual {v6}, Lcom/miui/home/launcher/common/ChangeableValue;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v5, v6

    sput v5, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceIndicatorMarginBottom:I

    .line 894
    sget-object v5, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceCellPaddingBottom:Lcom/miui/home/launcher/common/ChangeableValue;

    sget v6, Lcom/miui/home/launcher/DeviceConfig;->sWorkspaceIndicatorMarginBottom:I

    add-int/2addr v6, v2

    add-int/2addr v6, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/miui/home/launcher/common/ChangeableValue;->setValue(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 895
    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->calcSearchBarWidth(Landroid/content/Context;)I

    move-result v2

    sput v2, Lcom/miui/home/launcher/DeviceConfig;->sSearchBarWidth:I

    .line 896
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/DeviceConfig;->checkIfIsOrientationChanged(Landroid/content/Context;)Z

    move-result v2

    sput-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->sScreenOrientationChanged:Z

    if-nez v1, :cond_4

    if-eqz p2, :cond_3

    .line 897
    sget-boolean p2, Lcom/miui/home/launcher/DeviceConfig;->sScreenOrientationChanged:Z

    if-nez p2, :cond_3

    goto :goto_3

    :cond_3
    move v0, v3

    :cond_4
    :goto_3
    sput-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sScreenSizeChanged:Z

    .line 898
    sget-object p2, Lcom/miui/home/launcher/DeviceConfig;->mActiveProfile:Lcom/miui/home/launcher/DeviceProfile;

    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/DeviceProfile;->subNavigationBarHeight(Landroid/content/Context;)V

    .line 899
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isScreenOrientationChanged()Z

    move-result p2

    if-nez p2, :cond_5

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isScreenSizeChanged()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 900
    :cond_5
    invoke-static {p1, p3}, Lcom/miui/home/launcher/DeviceConfig;->calcGridSize(Landroid/content/Context;Z)V

    :cond_6
    return-void
.end method

.method public updateGestureEnable(Landroid/content/Context;)V
    .locals 4

    .line 869
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "force_fsg_nav_bar"

    invoke-static {v0, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 870
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

    .line 871
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->sIsGestureEnable:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportRecentsAndFsGesture()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 872
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

    .line 873
    sget-boolean p1, Lcom/miui/home/launcher/DeviceConfig;->sIsGestureEnable:Z

    if-eqz p1, :cond_3

    sget-boolean p1, Lcom/miui/home/launcher/DeviceConfig;->sIsShowGestureLine:Z

    if-nez p1, :cond_3

    move v1, v2

    :cond_3
    sput-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->sIsImmersiveNavigationBar:Z

    return-void
.end method
