.class public Lcom/miui/maml/ScreenElementRoot;
.super Lcom/miui/maml/elements/ScreenElement;
.source "ScreenElementRoot.java"

# interfaces
.implements Lcom/miui/maml/InteractiveListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/ScreenElementRoot$OnHoverChangeListener;,
        Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;,
        Lcom/miui/maml/ScreenElementRoot$ExtraResource;,
        Lcom/miui/maml/ScreenElementRoot$InnerGroup;,
        Lcom/miui/maml/ScreenElementRoot$FramerateHelper;
    }
.end annotation


# static fields
.field private static final CALCULATE_FRAME_RATE:Z = true

.field public static final CAPABILITY_ALL:I = -0x1

.field public static final CAPABILITY_CREATE_OBJ:I = 0x4

.field public static final CAPABILITY_VAR_PERSISTENCE:I = 0x2

.field public static final CAPABILITY_WEBSERVICE:I = 0x1

.field private static final DARK_MODE_COLOR:I = 0x19000000

.field private static final DEFAULT_RES_DENSITY:I = 0xf0

.field private static final DEFAULT_SCREEN_WIDTH:I = 0x1e0

.field private static final EXTERNAL_COMMANDS_TAG_NAME:Ljava/lang/String; = "ExternalCommands"

.field private static final LOG_TAG:Ljava/lang/String; = "ScreenElementRoot"

.field private static final MAML_INTERNAL_VERSION:I = 0x6

.field private static final MIUI_VERSION_CODE:Ljava/lang/String; = "ro.miui.ui.version.code"

.field private static final MIUI_VERSION_NAME:Ljava/lang/String; = "ro.miui.ui.version.name"

.field private static final RAW_DENSITY:Ljava/lang/String; = "__raw_density"

.field private static final ROOT_NAME:Ljava/lang/String; = "__root"

.field private static final SCALE_FACTOR:Ljava/lang/String; = "__scale_factor"

.field private static final THEMEMANAGER_PACKAGE_NAME:Ljava/lang/String; = "com.android.thememanager"

.field private static final VARIABLE_VIEW_HEIGHT:Ljava/lang/String; = "view_height"

.field private static final VARIABLE_VIEW_WIDTH:Ljava/lang/String; = "view_width"

.field private static final VAR_MAML_VERSION:Ljava/lang/String; = "__maml_version"


# instance fields
.field protected DEFAULT_FRAME_RATE:F

.field private mAccessibleElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/maml/elements/AnimatedScreenElement;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowScreenRotation:Z

.field private mAnimationItems:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/animation/BaseAnimation$AnimationItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAutoDarkenWallpaper:Z

.field private mBlurWindow:Z

.field private mCacheDir:Ljava/lang/String;

.field private mCapability:I

.field private mCheckPoint:J

.field private mClearCanvas:Z

.field private mConfig:Lcom/miui/maml/util/ConfigFile;

.field private mConfigPath:Ljava/lang/String;

.field private mConfiguration:Landroid/content/res/Configuration;

.field protected final mContext:Lcom/miui/maml/ScreenContext;

.field protected mController:Lcom/miui/maml/RendererController;

.field private mDarkWallpaperMode:Z

.field private mDefaultResourceDensity:I

.field private mDefaultScreenWidth:I

.field private mDisableCutRoundCorner:Z

.field private mElements:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/maml/elements/ScreenElement;",
            ">;>;"
        }
    .end annotation
.end field

.field private mExternCommandListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;",
            ">;"
        }
    .end annotation
.end field

.field private mExternalCommandManager:Lcom/miui/maml/CommandTriggers;

.field private mFinished:Z

.field private mFontScale:F

.field protected mFrameRate:F

.field private mFrameRateVar:Lcom/miui/maml/data/IndexedVariable;

.field private mFramerateHelper:Lcom/miui/maml/ScreenElementRoot$FramerateHelper;

.field private mFrames:I

.field private mHeight:F

.field private mHoverChangeListenerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/maml/ScreenElementRoot$OnHoverChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mHoverElement:Lcom/miui/maml/elements/AnimatedScreenElement;

.field private mHoverMatrix:Landroid/graphics/Matrix;

.field protected mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

.field private mKeepResource:Z

.field private mLoaded:Z

.field private mMamlAccessHelper:Lcom/miui/maml/util/MamlAccessHelper;

.field private mMamlSurfaceExternCommandListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMamlSurfaceRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/maml/component/MamlSurface;",
            ">;"
        }
    .end annotation
.end field

.field private mMamlViewExternCommandListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNeedDisallowInterceptTouchEvent:Z

.field private mNeedDisallowInterceptTouchEventVar:Lcom/miui/maml/data/IndexedVariable;

.field private mNeedFolmeClean:Z

.field private mNeedReset:Z

.field private mPreTickers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/elements/ITicker;",
            ">;"
        }
    .end annotation
.end field

.field protected mRawAttrs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRawDefaultResourceDensity:I

.field private mRawHeight:I

.field private mRawTargetDensity:I

.field private mRawWidth:I

.field private final mRenderMutex:Ljava/lang/Object;

.field private mRendererControllers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/RendererController;",
            ">;"
        }
    .end annotation
.end field

.field private mResizeScale:F

.field private mRootTag:Ljava/lang/String;

.field private mSaveConfigOnlyInPause:Z

.field private mSaveConfigViaProvider:Z

.field private mScale:F

.field private mScaleByDensity:Z

.field private mSelfRender:Z

.field public mShowDebugLayout:Z

.field private mShowFramerate:Z

.field private mSoundManager:Lcom/miui/maml/SoundManager;

.field private mStylesManager:Lcom/miui/maml/StylesManager;

.field private mSupportAccessibilityService:Z

.field private mSystemExternCommandListener:Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;

.field private mTargetDensity:I

.field protected mTargetScreenHeight:I

.field protected mTargetScreenWidth:I

.field private mTouchBeginTime:Lcom/miui/maml/data/IndexedVariable;

.field private mTouchBeginX:Lcom/miui/maml/data/IndexedVariable;

.field private mTouchBeginY:Lcom/miui/maml/data/IndexedVariable;

.field private mTouchX:Lcom/miui/maml/data/IndexedVariable;

.field private mTouchY:Lcom/miui/maml/data/IndexedVariable;

.field private mTouchable:Z

.field private mTransparentSurface:Z

.field private mUseCustomizedDarkModeWallpaper:Z

.field private mUseHardwareCanvas:Z

.field protected mVariableBinderManager:Lcom/miui/maml/data/VariableBinderManager;

.field private mVariableUpdaterManager:Lcom/miui/maml/data/VariableUpdaterManager;

.field private mVersion:I

.field private mViewManagerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/maml/util/MamlViewManager;",
            ">;"
        }
    .end annotation
.end field

.field private mWidgetType:Ljava/lang/String;

.field private mWidth:F


# direct methods
.method public constructor <init>(Lcom/miui/maml/ScreenContext;)V
    .locals 3

    const/4 v0, 0x0

    .line 295
    invoke-direct {p0, v0, v0}, Lcom/miui/maml/elements/ScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    const/high16 v0, 0x41f00000    # 30.0f

    .line 116
    iput v0, p0, Lcom/miui/maml/ScreenElementRoot;->DEFAULT_FRAME_RATE:F

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mPreTickers:Ljava/util/ArrayList;

    .line 157
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mRawAttrs:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 169
    iput-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mSupportAccessibilityService:Z

    .line 170
    iput-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mBlurWindow:Z

    const/4 v1, 0x1

    .line 171
    iput-boolean v1, p0, Lcom/miui/maml/ScreenElementRoot;->mTouchable:Z

    .line 181
    iput-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mDisableCutRoundCorner:Z

    .line 193
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mHoverMatrix:Landroid/graphics/Matrix;

    .line 195
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mAnimationItems:Landroid/util/ArrayMap;

    .line 196
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mElements:Landroid/util/ArrayMap;

    .line 243
    new-instance v0, Lcom/miui/maml/ScreenElementRoot$FramerateHelper;

    invoke-direct {v0}, Lcom/miui/maml/ScreenElementRoot$FramerateHelper;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mFramerateHelper:Lcom/miui/maml/ScreenElementRoot$FramerateHelper;

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 276
    iput v0, p0, Lcom/miui/maml/ScreenElementRoot;->mCapability:I

    .line 288
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mAccessibleElements:Ljava/util/List;

    .line 292
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mRenderMutex:Ljava/lang/Object;

    .line 297
    iput-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 298
    iput-object p1, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    .line 299
    new-instance p1, Lcom/miui/maml/data/VariableUpdaterManager;

    invoke-direct {p1, p0}, Lcom/miui/maml/data/VariableUpdaterManager;-><init>(Lcom/miui/maml/ScreenElementRoot;)V

    iput-object p1, p0, Lcom/miui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lcom/miui/maml/data/VariableUpdaterManager;

    .line 300
    new-instance p1, Lcom/miui/maml/data/IndexedVariable;

    const-string v0, "touch_x"

    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    invoke-direct {p1, v0, v2, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object p1, p0, Lcom/miui/maml/ScreenElementRoot;->mTouchX:Lcom/miui/maml/data/IndexedVariable;

    .line 301
    new-instance p1, Lcom/miui/maml/data/IndexedVariable;

    const-string v0, "touch_y"

    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    invoke-direct {p1, v0, v2, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object p1, p0, Lcom/miui/maml/ScreenElementRoot;->mTouchY:Lcom/miui/maml/data/IndexedVariable;

    .line 302
    new-instance p1, Lcom/miui/maml/data/IndexedVariable;

    const-string v0, "touch_begin_x"

    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    invoke-direct {p1, v0, v2, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object p1, p0, Lcom/miui/maml/ScreenElementRoot;->mTouchBeginX:Lcom/miui/maml/data/IndexedVariable;

    .line 303
    new-instance p1, Lcom/miui/maml/data/IndexedVariable;

    const-string v0, "touch_begin_y"

    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    invoke-direct {p1, v0, v2, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object p1, p0, Lcom/miui/maml/ScreenElementRoot;->mTouchBeginY:Lcom/miui/maml/data/IndexedVariable;

    .line 304
    new-instance p1, Lcom/miui/maml/data/IndexedVariable;

    const-string v0, "touch_begin_time"

    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    invoke-direct {p1, v0, v2, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object p1, p0, Lcom/miui/maml/ScreenElementRoot;->mTouchBeginTime:Lcom/miui/maml/data/IndexedVariable;

    .line 305
    new-instance p1, Lcom/miui/maml/data/IndexedVariable;

    const-string v0, "intercept_sys_touch"

    .line 306
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    invoke-direct {p1, v0, v2, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object p1, p0, Lcom/miui/maml/ScreenElementRoot;->mNeedDisallowInterceptTouchEventVar:Lcom/miui/maml/data/IndexedVariable;

    .line 307
    new-instance p1, Lcom/miui/maml/SoundManager;

    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    invoke-direct {p1, v0}, Lcom/miui/maml/SoundManager;-><init>(Lcom/miui/maml/ScreenContext;)V

    iput-object p1, p0, Lcom/miui/maml/ScreenElementRoot;->mSoundManager:Lcom/miui/maml/SoundManager;

    .line 308
    new-instance p1, Lcom/miui/maml/SystemCommandListener;

    invoke-direct {p1, p0}, Lcom/miui/maml/SystemCommandListener;-><init>(Lcom/miui/maml/ScreenElementRoot;)V

    iput-object p1, p0, Lcom/miui/maml/ScreenElementRoot;->mSystemExternCommandListener:Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;

    .line 309
    new-instance p1, Landroid/content/res/Configuration;

    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object p1, p0, Lcom/miui/maml/ScreenElementRoot;->mConfiguration:Landroid/content/res/Configuration;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/maml/ScreenElementRoot;)Lcom/miui/maml/CommandTriggers;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mExternalCommandManager:Lcom/miui/maml/CommandTriggers;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/maml/ScreenElementRoot;)Ljava/util/ArrayList;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    return-object p0
.end method

.method private loadConfig(Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 612
    :cond_0
    new-instance v0, Lcom/miui/maml/util/ConfigFile;

    invoke-direct {v0}, Lcom/miui/maml/util/ConfigFile;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mConfig:Lcom/miui/maml/util/ConfigFile;

    .line 613
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mConfig:Lcom/miui/maml/util/ConfigFile;

    iget-boolean v1, p0, Lcom/miui/maml/ScreenElementRoot;->mSaveConfigViaProvider:Z

    invoke-virtual {v0, v1}, Lcom/miui/maml/util/ConfigFile;->setSaveViaProvider(Z)V

    .line 614
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mConfig:Lcom/miui/maml/util/ConfigFile;

    invoke-virtual {v0, p1}, Lcom/miui/maml/util/ConfigFile;->load(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 616
    iget-object p1, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    iget-object p1, p1, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    invoke-virtual {p1}, Lcom/miui/maml/ResourceManager;->getConfigRoot()Lorg/w3c/dom/Element;

    move-result-object p1

    .line 617
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mConfig:Lcom/miui/maml/util/ConfigFile;

    invoke-virtual {v0, p1}, Lcom/miui/maml/util/ConfigFile;->loadDefaultSettings(Lorg/w3c/dom/Element;)V

    .line 619
    :cond_1
    iget-object p1, p0, Lcom/miui/maml/ScreenElementRoot;->mConfig:Lcom/miui/maml/util/ConfigFile;

    invoke-virtual {p1}, Lcom/miui/maml/util/ConfigFile;->getVariables()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :catch_0
    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/maml/util/ConfigFile$Variable;

    .line 620
    iget-object v1, v0, Lcom/miui/maml/util/ConfigFile$Variable;->type:Ljava/lang/String;

    const-string v2, "string"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 621
    iget-object v1, v0, Lcom/miui/maml/util/ConfigFile$Variable;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    iget-object v2, v2, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    iget-object v0, v0, Lcom/miui/maml/util/ConfigFile$Variable;->value:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/miui/maml/util/Utils;->putVariableString(Ljava/lang/String;Lcom/miui/maml/data/Variables;Ljava/lang/String;)V

    goto :goto_0

    .line 622
    :cond_3
    iget-object v1, v0, Lcom/miui/maml/util/ConfigFile$Variable;->type:Ljava/lang/String;

    const-string v2, "number"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 624
    :try_start_0
    iget-object v1, v0, Lcom/miui/maml/util/ConfigFile$Variable;->value:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    .line 625
    iget-object v0, v0, Lcom/miui/maml/util/ConfigFile$Variable;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    iget-object v3, v3, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    invoke-static {v0, v3, v1, v2}, Lcom/miui/maml/util/Utils;->putVariableNumber(Ljava/lang/String;Lcom/miui/maml/data/Variables;D)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 630
    :cond_4
    iget-object p1, p0, Lcom/miui/maml/ScreenElementRoot;->mConfig:Lcom/miui/maml/util/ConfigFile;

    invoke-virtual {p1}, Lcom/miui/maml/util/ConfigFile;->getTasks()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/maml/util/Task;

    .line 631
    iget-object v1, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    iget-object v1, v1, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/miui/maml/util/Task;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".name"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/miui/maml/util/Task;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 632
    iget-object v1, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    iget-object v1, v1, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/miui/maml/util/Task;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".package"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/miui/maml/util/Task;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 633
    iget-object v1, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    iget-object v1, v1, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/miui/maml/util/Task;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".class"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/miui/maml/util/Task;->className:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    return-void
.end method

.method private loadRawAttrs(Lorg/w3c/dom/Element;)V
    .locals 4

    .line 1207
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p1

    const/4 v0, 0x0

    .line 1208
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1209
    invoke-interface {p1, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 1210
    iget-object v2, p0, Lcom/miui/maml/ScreenElementRoot;->mRawAttrs:Ljava/util/HashMap;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private processUseVariableUpdater(Lorg/w3c/dom/Element;)V
    .locals 1

    const-string v0, "useVariableUpdater"

    .line 1217
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1218
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1219
    iget-object p1, p0, Lcom/miui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lcom/miui/maml/data/VariableUpdaterManager;

    invoke-virtual {p0, p1}, Lcom/miui/maml/ScreenElementRoot;->onAddVariableUpdater(Lcom/miui/maml/data/VariableUpdaterManager;)V

    goto :goto_0

    .line 1221
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lcom/miui/maml/data/VariableUpdaterManager;

    invoke-virtual {v0, p1}, Lcom/miui/maml/data/VariableUpdaterManager;->addFromTag(Ljava/lang/String;)V

    .line 1224
    :goto_0
    new-instance p1, Lcom/miui/maml/data/DarkModeVariableUpdater;

    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lcom/miui/maml/data/VariableUpdaterManager;

    invoke-direct {p1, v0}, Lcom/miui/maml/data/DarkModeVariableUpdater;-><init>(Lcom/miui/maml/data/VariableUpdaterManager;)V

    .line 1225
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lcom/miui/maml/data/VariableUpdaterManager;

    invoke-virtual {v0, p1}, Lcom/miui/maml/data/VariableUpdaterManager;->add(Lcom/miui/maml/data/VariableUpdater;)V

    .line 1228
    new-instance p1, Lcom/miui/maml/data/ConfigChangeVariableUpdater;

    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lcom/miui/maml/data/VariableUpdaterManager;

    invoke-direct {p1, v0}, Lcom/miui/maml/data/ConfigChangeVariableUpdater;-><init>(Lcom/miui/maml/data/VariableUpdaterManager;)V

    .line 1229
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lcom/miui/maml/data/VariableUpdaterManager;

    invoke-virtual {v0, p1}, Lcom/miui/maml/data/VariableUpdaterManager;->add(Lcom/miui/maml/data/VariableUpdater;)V

    return-void
.end method

.method private setupScale(Lorg/w3c/dom/Element;)V
    .locals 7

    const-string v0, "scaleByDensity"

    .line 1125
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1126
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1127
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mScaleByDensity:Z

    :cond_0
    const-string v0, "defaultScreenWidth"

    const/4 v1, 0x0

    .line 1129
    invoke-static {p1, v0, v1}, Lcom/miui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    .line 1130
    iget v0, p0, Lcom/miui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    if-nez v0, :cond_1

    const-string v0, "screenWidth"

    .line 1131
    invoke-static {p1, v0, v1}, Lcom/miui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    :cond_1
    const-string v0, "defaultResourceDensity"

    .line 1133
    invoke-static {p1, v0, v1}, Lcom/miui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/maml/ScreenElementRoot;->mRawDefaultResourceDensity:I

    .line 1134
    iget v0, p0, Lcom/miui/maml/ScreenElementRoot;->mRawDefaultResourceDensity:I

    if-nez v0, :cond_2

    const-string v0, "resDensity"

    .line 1135
    invoke-static {p1, v0, v1}, Lcom/miui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/maml/ScreenElementRoot;->mRawDefaultResourceDensity:I

    .line 1137
    :cond_2
    iget v0, p0, Lcom/miui/maml/ScreenElementRoot;->mRawDefaultResourceDensity:I

    invoke-static {v0}, Lcom/miui/maml/ResourceManager;->translateDensity(I)I

    move-result v0

    iput v0, p0, Lcom/miui/maml/ScreenElementRoot;->mDefaultResourceDensity:I

    .line 1138
    iget v0, p0, Lcom/miui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    const/16 v2, 0x1e0

    const/16 v3, 0xf0

    if-nez v0, :cond_3

    iget v0, p0, Lcom/miui/maml/ScreenElementRoot;->mDefaultResourceDensity:I

    if-nez v0, :cond_3

    .line 1139
    iput v2, p0, Lcom/miui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    .line 1140
    iput v3, p0, Lcom/miui/maml/ScreenElementRoot;->mDefaultResourceDensity:I

    goto :goto_0

    .line 1141
    :cond_3
    iget v0, p0, Lcom/miui/maml/ScreenElementRoot;->mDefaultResourceDensity:I

    if-nez v0, :cond_4

    .line 1143
    iget v0, p0, Lcom/miui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    mul-int/2addr v0, v3

    div-int/2addr v0, v2

    iput v0, p0, Lcom/miui/maml/ScreenElementRoot;->mDefaultResourceDensity:I

    goto :goto_0

    .line 1144
    :cond_4
    iget v4, p0, Lcom/miui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    if-nez v4, :cond_5

    mul-int/2addr v0, v2

    .line 1145
    div-int/2addr v0, v3

    iput v0, p0, Lcom/miui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    .line 1148
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    iget v4, p0, Lcom/miui/maml/ScreenElementRoot;->mDefaultResourceDensity:I

    invoke-virtual {v0, v4}, Lcom/miui/maml/ResourceManager;->setDefaultResourceDensity(I)V

    .line 1150
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1151
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    .line 1152
    iget v5, p0, Lcom/miui/maml/ScreenElementRoot;->mResizeScale:F

    iget-object v6, p0, Lcom/miui/maml/ScreenElementRoot;->mWidgetType:Ljava/lang/String;

    invoke-static {v0, v5, v6}, Lcom/miui/maml/util/DeviceUtils;->getTargetScreenWH(Landroid/view/WindowManager;FLjava/lang/String;)[I

    move-result-object v0

    .line 1153
    aget v5, v0, v1

    iput v5, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    const/4 v5, 0x1

    .line 1154
    aget v0, v0, v5

    iput v0, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetScreenHeight:I

    .line 1155
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1156
    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1157
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p0, Lcom/miui/maml/ScreenElementRoot;->mRawTargetDensity:I

    .line 1159
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1160
    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    .line 1163
    iget v4, p0, Lcom/miui/maml/ScreenElementRoot;->mRawDefaultResourceDensity:I

    if-nez v4, :cond_6

    .line 1165
    iget v4, p0, Lcom/miui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    mul-int/2addr v4, v3

    div-int/2addr v4, v2

    .line 1167
    :cond_6
    new-instance v2, Lcom/miui/maml/ScreenElementRoot$ExtraResource;

    invoke-direct {v2, p1, v4}, Lcom/miui/maml/ScreenElementRoot$ExtraResource;-><init>(Lorg/w3c/dom/Element;I)V

    .line 1168
    iget v3, p0, Lcom/miui/maml/ScreenElementRoot;->mRawTargetDensity:I

    iget v4, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    invoke-virtual {v2, v3, v4, v0}, Lcom/miui/maml/ScreenElementRoot$ExtraResource;->findResource(III)Lcom/miui/maml/ScreenElementRoot$ExtraResource$Resource;

    move-result-object v3

    const-string v4, "ScreenElementRoot"

    .line 1169
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "findResource: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/miui/maml/ScreenElementRoot$ExtraResource$Resource;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/maml/util/MamlLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1170
    iget v4, v3, Lcom/miui/maml/ScreenElementRoot$ExtraResource$Resource;->mDensity:I

    invoke-static {v4}, Lcom/miui/maml/ResourceManager;->translateDensity(I)I

    move-result v4

    int-to-float v4, v4

    iget v5, v3, Lcom/miui/maml/ScreenElementRoot$ExtraResource$Resource;->mScale:F

    div-float/2addr v4, v5

    float-to-int v4, v4

    .line 1171
    iget-object v5, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    iget-object v5, v5, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    iget-object v3, v3, Lcom/miui/maml/ScreenElementRoot$ExtraResource$Resource;->mPath:Ljava/lang/String;

    invoke-virtual {v5, v3, v4}, Lcom/miui/maml/ResourceManager;->setExtraResource(Ljava/lang/String;I)V

    .line 1174
    iget v3, p0, Lcom/miui/maml/ScreenElementRoot;->mRawTargetDensity:I

    iget v4, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    invoke-virtual {v2, v3, v4, v0}, Lcom/miui/maml/ScreenElementRoot$ExtraResource;->findScale(III)Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;

    move-result-object v0

    const-string v2, "ScreenElementRoot"

    .line 1175
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "findScale: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/maml/util/MamlLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1179
    iget-boolean v2, p0, Lcom/miui/maml/ScreenElementRoot;->mScaleByDensity:Z

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-eqz v2, :cond_8

    .line 1180
    iget v2, p0, Lcom/miui/maml/ScreenElementRoot;->mRawTargetDensity:I

    invoke-static {v2}, Lcom/miui/maml/ResourceManager;->translateDensity(I)I

    move-result v2

    iput v2, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetDensity:I

    .line 1182
    iget v2, v0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScale:F

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_7

    .line 1183
    iget v0, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetDensity:I

    int-to-float v0, v0

    iget v2, p0, Lcom/miui/maml/ScreenElementRoot;->mDefaultResourceDensity:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    iput v0, p0, Lcom/miui/maml/ScreenElementRoot;->mScale:F

    goto :goto_1

    .line 1185
    :cond_7
    iget v2, p0, Lcom/miui/maml/ScreenElementRoot;->mRawTargetDensity:I

    int-to-float v2, v2

    mul-float/2addr v2, v3

    iget v3, v0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mDensity:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 1186
    iget v0, v0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScale:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/miui/maml/ScreenElementRoot;->mScale:F

    goto :goto_1

    .line 1189
    :cond_8
    iget v2, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    int-to-float v2, v2

    iget v5, p0, Lcom/miui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    int-to-float v5, v5

    div-float/2addr v2, v5

    iput v2, p0, Lcom/miui/maml/ScreenElementRoot;->mScale:F

    .line 1190
    iget v2, p0, Lcom/miui/maml/ScreenElementRoot;->mDefaultResourceDensity:I

    int-to-float v2, v2

    iget v5, p0, Lcom/miui/maml/ScreenElementRoot;->mScale:F

    mul-float/2addr v2, v5

    float-to-int v2, v2

    iput v2, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetDensity:I

    .line 1192
    iget v2, v0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScale:F

    cmpl-float v2, v2, v4

    if-lez v2, :cond_9

    .line 1193
    iget v2, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v3

    iget v3, v0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScreenWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 1194
    iget v0, v0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScale:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/miui/maml/ScreenElementRoot;->mScale:F

    :cond_9
    :goto_1
    const-string v0, "ScreenElementRoot"

    .line 1197
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set scale: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/miui/maml/ScreenElementRoot;->mScale:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/miui/maml/util/MamlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1198
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    iget v2, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetDensity:I

    invoke-virtual {v0, v2}, Lcom/miui/maml/ResourceManager;->setTargetDensity(I)V

    const-string v0, "width"

    .line 1200
    invoke-static {p1, v0, v1}, Lcom/miui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/maml/ScreenElementRoot;->mRawWidth:I

    const-string v0, "height"

    .line 1201
    invoke-static {p1, v0, v1}, Lcom/miui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/miui/maml/ScreenElementRoot;->mRawHeight:I

    .line 1202
    iget p1, p0, Lcom/miui/maml/ScreenElementRoot;->mRawWidth:I

    int-to-float p1, p1

    iget v0, p0, Lcom/miui/maml/ScreenElementRoot;->mScale:F

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/miui/maml/ScreenElementRoot;->mWidth:F

    .line 1203
    iget p1, p0, Lcom/miui/maml/ScreenElementRoot;->mRawHeight:I

    int-to-float p1, p1

    iget v0, p0, Lcom/miui/maml/ScreenElementRoot;->mScale:F

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/miui/maml/ScreenElementRoot;->mHeight:F

    return-void
.end method

.method private traverseElements()V
    .locals 1

    .line 851
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 852
    new-instance v0, Lcom/miui/maml/ScreenElementRoot$2;

    invoke-direct {v0, p0}, Lcom/miui/maml/ScreenElementRoot$2;-><init>(Lcom/miui/maml/ScreenElementRoot;)V

    invoke-virtual {p0, v0}, Lcom/miui/maml/ScreenElementRoot;->acceptVisitor(Lcom/miui/maml/elements/ScreenElementVisitor;)V

    return-void
.end method


# virtual methods
.method public acceptVisitor(Lcom/miui/maml/elements/ScreenElementVisitor;)V
    .locals 1

    .line 1627
    invoke-super {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->acceptVisitor(Lcom/miui/maml/elements/ScreenElementVisitor;)V

    .line 1628
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    invoke-virtual {v0, p1}, Lcom/miui/maml/elements/ElementGroup;->acceptVisitor(Lcom/miui/maml/elements/ScreenElementVisitor;)V

    return-void
.end method

.method public addAccessibleElements(Lcom/miui/maml/elements/AnimatedScreenElement;)V
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mAccessibleElements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/maml/elements/AnimatedScreenElement;->setVirtualViewId(I)V

    .line 369
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mAccessibleElements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addAccessibleList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/maml/elements/AnimatedScreenElement;",
            ">;)V"
        }
    .end annotation

    .line 389
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mAccessibleElements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 390
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 391
    iget-object v1, p0, Lcom/miui/maml/ScreenElementRoot;->mAccessibleElements:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/maml/elements/AnimatedScreenElement;->setVirtualViewId(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addAnimationItem(Ljava/lang/String;Lcom/miui/maml/animation/BaseAnimation$AnimationItem;)V
    .locals 1

    .line 1767
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mAnimationItems:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1768
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mAnimationItems:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 1769
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1771
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1772
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1773
    iget-object p2, p0, Lcom/miui/maml/ScreenElementRoot;->mAnimationItems:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public addElement(Ljava/lang/String;Ljava/lang/ref/WeakReference;)V
    .locals 1

    .line 1790
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mElements:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addPreTicker(Lcom/miui/maml/elements/ITicker;)V
    .locals 1

    .line 1370
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mPreTickers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public allowScreenRotation()Z
    .locals 1

    .line 1664
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mAllowScreenRotation:Z

    return v0
.end method

.method public attachToVsync()V
    .locals 4

    .line 1573
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mController:Lcom/miui/maml/RendererController;

    if-eqz v0, :cond_1

    .line 1576
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1578
    invoke-static {}, Lcom/miui/maml/RenderVsyncUpdater;->getInstance()Lcom/miui/maml/RenderVsyncUpdater;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/maml/RendererController;

    invoke-virtual {v2, v3}, Lcom/miui/maml/RenderVsyncUpdater;->addRendererController(Lcom/miui/maml/RendererController;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 1574
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "VsyncUpdater or controller is null, MUST load before attaching"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createFramerateToken(Ljava/lang/String;)Lcom/miui/maml/FramerateTokenList$FramerateToken;
    .locals 0

    .line 313
    invoke-virtual {p0, p1}, Lcom/miui/maml/ScreenElementRoot;->createToken(Ljava/lang/String;)Lcom/miui/maml/FramerateTokenList$FramerateToken;

    move-result-object p1

    return-object p1
.end method

.method public detachFromVsync()V
    .locals 4

    .line 1583
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mController:Lcom/miui/maml/RendererController;

    if-eqz v0, :cond_1

    .line 1586
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1588
    invoke-static {}, Lcom/miui/maml/RenderVsyncUpdater;->getInstance()Lcom/miui/maml/RenderVsyncUpdater;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/maml/RendererController;

    invoke-virtual {v2, v3}, Lcom/miui/maml/RenderVsyncUpdater;->removeRendererController(Lcom/miui/maml/RendererController;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 1584
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "VsyncUpdater or controller is null, MUST load before detaching"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected doRender(Landroid/graphics/Canvas;)V
    .locals 3

    .line 483
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mFinished:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mLoaded:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 486
    :cond_0
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mClearCanvas:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 487
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 492
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    invoke-virtual {v0, p1}, Lcom/miui/maml/elements/ElementGroup;->render(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ScreenElementRoot"

    .line 496
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 494
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 499
    :goto_0
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mShowFramerate:Z

    if-eqz v0, :cond_2

    .line 500
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mFramerateHelper:Lcom/miui/maml/ScreenElementRoot$FramerateHelper;

    invoke-virtual {v0, p1}, Lcom/miui/maml/ScreenElementRoot$FramerateHelper;->draw(Landroid/graphics/Canvas;)V

    .line 503
    :cond_2
    iget v0, p0, Lcom/miui/maml/ScreenElementRoot;->mFrames:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/maml/ScreenElementRoot;->mFrames:I

    .line 504
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mController:Lcom/miui/maml/RendererController;

    invoke-virtual {v0}, Lcom/miui/maml/RendererController;->doneRender()V

    .line 506
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mDarkWallpaperMode:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mUseCustomizedDarkModeWallpaper:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mAutoDarkenWallpaper:Z

    if-eqz v0, :cond_3

    const/high16 v0, 0x19000000

    .line 507
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_3
    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method protected doTick(J)V
    .locals 7

    .line 401
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mFinished:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mLoaded:Z

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mVariableBinderManager:Lcom/miui/maml/data/VariableBinderManager;

    if-eqz v0, :cond_1

    .line 405
    invoke-virtual {v0}, Lcom/miui/maml/data/VariableBinderManager;->tick()V

    .line 407
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lcom/miui/maml/data/VariableUpdaterManager;

    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/data/VariableUpdaterManager;->tick(J)V

    .line 410
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mPreTickers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 412
    iget-object v3, p0, Lcom/miui/maml/ScreenElementRoot;->mPreTickers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/maml/elements/ITicker;

    invoke-interface {v3, p1, p2}, Lcom/miui/maml/elements/ITicker;->tick(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 415
    :cond_2
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/elements/ElementGroup;->tick(J)V

    .line 418
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mNeedDisallowInterceptTouchEventVar:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {v0}, Lcom/miui/maml/data/IndexedVariable;->getDouble()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    const/4 v2, 0x1

    if-lez v0, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v1

    .line 419
    :goto_1
    iput-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mNeedDisallowInterceptTouchEvent:Z

    .line 422
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mFrameRateVar:Lcom/miui/maml/data/IndexedVariable;

    const-wide/16 v3, 0x0

    if-nez v0, :cond_4

    .line 423
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    const-string v5, "frame_rate"

    iget-object v6, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    iget-object v6, v6, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    invoke-direct {v0, v5, v6, v2}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mFrameRateVar:Lcom/miui/maml/data/IndexedVariable;

    .line 424
    iput-wide v3, p0, Lcom/miui/maml/ScreenElementRoot;->mCheckPoint:J

    .line 427
    :cond_4
    iget-wide v5, p0, Lcom/miui/maml/ScreenElementRoot;->mCheckPoint:J

    cmp-long v0, v5, v3

    if-nez v0, :cond_5

    .line 428
    iput-wide p1, p0, Lcom/miui/maml/ScreenElementRoot;->mCheckPoint:J

    goto :goto_2

    :cond_5
    sub-long v2, p1, v5

    const-wide/16 v4, 0x3e8

    cmp-long v0, v2, v4

    if-ltz v0, :cond_6

    .line 432
    iget v0, p0, Lcom/miui/maml/ScreenElementRoot;->mFrames:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v4, v0

    div-long/2addr v4, v2

    long-to-int v0, v4

    .line 433
    iget-object v2, p0, Lcom/miui/maml/ScreenElementRoot;->mFramerateHelper:Lcom/miui/maml/ScreenElementRoot$FramerateHelper;

    invoke-virtual {v2, v0}, Lcom/miui/maml/ScreenElementRoot$FramerateHelper;->set(I)V

    .line 434
    iget-object v2, p0, Lcom/miui/maml/ScreenElementRoot;->mFrameRateVar:Lcom/miui/maml/data/IndexedVariable;

    int-to-double v3, v0

    invoke-virtual {v2, v3, v4}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 435
    iput v1, p0, Lcom/miui/maml/ScreenElementRoot;->mFrames:I

    .line 436
    iput-wide p1, p0, Lcom/miui/maml/ScreenElementRoot;->mCheckPoint:J

    :cond_6
    :goto_2
    return-void

    :cond_7
    :goto_3
    return-void
.end method

.method public doneRender()V
    .locals 1

    .line 1593
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mController:Lcom/miui/maml/RendererController;

    invoke-virtual {v0}, Lcom/miui/maml/RendererController;->doneRender()V

    return-void
.end method

.method public findBinder(Ljava/lang/String;)Lcom/miui/maml/data/VariableBinder;
    .locals 1

    .line 478
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mVariableBinderManager:Lcom/miui/maml/data/VariableBinderManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/miui/maml/data/VariableBinderManager;->findBinder(Ljava/lang/String;)Lcom/miui/maml/data/VariableBinder;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;
    .locals 1

    const-string v0, "__root"

    .line 471
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 474
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/maml/ScreenElementRoot;->getElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    move-result-object p1

    return-object p1
.end method

.method public findTask(Ljava/lang/String;)Lcom/miui/maml/util/Task;
    .locals 1

    .line 1263
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mConfig:Lcom/miui/maml/util/ConfigFile;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/miui/maml/util/ConfigFile;->getTask(Ljava/lang/String;)Lcom/miui/maml/util/Task;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public finish()V
    .locals 2

    .line 1301
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mFinished:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mLoaded:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 1303
    :cond_0
    invoke-super {p0}, Lcom/miui/maml/elements/ScreenElement;->finish()V

    const-string v0, "ScreenElementRoot"

    const-string v1, "finish"

    .line 1304
    invoke-static {v0, v1}, Lcom/miui/maml/util/MamlLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1306
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    const-string v1, "preFinish"

    invoke-virtual {v0, v1}, Lcom/miui/maml/elements/ElementGroup;->performAction(Ljava/lang/String;)V

    .line 1307
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    invoke-virtual {v0}, Lcom/miui/maml/elements/ElementGroup;->finish()V

    .line 1308
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    const-string v1, "finish"

    invoke-virtual {v0, v1}, Lcom/miui/maml/elements/ElementGroup;->performAction(Ljava/lang/String;)V

    .line 1310
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mConfig:Lcom/miui/maml/util/ConfigFile;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/miui/maml/ScreenElementRoot;->mSaveConfigOnlyInPause:Z

    if-nez v1, :cond_1

    .line 1311
    iget-object v1, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    iget-object v1, v1, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/maml/util/ConfigFile;->save(Landroid/content/Context;)Z

    .line 1314
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mVariableBinderManager:Lcom/miui/maml/data/VariableBinderManager;

    if-eqz v0, :cond_2

    .line 1315
    invoke-virtual {v0}, Lcom/miui/maml/data/VariableBinderManager;->finish()V

    .line 1317
    :cond_2
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mExternalCommandManager:Lcom/miui/maml/CommandTriggers;

    if-eqz v0, :cond_3

    .line 1318
    invoke-virtual {v0}, Lcom/miui/maml/CommandTriggers;->finish()V

    .line 1320
    :cond_3
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lcom/miui/maml/data/VariableUpdaterManager;

    if-eqz v0, :cond_4

    .line 1321
    invoke-virtual {v0}, Lcom/miui/maml/data/VariableUpdaterManager;->finish()V

    .line 1323
    :cond_4
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mSoundManager:Lcom/miui/maml/SoundManager;

    invoke-virtual {v0}, Lcom/miui/maml/SoundManager;->release()V

    .line 1324
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    iget-boolean v1, p0, Lcom/miui/maml/ScreenElementRoot;->mKeepResource:Z

    invoke-virtual {v0, v1}, Lcom/miui/maml/ResourceManager;->finish(Z)V

    const/4 v0, 0x1

    .line 1325
    iput-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mFinished:Z

    const/4 v0, 0x0

    .line 1326
    iput-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mKeepResource:Z

    .line 1329
    invoke-static {}, Lcom/miui/maml/data/Expression$FunctionExpression;->resetFunctions()V

    return-void

    :cond_5
    :goto_0
    return-void
.end method

.method public getAccessibleElements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/maml/elements/AnimatedScreenElement;",
            ">;"
        }
    .end annotation

    .line 373
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mAccessibleElements:Ljava/util/List;

    return-object v0
.end method

.method public getAnimationItems(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/animation/BaseAnimation$AnimationItem;",
            ">;"
        }
    .end annotation

    .line 1778
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mAnimationItems:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    return-object p1
.end method

.method public getCacheDir()Ljava/lang/String;
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mCacheDir:Ljava/lang/String;

    return-object v0
.end method

.method public getCapability(I)Z
    .locals 1

    .line 1702
    iget v0, p0, Lcom/miui/maml/ScreenElementRoot;->mCapability:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getContext()Lcom/miui/maml/ScreenContext;
    .locals 1

    .line 456
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    return-object v0
.end method

.method public getContextAndRect()Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Landroid/content/Context;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 1564
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mViewManagerRef:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/maml/util/MamlViewManager;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 1566
    invoke-interface {v0}, Lcom/miui/maml/util/MamlViewManager;->getViewLocationOnScreen()Landroid/graphics/Rect;

    move-result-object v1

    .line 1567
    invoke-interface {v0}, Lcom/miui/maml/util/MamlViewManager;->getViewContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method public getDefaultScreenWidth()I
    .locals 1

    .line 1292
    iget v0, p0, Lcom/miui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    return v0
.end method

.method public getElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;
    .locals 1

    .line 1782
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mElements:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    .line 1784
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/maml/elements/ScreenElement;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getFontScale()F
    .locals 1

    .line 1733
    iget v0, p0, Lcom/miui/maml/ScreenElementRoot;->mFontScale:F

    return v0
.end method

.method public getHeight()F
    .locals 1

    .line 1366
    iget v0, p0, Lcom/miui/maml/ScreenElementRoot;->mHeight:F

    return v0
.end method

.method public getHoverElement()Lcom/miui/maml/elements/AnimatedScreenElement;
    .locals 1

    .line 1443
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mHoverElement:Lcom/miui/maml/elements/AnimatedScreenElement;

    return-object v0
.end method

.method public getMamlAccessHelper()Lcom/miui/maml/util/MamlAccessHelper;
    .locals 1

    .line 1763
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mMamlAccessHelper:Lcom/miui/maml/util/MamlAccessHelper;

    return-object v0
.end method

.method public getMamlSurface()Lcom/miui/maml/component/MamlSurface;
    .locals 1

    .line 1836
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mMamlSurfaceRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/maml/component/MamlSurface;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getRawAttr(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 447
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mRawAttrs:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getRenderMutex()Ljava/lang/Object;
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mRenderMutex:Ljava/lang/Object;

    return-object v0
.end method

.method public getRendererController()Lcom/miui/maml/RendererController;
    .locals 1

    .line 1633
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mController:Lcom/miui/maml/RendererController;

    return-object v0
.end method

.method public getResourceDensity()I
    .locals 1

    .line 1280
    iget v0, p0, Lcom/miui/maml/ScreenElementRoot;->mDefaultResourceDensity:I

    return v0
.end method

.method public getRootTag()Ljava/lang/String;
    .locals 1

    .line 840
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mRootTag:Ljava/lang/String;

    return-object v0
.end method

.method public final getScale()F
    .locals 2

    .line 1271
    iget v0, p0, Lcom/miui/maml/ScreenElementRoot;->mScale:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    const-string v0, "ScreenElementRoot"

    const-string v1, "scale not initialized!"

    .line 1272
    invoke-static {v0, v1}, Lcom/miui/maml/util/MamlLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    :cond_0
    return v0
.end method

.method public getScreenHeight()I
    .locals 1

    .line 1358
    iget v0, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetScreenHeight:I

    return v0
.end method

.method public getScreenWidth()I
    .locals 1

    .line 1354
    iget v0, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    return v0
.end method

.method public getStyle(Ljava/lang/String;)Lcom/miui/maml/StylesManager$Style;
    .locals 2

    .line 844
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 846
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mStylesManager:Lcom/miui/maml/StylesManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/miui/maml/StylesManager;->getStyle(Ljava/lang/String;)Lcom/miui/maml/StylesManager$Style;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public getSystemFrameRate()F
    .locals 2

    .line 1818
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1819
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1820
    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    move-result v0

    return v0
.end method

.method public getTargetDensity()I
    .locals 1

    .line 1284
    iget v0, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetDensity:I

    return v0
.end method

.method public getViewManager()Lcom/miui/maml/util/MamlViewManager;
    .locals 1

    .line 1722
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mViewManagerRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 1723
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/maml/util/MamlViewManager;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWidth()F
    .locals 1

    .line 1362
    iget v0, p0, Lcom/miui/maml/ScreenElementRoot;->mWidth:F

    return v0
.end method

.method public getmConfiguration()Landroid/content/res/Configuration;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method public haptic(I)V
    .locals 0

    return-void
.end method

.method public init()V
    .locals 6

    .line 517
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mLoaded:Z

    if-nez v0, :cond_0

    return-void

    .line 521
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    const-string v1, "__objRoot"

    .line 522
    invoke-virtual {v0, v1, p0}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "__objContext"

    .line 523
    iget-object v2, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 525
    invoke-super {p0}, Lcom/miui/maml/elements/ScreenElement;->init()V

    const-string v1, "ScreenElementRoot"

    const-string v2, "init"

    .line 526
    invoke-static {v1, v2}, Lcom/miui/maml/util/MamlLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    iget v1, p0, Lcom/miui/maml/ScreenElementRoot;->mFrameRate:F

    invoke-virtual {p0, v1}, Lcom/miui/maml/ScreenElementRoot;->requestFramerate(F)V

    const/4 v1, -0x1

    .line 530
    iput v1, p0, Lcom/miui/maml/ScreenElementRoot;->mCapability:I

    .line 531
    invoke-static {}, Lcom/miui/maml/util/HideSdkDependencyUtils;->isShowDebugLayout()Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/maml/ScreenElementRoot;->mShowDebugLayout:Z

    const/4 v1, 0x0

    .line 533
    iput-boolean v1, p0, Lcom/miui/maml/ScreenElementRoot;->mFinished:Z

    .line 534
    iget-object v2, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    iget-object v2, v2, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    invoke-virtual {v2}, Lcom/miui/maml/ResourceManager;->init()V

    .line 537
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->fontScale:F

    iput v2, p0, Lcom/miui/maml/ScreenElementRoot;->mFontScale:F

    const-string v2, "__fontScale"

    .line 538
    iget v3, p0, Lcom/miui/maml/ScreenElementRoot;->mFontScale:F

    float-to-double v3, v3

    invoke-virtual {v0, v2, v3, v4}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 541
    iget-object v2, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    iget-object v2, v2, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v3, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    iget-object v3, v3, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    iget-object v4, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    iget-object v4, v4, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    invoke-static {v2, v3, v4}, Lcom/miui/maml/LanguageHelper;->load(Ljava/util/Locale;Lcom/miui/maml/ResourceManager;Lcom/miui/maml/data/Variables;)Z

    const-string v2, "raw_screen_width"

    .line 543
    iget v3, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    int-to-double v3, v3

    invoke-virtual {v0, v2, v3, v4}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    const-string v2, "raw_screen_height"

    .line 544
    iget v3, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetScreenHeight:I

    int-to-double v3, v3

    invoke-virtual {v0, v2, v3, v4}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    const-string v2, "screen_width"

    .line 545
    iget v3, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/miui/maml/ScreenElementRoot;->mScale:F

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-virtual {v0, v2, v3, v4}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    const-string v2, "screen_height"

    .line 546
    iget v3, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetScreenHeight:I

    int-to-float v3, v3

    iget v4, p0, Lcom/miui/maml/ScreenElementRoot;->mScale:F

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-virtual {v0, v2, v3, v4}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 547
    iget v2, p0, Lcom/miui/maml/ScreenElementRoot;->mRawWidth:I

    if-lez v2, :cond_1

    const-string v3, "view_width"

    int-to-double v4, v2

    .line 548
    invoke-virtual {v0, v3, v4, v5}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 550
    :cond_1
    iget v2, p0, Lcom/miui/maml/ScreenElementRoot;->mRawHeight:I

    if-lez v2, :cond_2

    const-string v3, "view_height"

    int-to-double v4, v2

    .line 551
    invoke-virtual {v0, v3, v4, v5}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    :cond_2
    const-string v2, "view_width"

    .line 553
    iget v3, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/miui/maml/ScreenElementRoot;->mScale:F

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-virtual {v0, v2, v3, v4}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    const-string v2, "view_height"

    .line 554
    iget v3, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetScreenHeight:I

    int-to-float v3, v3

    iget v4, p0, Lcom/miui/maml/ScreenElementRoot;->mScale:F

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-virtual {v0, v2, v3, v4}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    const-string v2, "__raw_density"

    .line 556
    iget v3, p0, Lcom/miui/maml/ScreenElementRoot;->mRawTargetDensity:I

    int-to-double v3, v3

    invoke-virtual {v0, v2, v3, v4}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    const-string v2, "__scale_factor"

    .line 557
    iget v3, p0, Lcom/miui/maml/ScreenElementRoot;->mScale:F

    float-to-double v3, v3

    invoke-virtual {v0, v2, v3, v4}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    const-string v2, "__maml_version"

    const-wide/high16 v3, 0x4018000000000000L    # 6.0

    .line 558
    invoke-virtual {v0, v2, v3, v4}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 561
    :try_start_0
    iget-object v2, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    iget-object v2, v2, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_3

    .line 562
    iget-object v2, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    iget-object v2, v2, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v3, "com.android.thememanager"

    .line 564
    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 566
    iget v1, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v2, "ScreenElementRoot"

    const-string v3, "thememanager not found"

    .line 571
    invoke-static {v2, v3}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    const-string v2, "__thememanager_version"

    int-to-double v3, v1

    .line 573
    invoke-virtual {v0, v2, v3, v4}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    const-string v1, "__miui_version_name"

    const-string v2, "ro.miui.ui.version.name"

    .line 575
    invoke-static {v2}, Lcom/miui/maml/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "__miui_version_code"

    const-string v2, "ro.miui.ui.version.code"

    .line 576
    invoke-static {v2}, Lcom/miui/maml/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "__android_version"

    .line 577
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "__system_version"

    .line 578
    sget-object v2, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 579
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->loadConfig()V

    .line 582
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lcom/miui/maml/data/VariableUpdaterManager;

    if-eqz v0, :cond_4

    .line 583
    invoke-virtual {v0}, Lcom/miui/maml/data/VariableUpdaterManager;->init()V

    .line 586
    :cond_4
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mVariableBinderManager:Lcom/miui/maml/data/VariableBinderManager;

    if-eqz v0, :cond_5

    .line 587
    invoke-virtual {v0}, Lcom/miui/maml/data/VariableBinderManager;->init()V

    .line 590
    :cond_5
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mExternalCommandManager:Lcom/miui/maml/CommandTriggers;

    if-eqz v0, :cond_6

    .line 591
    invoke-virtual {v0}, Lcom/miui/maml/CommandTriggers;->init()V

    .line 594
    :cond_6
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    const-string v1, "init"

    invoke-virtual {v0, v1}, Lcom/miui/maml/elements/ElementGroup;->performAction(Ljava/lang/String;)V

    .line 595
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    invoke-virtual {v0}, Lcom/miui/maml/elements/ElementGroup;->init()V

    .line 596
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    const-string v1, "postInit"

    invoke-virtual {v0, v1}, Lcom/miui/maml/elements/ElementGroup;->performAction(Ljava/lang/String;)V

    .line 598
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/miui/maml/ScreenElementRoot;->mHoverElement:Lcom/miui/maml/elements/AnimatedScreenElement;

    const/4 v0, 0x1

    .line 599
    iput-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mNeedReset:Z

    .line 600
    iget-object v1, p0, Lcom/miui/maml/ScreenElementRoot;->mController:Lcom/miui/maml/RendererController;

    invoke-virtual {v1, v0}, Lcom/miui/maml/RendererController;->setNeedReset(Z)V

    .line 601
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->requestUpdate()V

    return-void
.end method

.method public isDisableCutRoundCorner()Z
    .locals 1

    .line 1288
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mDisableCutRoundCorner:Z

    return v0
.end method

.method public isMamlBlurWindow()Z
    .locals 1

    .line 1737
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mBlurWindow:Z

    return v0
.end method

.method public isSupportAccessibilityService()Z
    .locals 1

    .line 1698
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mSupportAccessibilityService:Z

    return v0
.end method

.method public isTransparentSurface()Z
    .locals 1

    .line 1840
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mTransparentSurface:Z

    return v0
.end method

.method public isUseHardwareCanvas()Z
    .locals 1

    .line 1741
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mUseHardwareCanvas:Z

    return v0
.end method

.method public issueExternCommand(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V
    .locals 3

    .line 1398
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mSystemExternCommandListener:Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;->onCommand(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V

    .line 1400
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mExternCommandListener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 1401
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;

    if-eqz v0, :cond_0

    .line 1403
    invoke-interface {v0, p1, p2, p3}, Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;->onCommand(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V

    const-string v0, "ScreenElementRoot"

    .line 1404
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "issueExternCommand: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/maml/util/MamlLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1407
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mMamlViewExternCommandListener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 1408
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;

    if-eqz v0, :cond_1

    .line 1410
    invoke-interface {v0, p1, p2, p3}, Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;->onCommand(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V

    const-string v0, "ScreenElementRoot"

    .line 1411
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "issueExternCommand to MamlView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/maml/util/MamlLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1414
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mMamlSurfaceExternCommandListener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    .line 1415
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;

    if-eqz v0, :cond_2

    .line 1417
    invoke-interface {v0, p1, p2, p3}, Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;->onCommand(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V

    const-string v0, "ScreenElementRoot"

    .line 1418
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "issueExternCommand to MamlSurface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/maml/util/MamlLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final load()Z
    .locals 8

    const/4 v0, 0x0

    .line 773
    :try_start_0
    iput-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mLoaded:Z

    .line 774
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 775
    iget-object v3, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    iget-object v3, v3, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    invoke-virtual {v3}, Lcom/miui/maml/ResourceManager;->getManifestRoot()Lorg/w3c/dom/Element;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v1, "ScreenElementRoot"

    const-string v2, "load error, manifest root is null"

    .line 777
    invoke-static {v1, v2}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 780
    :cond_0
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/maml/ScreenElementRoot;->mRootTag:Ljava/lang/String;

    .line 781
    invoke-direct {p0, v3}, Lcom/miui/maml/ScreenElementRoot;->loadRawAttrs(Lorg/w3c/dom/Element;)V

    .line 782
    invoke-direct {p0, v3}, Lcom/miui/maml/ScreenElementRoot;->processUseVariableUpdater(Lorg/w3c/dom/Element;)V

    .line 785
    invoke-direct {p0, v3}, Lcom/miui/maml/ScreenElementRoot;->setupScale(Lorg/w3c/dom/Element;)V

    const-string v4, "VariableBinders"

    .line 787
    invoke-static {v3, v4}, Lcom/miui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 789
    new-instance v5, Lcom/miui/maml/data/VariableBinderManager;

    invoke-direct {v5, v4, p0}, Lcom/miui/maml/data/VariableBinderManager;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    iput-object v5, p0, Lcom/miui/maml/ScreenElementRoot;->mVariableBinderManager:Lcom/miui/maml/data/VariableBinderManager;

    const-string v4, "ExternalCommands"

    .line 791
    invoke-static {v3, v4}, Lcom/miui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 793
    new-instance v5, Lcom/miui/maml/CommandTriggers;

    invoke-direct {v5, v4, p0}, Lcom/miui/maml/CommandTriggers;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)V

    iput-object v5, p0, Lcom/miui/maml/ScreenElementRoot;->mExternalCommandManager:Lcom/miui/maml/CommandTriggers;

    :cond_1
    const-string v4, "Styles"

    .line 797
    invoke-static {v3, v4}, Lcom/miui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 799
    new-instance v5, Lcom/miui/maml/StylesManager;

    invoke-direct {v5, v4}, Lcom/miui/maml/StylesManager;-><init>(Lorg/w3c/dom/Element;)V

    iput-object v5, p0, Lcom/miui/maml/ScreenElementRoot;->mStylesManager:Lcom/miui/maml/StylesManager;

    :cond_2
    const-string v4, "selfRender"

    .line 802
    invoke-interface {v3, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/miui/maml/ScreenElementRoot;->mSelfRender:Z

    const-string v4, "transparentSurface"

    .line 803
    invoke-interface {v3, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/miui/maml/ScreenElementRoot;->mTransparentSurface:Z

    const-string v4, "frameRate"

    .line 804
    iget v5, p0, Lcom/miui/maml/ScreenElementRoot;->DEFAULT_FRAME_RATE:F

    invoke-static {v3, v4, v5}, Lcom/miui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v4

    iput v4, p0, Lcom/miui/maml/ScreenElementRoot;->mFrameRate:F

    const-string v4, "customizedDarkModeWallpaper"

    .line 805
    invoke-interface {v3, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/miui/maml/ScreenElementRoot;->mUseCustomizedDarkModeWallpaper:Z

    const-string v4, "disableCutRoundCorner"

    .line 806
    invoke-interface {v3, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/miui/maml/ScreenElementRoot;->mDisableCutRoundCorner:Z

    const-string v4, "clearCanvas"

    .line 807
    invoke-interface {v3, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/miui/maml/ScreenElementRoot;->mClearCanvas:Z

    const-string v4, "supportAccessibityService"

    .line 808
    invoke-interface {v3, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/miui/maml/ScreenElementRoot;->mSupportAccessibilityService:Z

    const-string v4, "allowScreenRotation"

    .line 809
    invoke-interface {v3, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/miui/maml/ScreenElementRoot;->mAllowScreenRotation:Z

    const-string v4, "blurWindow"

    .line 810
    invoke-interface {v3, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/miui/maml/ScreenElementRoot;->mBlurWindow:Z

    const-string v4, "useHardwareCanvas"

    .line 811
    invoke-interface {v3, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/miui/maml/ScreenElementRoot;->mUseHardwareCanvas:Z

    const-string v4, "needFolmeClean"

    const/4 v5, 0x1

    .line 812
    invoke-static {v3, v4, v5}, Lcom/miui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_3

    move v4, v5

    goto :goto_0

    :cond_3
    move v4, v0

    :goto_0
    iput-boolean v4, p0, Lcom/miui/maml/ScreenElementRoot;->mNeedFolmeClean:Z

    .line 813
    new-instance v4, Lcom/miui/maml/RendererController;

    invoke-direct {v4}, Lcom/miui/maml/RendererController;-><init>()V

    iput-object v4, p0, Lcom/miui/maml/ScreenElementRoot;->mController:Lcom/miui/maml/RendererController;

    .line 814
    iget-object v4, p0, Lcom/miui/maml/ScreenElementRoot;->mController:Lcom/miui/maml/RendererController;

    iget-boolean v6, p0, Lcom/miui/maml/ScreenElementRoot;->mSelfRender:Z

    invoke-virtual {v4, v6}, Lcom/miui/maml/RendererController;->setSelfRender(Z)V

    .line 815
    new-instance v4, Lcom/miui/maml/ScreenElementRoot$InnerGroup;

    invoke-direct {v4, v3, p0}, Lcom/miui/maml/ScreenElementRoot$InnerGroup;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    iput-object v4, p0, Lcom/miui/maml/ScreenElementRoot;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    .line 816
    iget-object v4, p0, Lcom/miui/maml/ScreenElementRoot;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    invoke-virtual {v4}, Lcom/miui/maml/elements/ElementGroup;->getElements()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_4

    const-string v1, "ScreenElementRoot"

    const-string v2, "load error, no element loaded"

    .line 817
    invoke-static {v1, v2}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_4
    const-string v4, "version"

    .line 820
    invoke-static {v3, v4, v5}, Lcom/miui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/miui/maml/ScreenElementRoot;->mVersion:I

    .line 821
    invoke-virtual {p0, v3}, Lcom/miui/maml/ScreenElementRoot;->onLoad(Lorg/w3c/dom/Element;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v1, "ScreenElementRoot"

    const-string v2, "load error, onLoad fail"

    .line 822
    invoke-static {v1, v2}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 828
    :cond_5
    invoke-direct {p0}, Lcom/miui/maml/ScreenElementRoot;->traverseElements()V

    const-string v3, "ScreenElementRoot"

    .line 830
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "load finished, spent "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v1

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/miui/maml/util/MamlLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    iput-boolean v5, p0, Lcom/miui/maml/ScreenElementRoot;->mLoaded:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v5

    :catch_0
    move-exception v1

    const-string v2, "ScreenElementRoot"

    const-string v3, "load error! "

    .line 834
    invoke-static {v2, v3, v1}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method public loadConfig()V
    .locals 1

    .line 605
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mConfigPath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/miui/maml/ScreenElementRoot;->loadConfig(Ljava/lang/String;)V

    return-void
.end method

.method public needDisallowInterceptTouchEvent()Z
    .locals 1

    .line 752
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mNeedDisallowInterceptTouchEvent:Z

    return v0
.end method

.method public needFolmeClean()Z
    .locals 1

    .line 1745
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mNeedFolmeClean:Z

    return v0
.end method

.method protected onAddVariableUpdater(Lcom/miui/maml/data/VariableUpdaterManager;)V
    .locals 1

    .line 317
    new-instance v0, Lcom/miui/maml/data/DateTimeVariableUpdater;

    invoke-direct {v0, p1}, Lcom/miui/maml/data/DateTimeVariableUpdater;-><init>(Lcom/miui/maml/data/VariableUpdaterManager;)V

    invoke-virtual {p1, v0}, Lcom/miui/maml/data/VariableUpdaterManager;->add(Lcom/miui/maml/data/VariableUpdater;)V

    return-void
.end method

.method public onCommand(Ljava/lang/String;)V
    .locals 1

    .line 1333
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mExternalCommandManager:Lcom/miui/maml/CommandTriggers;

    if-eqz v0, :cond_0

    .line 1334
    new-instance v0, Lcom/miui/maml/ScreenElementRoot$3;

    invoke-direct {v0, p0, p1}, Lcom/miui/maml/ScreenElementRoot$3;-><init>(Lcom/miui/maml/ScreenElementRoot;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/miui/maml/ScreenElementRoot;->postRunnable(Ljava/lang/Runnable;)V

    .line 1345
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->requestUpdate()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1637
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mAllowScreenRotation:Z

    if-eqz v0, :cond_0

    .line 1638
    invoke-virtual {p0, p1}, Lcom/miui/maml/ScreenElementRoot;->setConfiguration(Landroid/content/res/Configuration;)V

    const-string v0, "orientationChange"

    .line 1639
    invoke-virtual {p0, v0}, Lcom/miui/maml/ScreenElementRoot;->onCommand(Ljava/lang/String;)V

    .line 1640
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->requestUpdate()V

    .line 1642
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mConfiguration:Landroid/content/res/Configuration;

    if-nez v0, :cond_1

    return-void

    .line 1646
    :cond_1
    iget v0, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mConfiguration:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    iget v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mConfiguration:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mConfiguration:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    iget v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v0, v1, :cond_4

    .line 1650
    :cond_2
    invoke-static {}, Lcom/miui/maml/ResourceManager;->clear()V

    .line 1651
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    invoke-virtual {v0}, Lcom/miui/maml/ResourceManager;->getManifestRoot()Lorg/w3c/dom/Element;

    move-result-object v0

    if-nez v0, :cond_3

    const-string p1, "ScreenElementRoot"

    const-string v0, "load error, manifest root is null"

    .line 1653
    invoke-static {p1, v0}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1656
    :cond_3
    invoke-direct {p0, v0}, Lcom/miui/maml/ScreenElementRoot;->setupScale(Lorg/w3c/dom/Element;)V

    .line 1657
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->requestUpdate()V

    .line 1659
    :cond_4
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    return-void
.end method

.method public onHover(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v0, 0x0

    .line 744
    :try_start_0
    iget-boolean v1, p0, Lcom/miui/maml/ScreenElementRoot;->mFinished:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/miui/maml/ScreenElementRoot;->mLoaded:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/miui/maml/ScreenElementRoot;->mTouchable:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/miui/maml/ScreenElementRoot;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    invoke-virtual {v1, p1}, Lcom/miui/maml/elements/ElementGroup;->onHover(Landroid/view/MotionEvent;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return v0

    :catch_0
    move-exception p1

    const-string v1, "ScreenElementRoot"

    .line 746
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method public onHoverChange(Lcom/miui/maml/elements/AnimatedScreenElement;Ljava/lang/String;)V
    .locals 0

    .line 1432
    iput-object p1, p0, Lcom/miui/maml/ScreenElementRoot;->mHoverElement:Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 1434
    iget-object p1, p0, Lcom/miui/maml/ScreenElementRoot;->mHoverChangeListenerRef:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    .line 1435
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/maml/ScreenElementRoot$OnHoverChangeListener;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 1438
    invoke-interface {p1, p2}, Lcom/miui/maml/ScreenElementRoot$OnHoverChangeListener;->onHoverChange(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected onLoad(Lorg/w3c/dom/Element;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v0, 0x0

    .line 691
    :try_start_0
    iget-boolean v1, p0, Lcom/miui/maml/ScreenElementRoot;->mFinished:Z

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/miui/maml/ScreenElementRoot;->mLoaded:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/miui/maml/ScreenElementRoot;->mTouchable:Z

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 694
    :cond_0
    iget-object v1, p0, Lcom/miui/maml/ScreenElementRoot;->mHoverElement:Lcom/miui/maml/elements/AnimatedScreenElement;

    if-eqz v1, :cond_3

    .line 695
    iget-object v1, p0, Lcom/miui/maml/ScreenElementRoot;->mHoverElement:Lcom/miui/maml/elements/AnimatedScreenElement;

    invoke-virtual {v1}, Lcom/miui/maml/elements/AnimatedScreenElement;->getWidth()F

    move-result v1

    .line 696
    iget-object v2, p0, Lcom/miui/maml/ScreenElementRoot;->mHoverElement:Lcom/miui/maml/elements/AnimatedScreenElement;

    invoke-virtual {v2}, Lcom/miui/maml/elements/AnimatedScreenElement;->getHeight()F

    move-result v2

    .line 697
    iget-object v3, p0, Lcom/miui/maml/ScreenElementRoot;->mHoverElement:Lcom/miui/maml/elements/AnimatedScreenElement;

    invoke-virtual {v3}, Lcom/miui/maml/elements/AnimatedScreenElement;->getAbsoluteLeft()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    add-float/2addr v3, v1

    .line 698
    iget-object v1, p0, Lcom/miui/maml/ScreenElementRoot;->mHoverElement:Lcom/miui/maml/elements/AnimatedScreenElement;

    invoke-virtual {v1}, Lcom/miui/maml/elements/AnimatedScreenElement;->getAbsoluteTop()F

    move-result v1

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    .line 699
    iget-object v2, p0, Lcom/miui/maml/ScreenElementRoot;->mHoverMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v1, v4

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 700
    iget-object v1, p0, Lcom/miui/maml/ScreenElementRoot;->mHoverMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    .line 701
    iget-object v1, p0, Lcom/miui/maml/ScreenElementRoot;->mHoverElement:Lcom/miui/maml/elements/AnimatedScreenElement;

    invoke-virtual {v1, p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->onTouch(Landroid/view/MotionEvent;)Z

    .line 702
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 703
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    :cond_1
    const/4 p1, 0x0

    .line 704
    iput-object p1, p0, Lcom/miui/maml/ScreenElementRoot;->mHoverElement:Lcom/miui/maml/elements/AnimatedScreenElement;

    :cond_2
    return v2

    .line 709
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {p0, v1, v2}, Lcom/miui/maml/ScreenElementRoot;->descale(D)D

    move-result-wide v1

    .line 710
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {p0, v3, v4}, Lcom/miui/maml/ScreenElementRoot;->descale(D)D

    move-result-wide v3

    .line 712
    iget-object v5, p0, Lcom/miui/maml/ScreenElementRoot;->mTouchX:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {v5, v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 713
    iget-object v5, p0, Lcom/miui/maml/ScreenElementRoot;->mTouchY:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {v5, v3, v4}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 714
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 725
    :pswitch_0
    iput-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mNeedDisallowInterceptTouchEvent:Z

    goto :goto_0

    .line 716
    :pswitch_1
    iget-object v5, p0, Lcom/miui/maml/ScreenElementRoot;->mTouchBeginX:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {v5, v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 717
    iget-object v1, p0, Lcom/miui/maml/ScreenElementRoot;->mTouchBeginY:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {v1, v3, v4}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 718
    iget-object v1, p0, Lcom/miui/maml/ScreenElementRoot;->mTouchBeginTime:Lcom/miui/maml/data/IndexedVariable;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 720
    iput-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mNeedDisallowInterceptTouchEvent:Z

    .line 729
    :goto_0
    :pswitch_2
    iget-object v1, p0, Lcom/miui/maml/ScreenElementRoot;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    invoke-virtual {v1, p1}, Lcom/miui/maml/elements/ElementGroup;->onTouch(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 732
    iget-object v1, p0, Lcom/miui/maml/ScreenElementRoot;->mController:Lcom/miui/maml/RendererController;

    invoke-virtual {v1}, Lcom/miui/maml/RendererController;->requestUpdate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return p1

    :cond_5
    :goto_1
    return v0

    :catch_0
    move-exception p1

    const-string v1, "ScreenElementRoot"

    .line 736
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onUIInteractive(Lcom/miui/maml/elements/ScreenElement;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public pause()V
    .locals 2

    .line 639
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mLoaded:Z

    if-nez v0, :cond_0

    return-void

    .line 642
    :cond_0
    invoke-super {p0}, Lcom/miui/maml/elements/ScreenElement;->pause()V

    const-string v0, "ScreenElementRoot"

    const-string v1, "pause"

    .line 643
    invoke-static {v0, v1}, Lcom/miui/maml/util/MamlLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    const-string v1, "pause"

    invoke-virtual {v0, v1}, Lcom/miui/maml/elements/ElementGroup;->performAction(Ljava/lang/String;)V

    .line 646
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    invoke-virtual {v0}, Lcom/miui/maml/elements/ElementGroup;->pause()V

    .line 647
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mSoundManager:Lcom/miui/maml/SoundManager;

    invoke-virtual {v0}, Lcom/miui/maml/SoundManager;->pause()V

    .line 648
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mVariableBinderManager:Lcom/miui/maml/data/VariableBinderManager;

    if-eqz v0, :cond_1

    .line 649
    invoke-virtual {v0}, Lcom/miui/maml/data/VariableBinderManager;->pause()V

    .line 651
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mExternalCommandManager:Lcom/miui/maml/CommandTriggers;

    if-eqz v0, :cond_2

    .line 652
    invoke-virtual {v0}, Lcom/miui/maml/CommandTriggers;->pause()V

    .line 654
    :cond_2
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lcom/miui/maml/data/VariableUpdaterManager;

    if-eqz v0, :cond_3

    .line 655
    invoke-virtual {v0}, Lcom/miui/maml/data/VariableUpdaterManager;->pause()V

    .line 656
    :cond_3
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    invoke-virtual {v0}, Lcom/miui/maml/ResourceManager;->pause()V

    const/4 v0, 0x0

    .line 657
    invoke-virtual {p0, v0, v0}, Lcom/miui/maml/ScreenElementRoot;->onHoverChange(Lcom/miui/maml/elements/AnimatedScreenElement;Ljava/lang/String;)V

    .line 658
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mConfig:Lcom/miui/maml/util/ConfigFile;

    if-eqz v0, :cond_4

    .line 659
    iget-object v1, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    iget-object v1, v1, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/maml/util/ConfigFile;->save(Landroid/content/Context;)Z

    :cond_4
    return-void
.end method

.method protected pauseAnim(J)V
    .locals 1

    .line 1604
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->pauseAnim(J)V

    .line 1605
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/elements/ElementGroup;->pauseAnim(J)V

    return-void
.end method

.method protected playAnim(JJJZZ)V
    .locals 10

    .line 1598
    invoke-super/range {p0 .. p8}, Lcom/miui/maml/elements/ScreenElement;->playAnim(JJJZZ)V

    move-object v0, p0

    .line 1599
    iget-object v1, v0, Lcom/miui/maml/ScreenElementRoot;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lcom/miui/maml/elements/ElementGroup;->playAnim(JJJZZ)V

    return-void
.end method

.method public playSound(Ljava/lang/String;)I
    .locals 3

    .line 1233
    new-instance v0, Lcom/miui/maml/SoundManager$SoundOptions;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2}, Lcom/miui/maml/SoundManager$SoundOptions;-><init>(ZZF)V

    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/ScreenElementRoot;->playSound(Ljava/lang/String;Lcom/miui/maml/SoundManager$SoundOptions;)I

    move-result p1

    return p1
.end method

.method public playSound(Ljava/lang/String;Lcom/miui/maml/SoundManager$SoundOptions;)I
    .locals 2

    .line 1238
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1241
    :cond_0
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->shouldPlaySound()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1242
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mSoundManager:Lcom/miui/maml/SoundManager;

    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/SoundManager;->playSound(Ljava/lang/String;Lcom/miui/maml/SoundManager$SoundOptions;)I

    move-result p1

    return p1

    :cond_1
    return v1
.end method

.method public playSound(ILcom/miui/maml/SoundManager$Command;)V
    .locals 1

    .line 1251
    :try_start_0
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mSoundManager:Lcom/miui/maml/SoundManager;

    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/SoundManager;->playSound(ILcom/miui/maml/SoundManager$Command;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "ScreenElementRoot"

    .line 1253
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public postDelayed(Ljava/lang/Runnable;J)Z
    .locals 1

    .line 460
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mFinished:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mLoaded:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 462
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/maml/ScreenContext;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public postMessage(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1511
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mLoaded:Z

    if-eqz v0, :cond_0

    .line 1512
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mController:Lcom/miui/maml/RendererController;

    invoke-virtual {v0, p1}, Lcom/miui/maml/RendererController;->postMessage(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method protected putRawAttr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 443
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mRawAttrs:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public removeAccessibleElement(Lcom/miui/maml/elements/AnimatedScreenElement;)V
    .locals 1

    .line 377
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mAccessibleElements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/high16 v0, -0x80000000

    .line 378
    invoke-virtual {p1, v0}, Lcom/miui/maml/elements/AnimatedScreenElement;->setVirtualViewId(I)V

    return-void
.end method

.method public removeAllAccessibleElements()V
    .locals 3

    .line 382
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mAccessibleElements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/maml/elements/AnimatedScreenElement;

    const/high16 v2, -0x80000000

    .line 383
    invoke-virtual {v1, v2}, Lcom/miui/maml/elements/AnimatedScreenElement;->setVirtualViewId(I)V

    goto :goto_0

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mAccessibleElements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public removeCallbacks(Ljava/lang/Runnable;)V
    .locals 1

    .line 466
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    invoke-virtual {v0, p1}, Lcom/miui/maml/ScreenContext;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeElement(Ljava/lang/String;)V
    .locals 1

    .line 1794
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mElements:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removePreTicker(Lcom/miui/maml/elements/ITicker;)V
    .locals 1

    .line 1374
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mPreTickers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public requestFrameRateByCommand(F)V
    .locals 1

    .line 1798
    iput p1, p0, Lcom/miui/maml/ScreenElementRoot;->mFrameRate:F

    .line 1799
    invoke-virtual {p0, p1}, Lcom/miui/maml/ScreenElementRoot;->requestFramerate(F)V

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    .line 1801
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->requestUpdate()V

    :cond_0
    return-void
.end method

.method public requestUpdate()V
    .locals 3

    .line 1553
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mLoaded:Z

    if-eqz v0, :cond_0

    .line 1554
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1556
    iget-object v2, p0, Lcom/miui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/RendererController;

    .line 1557
    invoke-virtual {v2}, Lcom/miui/maml/RendererController;->requestUpdate()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public reset(J)V
    .locals 1

    .line 1616
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->reset(J)V

    .line 1617
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/elements/ElementGroup;->reset(J)V

    return-void
.end method

.method public resume()V
    .locals 2

    .line 665
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mLoaded:Z

    if-nez v0, :cond_0

    return-void

    .line 668
    :cond_0
    invoke-super {p0}, Lcom/miui/maml/elements/ScreenElement;->resume()V

    const-string v0, "ScreenElementRoot"

    const-string v1, "resume"

    .line 669
    invoke-static {v0, v1}, Lcom/miui/maml/util/MamlLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    invoke-static {}, Lcom/miui/maml/util/HideSdkDependencyUtils;->isShowDebugLayout()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mShowDebugLayout:Z

    .line 672
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    const-string v1, "resume"

    invoke-virtual {v0, v1}, Lcom/miui/maml/elements/ElementGroup;->performAction(Ljava/lang/String;)V

    .line 673
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    invoke-virtual {v0}, Lcom/miui/maml/elements/ElementGroup;->resume()V

    .line 675
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mVariableBinderManager:Lcom/miui/maml/data/VariableBinderManager;

    if-eqz v0, :cond_1

    .line 676
    invoke-virtual {v0}, Lcom/miui/maml/data/VariableBinderManager;->resume()V

    .line 678
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mExternalCommandManager:Lcom/miui/maml/CommandTriggers;

    if-eqz v0, :cond_2

    .line 679
    invoke-virtual {v0}, Lcom/miui/maml/CommandTriggers;->resume()V

    .line 681
    :cond_2
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lcom/miui/maml/data/VariableUpdaterManager;

    if-eqz v0, :cond_3

    .line 682
    invoke-virtual {v0}, Lcom/miui/maml/data/VariableUpdaterManager;->resume()V

    .line 684
    :cond_3
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    invoke-virtual {v0}, Lcom/miui/maml/ResourceManager;->resume()V

    .line 685
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->setSyncInterval()V

    return-void
.end method

.method protected resumeAnim(J)V
    .locals 1

    .line 1610
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->resumeAnim(J)V

    .line 1611
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/elements/ElementGroup;->resumeAnim(J)V

    return-void
.end method

.method public saveVar(Ljava/lang/String;Ljava/lang/Double;)V
    .locals 3

    .line 1447
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mConfig:Lcom/miui/maml/util/ConfigFile;

    if-nez v0, :cond_0

    const-string p1, "ScreenElementRoot"

    const-string p2, "fail to saveVar, config file is null"

    .line 1448
    invoke-static {p1, p2}, Lcom/miui/maml/util/MamlLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    const-string p2, "null"

    .line 1453
    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/util/ConfigFile;->putNumber(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1455
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/miui/maml/util/ConfigFile;->putNumber(Ljava/lang/String;D)V

    :goto_0
    return-void
.end method

.method public saveVar(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1460
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mConfig:Lcom/miui/maml/util/ConfigFile;

    if-nez v0, :cond_0

    const-string p1, "ScreenElementRoot"

    const-string p2, "fail to saveVar, config file is null"

    .line 1461
    invoke-static {p1, p2}, Lcom/miui/maml/util/MamlLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1464
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/util/ConfigFile;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public selfFinish()V
    .locals 1

    .line 1477
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mLoaded:Z

    if-eqz v0, :cond_0

    .line 1478
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mController:Lcom/miui/maml/RendererController;

    invoke-virtual {v0}, Lcom/miui/maml/RendererController;->finish()V

    :cond_0
    return-void
.end method

.method public selfInit()V
    .locals 1

    .line 1471
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mLoaded:Z

    if-eqz v0, :cond_0

    .line 1472
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mController:Lcom/miui/maml/RendererController;

    invoke-virtual {v0}, Lcom/miui/maml/RendererController;->init()V

    :cond_0
    return-void
.end method

.method public selfPause()V
    .locals 3

    .line 1483
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1485
    iget-object v2, p0, Lcom/miui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/RendererController;

    invoke-virtual {v2}, Lcom/miui/maml/RendererController;->selfPause()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public selfResume()V
    .locals 3

    .line 1490
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1492
    iget-object v2, p0, Lcom/miui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/RendererController;

    invoke-virtual {v2}, Lcom/miui/maml/RendererController;->selfResume()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setAutoDarkenWallpaper(Z)V
    .locals 0

    .line 1828
    iput-boolean p1, p0, Lcom/miui/maml/ScreenElementRoot;->mAutoDarkenWallpaper:Z

    return-void
.end method

.method public setBgColor(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setCacheDir(Ljava/lang/String;)V
    .locals 0

    .line 337
    iput-object p1, p0, Lcom/miui/maml/ScreenElementRoot;->mCacheDir:Ljava/lang/String;

    return-void
.end method

.method public setCapability(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1691
    iget p2, p0, Lcom/miui/maml/ScreenElementRoot;->mCapability:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/miui/maml/ScreenElementRoot;->mCapability:I

    goto :goto_0

    .line 1693
    :cond_0
    iget p2, p0, Lcom/miui/maml/ScreenElementRoot;->mCapability:I

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, Lcom/miui/maml/ScreenElementRoot;->mCapability:I

    :goto_0
    return-void
.end method

.method public setClearCanvas(Z)V
    .locals 0

    .line 1714
    iput-boolean p1, p0, Lcom/miui/maml/ScreenElementRoot;->mClearCanvas:Z

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 1749
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    if-eqz v0, :cond_0

    .line 1750
    invoke-virtual {v0, p1}, Lcom/miui/maml/elements/ElementGroup;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    return-void
.end method

.method public setConfig(Ljava/lang/String;)V
    .locals 0

    .line 321
    iput-object p1, p0, Lcom/miui/maml/ScreenElementRoot;->mConfigPath:Ljava/lang/String;

    return-void
.end method

.method public setConfiguration(Landroid/content/res/Configuration;)V
    .locals 5

    .line 1668
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mAllowScreenRotation:Z

    if-eqz v0, :cond_0

    .line 1669
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    const-string v1, "orientation"

    .line 1670
    iget-object v2, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    iget-object v2, v2, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    int-to-double v3, v3

    .line 1671
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 1670
    invoke-static {v1, v2, v3}, Lcom/miui/maml/util/Utils;->putVariableNumber(Ljava/lang/String;Lcom/miui/maml/data/Variables;Ljava/lang/Double;)V

    .line 1672
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p1, "raw_screen_width"

    .line 1674
    iget v1, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetScreenHeight:I

    int-to-double v1, v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    const-string p1, "raw_screen_height"

    .line 1675
    iget v1, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    int-to-double v1, v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    const-string p1, "screen_width"

    .line 1676
    iget v1, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetScreenHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/maml/ScreenElementRoot;->mScale:F

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    const-string p1, "screen_height"

    .line 1677
    iget v1, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/maml/ScreenElementRoot;->mScale:F

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    goto :goto_0

    :pswitch_1
    const-string p1, "raw_screen_width"

    .line 1680
    iget v1, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    int-to-double v1, v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    const-string p1, "raw_screen_height"

    .line 1681
    iget v1, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetScreenHeight:I

    int-to-double v1, v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    const-string p1, "screen_width"

    .line 1682
    iget v1, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/maml/ScreenElementRoot;->mScale:F

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    const-string p1, "screen_height"

    .line 1683
    iget v1, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetScreenHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/maml/ScreenElementRoot;->mScale:F

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setDarkWallpaperMode(Z)V
    .locals 0

    .line 1755
    iput-boolean p1, p0, Lcom/miui/maml/ScreenElementRoot;->mDarkWallpaperMode:Z

    return-void
.end method

.method public setDefaultFramerate(F)V
    .locals 0

    .line 451
    iput p1, p0, Lcom/miui/maml/ScreenElementRoot;->DEFAULT_FRAME_RATE:F

    return-void
.end method

.method public final setKeepResource(Z)V
    .locals 0

    .line 1296
    iput-boolean p1, p0, Lcom/miui/maml/ScreenElementRoot;->mKeepResource:Z

    return-void
.end method

.method public setMamlAccessHelper(Lcom/miui/maml/util/MamlAccessHelper;)V
    .locals 0

    .line 1759
    iput-object p1, p0, Lcom/miui/maml/ScreenElementRoot;->mMamlAccessHelper:Lcom/miui/maml/util/MamlAccessHelper;

    return-void
.end method

.method public setMamlSurface(Lcom/miui/maml/component/MamlSurface;)V
    .locals 1

    .line 1832
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mMamlSurfaceRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setMamlSurfaceOnExternCommandListener(Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1393
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/miui/maml/ScreenElementRoot;->mMamlSurfaceExternCommandListener:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setMamlViewOnExternCommandListener(Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1388
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/miui/maml/ScreenElementRoot;->mMamlViewExternCommandListener:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setOnExternCommandListener(Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1383
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/miui/maml/ScreenElementRoot;->mExternCommandListener:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setOnHoverChangeListener(Lcom/miui/maml/ScreenElementRoot$OnHoverChangeListener;)V
    .locals 1

    .line 1428
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mHoverChangeListenerRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setRenderControllerListener(Lcom/miui/maml/RendererController$Listener;)V
    .locals 1

    .line 1498
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mLoaded:Z

    if-eqz v0, :cond_0

    .line 1499
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mController:Lcom/miui/maml/RendererController;

    invoke-virtual {v0, p1}, Lcom/miui/maml/RendererController;->setListener(Lcom/miui/maml/RendererController$Listener;)V

    :cond_0
    return-void
.end method

.method public setRenderControllerRenderable(Lcom/miui/maml/RendererController$IRenderable;)V
    .locals 1

    .line 1505
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mLoaded:Z

    if-eqz v0, :cond_0

    .line 1506
    new-instance v0, Lcom/miui/maml/SingleRootListener;

    invoke-direct {v0, p0, p1}, Lcom/miui/maml/SingleRootListener;-><init>(Lcom/miui/maml/ScreenElementRoot;Lcom/miui/maml/RendererController$IRenderable;)V

    invoke-virtual {p0, v0}, Lcom/miui/maml/ScreenElementRoot;->setRenderControllerListener(Lcom/miui/maml/RendererController$Listener;)V

    :cond_0
    return-void
.end method

.method public setResizeRadio(F)V
    .locals 0

    .line 1844
    iput p1, p0, Lcom/miui/maml/ScreenElementRoot;->mResizeScale:F

    return-void
.end method

.method public setSaveConfigOnlyInPause(Z)V
    .locals 0

    .line 332
    iput-boolean p1, p0, Lcom/miui/maml/ScreenElementRoot;->mSaveConfigOnlyInPause:Z

    return-void
.end method

.method public setSaveConfigViaProvider(Z)V
    .locals 1

    .line 325
    iput-boolean p1, p0, Lcom/miui/maml/ScreenElementRoot;->mSaveConfigViaProvider:Z

    .line 326
    iget-object p1, p0, Lcom/miui/maml/ScreenElementRoot;->mConfig:Lcom/miui/maml/util/ConfigFile;

    if-eqz p1, :cond_0

    .line 327
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mSaveConfigViaProvider:Z

    invoke-virtual {p1, v0}, Lcom/miui/maml/util/ConfigFile;->setSaveViaProvider(Z)V

    :cond_0
    return-void
.end method

.method public setScaleByDensity(Z)V
    .locals 0

    .line 876
    iput-boolean p1, p0, Lcom/miui/maml/ScreenElementRoot;->mScaleByDensity:Z

    return-void
.end method

.method public setSyncInterval()V
    .locals 2

    .line 1807
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->getSystemFrameRate()F

    move-result v0

    float-to-int v0, v0

    if-eqz v0, :cond_0

    const/16 v1, 0x3e8

    .line 1809
    div-int/2addr v1, v0

    goto :goto_0

    :cond_0
    const/16 v1, 0x10

    :goto_0
    const/4 v0, 0x1

    if-ge v1, v0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 1814
    :goto_1
    invoke-static {}, Lcom/miui/maml/RenderVsyncUpdater;->getInstance()Lcom/miui/maml/RenderVsyncUpdater;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/maml/RenderVsyncUpdater;->setSyncInterval(I)V

    return-void
.end method

.method public setTouchable(Z)V
    .locals 0

    .line 1824
    iput-boolean p1, p0, Lcom/miui/maml/ScreenElementRoot;->mTouchable:Z

    return-void
.end method

.method public setViewManager(Lcom/miui/maml/util/MamlViewManager;)V
    .locals 1

    .line 1718
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mViewManagerRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setWidgetType(Ljava/lang/String;)V
    .locals 0

    .line 1848
    iput-object p1, p0, Lcom/miui/maml/ScreenElementRoot;->mWidgetType:Ljava/lang/String;

    return-void
.end method

.method protected shouldPlaySound()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public showCategory(Ljava/lang/String;Z)V
    .locals 1

    .line 1622
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/elements/ElementGroup;->showCategory(Ljava/lang/String;Z)V

    return-void
.end method

.method public showFramerate(Z)V
    .locals 0

    .line 512
    iput-boolean p1, p0, Lcom/miui/maml/ScreenElementRoot;->mShowFramerate:Z

    return-void
.end method

.method public tick(J)V
    .locals 2

    .line 346
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mNeedReset:Z

    if-eqz v0, :cond_0

    .line 347
    new-instance v0, Lcom/miui/maml/ScreenElementRoot$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/maml/ScreenElementRoot$1;-><init>(Lcom/miui/maml/ScreenElementRoot;J)V

    invoke-virtual {p0, v0}, Lcom/miui/maml/ScreenElementRoot;->postRunnableAtFrontOfQueue(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 361
    iput-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mNeedReset:Z

    .line 362
    iget-object v1, p0, Lcom/miui/maml/ScreenElementRoot;->mController:Lcom/miui/maml/RendererController;

    invoke-virtual {v1, v0}, Lcom/miui/maml/RendererController;->setNeedReset(Z)V

    .line 364
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/ScreenElementRoot;->doTick(J)V

    return-void
.end method

.method public update(J)J
    .locals 7

    .line 1538
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-wide v1, 0x7fffffffffffffffL

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    .line 1540
    iget-object v4, p0, Lcom/miui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/maml/RendererController;

    .line 1541
    invoke-virtual {v4}, Lcom/miui/maml/RendererController;->isSelfPaused()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/miui/maml/RendererController;->hasRunnable()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 1544
    :cond_0
    invoke-virtual {v4, p1, p2}, Lcom/miui/maml/RendererController;->update(J)J

    move-result-wide v4

    cmp-long v6, v4, v1

    if-gez v6, :cond_1

    move-wide v1, v4

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-wide v1
.end method

.method public updateIfNeeded(J)J
    .locals 7

    .line 1519
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-wide v1, 0x7fffffffffffffffL

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    .line 1521
    iget-object v4, p0, Lcom/miui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/maml/RendererController;

    .line 1522
    invoke-virtual {v4}, Lcom/miui/maml/RendererController;->isSelfPaused()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/miui/maml/RendererController;->hasRunnable()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 1525
    :cond_0
    invoke-virtual {v4, p1, p2}, Lcom/miui/maml/RendererController;->updateIfNeeded(J)J

    move-result-wide v4

    cmp-long v6, v4, v1

    if-gez v6, :cond_1

    move-wide v1, v4

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-wide v1
.end method

.method public final version()I
    .locals 1

    .line 1729
    iget v0, p0, Lcom/miui/maml/ScreenElementRoot;->mVersion:I

    return v0
.end method
