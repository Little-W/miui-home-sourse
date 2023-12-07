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

.field private static final MAML_INTERNAL_VERSION:I = 0x7

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

.field private mCornerCutType:Ljava/lang/String;

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

    .line 300
    invoke-direct {p0, v0, v0}, Lcom/miui/maml/elements/ScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    const/high16 v0, 0x41f00000    # 30.0f

    .line 118
    iput v0, p0, Lcom/miui/maml/ScreenElementRoot;->DEFAULT_FRAME_RATE:F

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mPreTickers:Ljava/util/ArrayList;

    .line 159
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mRawAttrs:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 171
    iput-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mSupportAccessibilityService:Z

    .line 172
    iput-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mBlurWindow:Z

    const/4 v1, 0x1

    .line 173
    iput-boolean v1, p0, Lcom/miui/maml/ScreenElementRoot;->mTouchable:Z

    .line 183
    iput-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mDisableCutRoundCorner:Z

    .line 198
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mHoverMatrix:Landroid/graphics/Matrix;

    .line 200
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mAnimationItems:Landroid/util/ArrayMap;

    .line 201
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mElements:Landroid/util/ArrayMap;

    .line 248
    new-instance v0, Lcom/miui/maml/ScreenElementRoot$FramerateHelper;

    invoke-direct {v0}, Lcom/miui/maml/ScreenElementRoot$FramerateHelper;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mFramerateHelper:Lcom/miui/maml/ScreenElementRoot$FramerateHelper;

    .line 268
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 281
    iput v0, p0, Lcom/miui/maml/ScreenElementRoot;->mCapability:I

    .line 293
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mAccessibleElements:Ljava/util/List;

    .line 297
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mRenderMutex:Ljava/lang/Object;

    .line 302
    iput-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 303
    iput-object p1, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    .line 304
    new-instance p1, Lcom/miui/maml/data/VariableUpdaterManager;

    invoke-direct {p1, p0}, Lcom/miui/maml/data/VariableUpdaterManager;-><init>(Lcom/miui/maml/ScreenElementRoot;)V

    iput-object p1, p0, Lcom/miui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lcom/miui/maml/data/VariableUpdaterManager;

    .line 305
    new-instance p1, Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    const-string v2, "touch_x"

    invoke-direct {p1, v2, v0, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object p1, p0, Lcom/miui/maml/ScreenElementRoot;->mTouchX:Lcom/miui/maml/data/IndexedVariable;

    .line 306
    new-instance p1, Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    const-string v2, "touch_y"

    invoke-direct {p1, v2, v0, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object p1, p0, Lcom/miui/maml/ScreenElementRoot;->mTouchY:Lcom/miui/maml/data/IndexedVariable;

    .line 307
    new-instance p1, Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    const-string v2, "touch_begin_x"

    invoke-direct {p1, v2, v0, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object p1, p0, Lcom/miui/maml/ScreenElementRoot;->mTouchBeginX:Lcom/miui/maml/data/IndexedVariable;

    .line 308
    new-instance p1, Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    const-string v2, "touch_begin_y"

    invoke-direct {p1, v2, v0, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object p1, p0, Lcom/miui/maml/ScreenElementRoot;->mTouchBeginY:Lcom/miui/maml/data/IndexedVariable;

    .line 309
    new-instance p1, Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    const-string v2, "touch_begin_time"

    invoke-direct {p1, v2, v0, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object p1, p0, Lcom/miui/maml/ScreenElementRoot;->mTouchBeginTime:Lcom/miui/maml/data/IndexedVariable;

    .line 310
    new-instance p1, Lcom/miui/maml/data/IndexedVariable;

    .line 311
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    const-string v2, "intercept_sys_touch"

    invoke-direct {p1, v2, v0, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object p1, p0, Lcom/miui/maml/ScreenElementRoot;->mNeedDisallowInterceptTouchEventVar:Lcom/miui/maml/data/IndexedVariable;

    .line 312
    new-instance p1, Lcom/miui/maml/SoundManager;

    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    invoke-direct {p1, v0}, Lcom/miui/maml/SoundManager;-><init>(Lcom/miui/maml/ScreenContext;)V

    iput-object p1, p0, Lcom/miui/maml/ScreenElementRoot;->mSoundManager:Lcom/miui/maml/SoundManager;

    .line 313
    new-instance p1, Lcom/miui/maml/SystemCommandListener;

    invoke-direct {p1, p0}, Lcom/miui/maml/SystemCommandListener;-><init>(Lcom/miui/maml/ScreenElementRoot;)V

    iput-object p1, p0, Lcom/miui/maml/ScreenElementRoot;->mSystemExternCommandListener:Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;

    .line 314
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

    .line 70
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mExternalCommandManager:Lcom/miui/maml/CommandTriggers;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/maml/ScreenElementRoot;)Ljava/util/ArrayList;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    return-object p0
.end method

.method private loadConfig(Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 620
    :cond_0
    new-instance v0, Lcom/miui/maml/util/ConfigFile;

    invoke-direct {v0}, Lcom/miui/maml/util/ConfigFile;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mConfig:Lcom/miui/maml/util/ConfigFile;

    .line 621
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mConfig:Lcom/miui/maml/util/ConfigFile;

    iget-boolean v1, p0, Lcom/miui/maml/ScreenElementRoot;->mSaveConfigViaProvider:Z

    invoke-virtual {v0, v1}, Lcom/miui/maml/util/ConfigFile;->setSaveViaProvider(Z)V

    .line 622
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mConfig:Lcom/miui/maml/util/ConfigFile;

    invoke-virtual {v0, p1}, Lcom/miui/maml/util/ConfigFile;->load(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 624
    iget-object p1, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    iget-object p1, p1, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    invoke-virtual {p1}, Lcom/miui/maml/ResourceManager;->getConfigRoot()Lorg/w3c/dom/Element;

    move-result-object p1

    .line 625
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mConfig:Lcom/miui/maml/util/ConfigFile;

    invoke-virtual {v0, p1}, Lcom/miui/maml/util/ConfigFile;->loadDefaultSettings(Lorg/w3c/dom/Element;)V

    .line 627
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

    .line 628
    iget-object v1, v0, Lcom/miui/maml/util/ConfigFile$Variable;->type:Ljava/lang/String;

    const-string v2, "string"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 629
    iget-object v1, v0, Lcom/miui/maml/util/ConfigFile$Variable;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    iget-object v2, v2, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    iget-object v0, v0, Lcom/miui/maml/util/ConfigFile$Variable;->value:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/miui/maml/util/Utils;->putVariableString(Ljava/lang/String;Lcom/miui/maml/data/Variables;Ljava/lang/String;)V

    goto :goto_0

    .line 630
    :cond_3
    iget-object v1, v0, Lcom/miui/maml/util/ConfigFile$Variable;->type:Ljava/lang/String;

    const-string v2, "number"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 632
    :try_start_0
    iget-object v1, v0, Lcom/miui/maml/util/ConfigFile$Variable;->value:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    .line 633
    iget-object v0, v0, Lcom/miui/maml/util/ConfigFile$Variable;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    iget-object v3, v3, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    invoke-static {v0, v3, v1, v2}, Lcom/miui/maml/util/Utils;->putVariableNumber(Ljava/lang/String;Lcom/miui/maml/data/Variables;D)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 638
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

    .line 639
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

    .line 640
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

    .line 641
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

    .line 1223
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p1

    const/4 v0, 0x0

    .line 1224
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1225
    invoke-interface {p1, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 1226
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

    .line 1233
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1234
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1235
    iget-object p1, p0, Lcom/miui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lcom/miui/maml/data/VariableUpdaterManager;

    invoke-virtual {p0, p1}, Lcom/miui/maml/ScreenElementRoot;->onAddVariableUpdater(Lcom/miui/maml/data/VariableUpdaterManager;)V

    goto :goto_0

    .line 1237
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lcom/miui/maml/data/VariableUpdaterManager;

    invoke-virtual {v0, p1}, Lcom/miui/maml/data/VariableUpdaterManager;->addFromTag(Ljava/lang/String;)V

    .line 1240
    :goto_0
    new-instance p1, Lcom/miui/maml/data/DarkModeVariableUpdater;

    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lcom/miui/maml/data/VariableUpdaterManager;

    invoke-direct {p1, v0}, Lcom/miui/maml/data/DarkModeVariableUpdater;-><init>(Lcom/miui/maml/data/VariableUpdaterManager;)V

    .line 1241
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lcom/miui/maml/data/VariableUpdaterManager;

    invoke-virtual {v0, p1}, Lcom/miui/maml/data/VariableUpdaterManager;->add(Lcom/miui/maml/data/VariableUpdater;)V

    .line 1244
    new-instance p1, Lcom/miui/maml/data/ConfigChangeVariableUpdater;

    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lcom/miui/maml/data/VariableUpdaterManager;

    invoke-direct {p1, v0}, Lcom/miui/maml/data/ConfigChangeVariableUpdater;-><init>(Lcom/miui/maml/data/VariableUpdaterManager;)V

    .line 1245
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lcom/miui/maml/data/VariableUpdaterManager;

    invoke-virtual {p0, p1}, Lcom/miui/maml/data/VariableUpdaterManager;->add(Lcom/miui/maml/data/VariableUpdater;)V

    return-void
.end method

.method private setupScale(Lorg/w3c/dom/Element;)V
    .locals 8

    const-string v0, "scaleByDensity"

    .line 1136
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1137
    iget-object v1, p0, Lcom/miui/maml/ScreenElementRoot;->mRootTag:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/miui/maml/compat/AwesomeClockCompat;->isAwesomeClock(Lorg/w3c/dom/Element;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1139
    invoke-static {p1, p0}, Lcom/miui/maml/compat/AwesomeClockCompat;->compatClock(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    goto :goto_0

    .line 1140
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1141
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mScaleByDensity:Z

    :cond_1
    :goto_0
    const/4 v0, 0x0

    const-string v1, "defaultScreenWidth"

    .line 1144
    invoke-static {p1, v1, v0}, Lcom/miui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/miui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    .line 1145
    iget v1, p0, Lcom/miui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    if-nez v1, :cond_2

    const-string v1, "screenWidth"

    .line 1146
    invoke-static {p1, v1, v0}, Lcom/miui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/miui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    :cond_2
    const-string v1, "defaultResourceDensity"

    .line 1148
    invoke-static {p1, v1, v0}, Lcom/miui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/miui/maml/ScreenElementRoot;->mRawDefaultResourceDensity:I

    .line 1149
    iget v1, p0, Lcom/miui/maml/ScreenElementRoot;->mRawDefaultResourceDensity:I

    if-nez v1, :cond_3

    const-string v1, "resDensity"

    .line 1150
    invoke-static {p1, v1, v0}, Lcom/miui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/miui/maml/ScreenElementRoot;->mRawDefaultResourceDensity:I

    .line 1152
    :cond_3
    iget v1, p0, Lcom/miui/maml/ScreenElementRoot;->mRawDefaultResourceDensity:I

    invoke-static {v1}, Lcom/miui/maml/ResourceManager;->translateDensity(I)I

    move-result v1

    iput v1, p0, Lcom/miui/maml/ScreenElementRoot;->mDefaultResourceDensity:I

    .line 1153
    iget v1, p0, Lcom/miui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    const/16 v2, 0x1e0

    const/16 v3, 0xf0

    if-nez v1, :cond_4

    iget v1, p0, Lcom/miui/maml/ScreenElementRoot;->mDefaultResourceDensity:I

    if-nez v1, :cond_4

    .line 1154
    iput v2, p0, Lcom/miui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    .line 1155
    iput v3, p0, Lcom/miui/maml/ScreenElementRoot;->mDefaultResourceDensity:I

    goto :goto_1

    .line 1156
    :cond_4
    iget v1, p0, Lcom/miui/maml/ScreenElementRoot;->mDefaultResourceDensity:I

    if-nez v1, :cond_5

    .line 1158
    iget v1, p0, Lcom/miui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    mul-int/2addr v1, v3

    div-int/2addr v1, v2

    iput v1, p0, Lcom/miui/maml/ScreenElementRoot;->mDefaultResourceDensity:I

    goto :goto_1

    .line 1159
    :cond_5
    iget v4, p0, Lcom/miui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    if-nez v4, :cond_6

    mul-int/2addr v1, v2

    .line 1160
    div-int/2addr v1, v3

    iput v1, p0, Lcom/miui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    .line 1163
    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    iget-object v1, v1, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    iget v4, p0, Lcom/miui/maml/ScreenElementRoot;->mDefaultResourceDensity:I

    invoke-virtual {v1, v4}, Lcom/miui/maml/ResourceManager;->setDefaultResourceDensity(I)V

    .line 1165
    iget-object v1, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    iget-object v1, v1, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 1166
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    .line 1167
    iget v5, p0, Lcom/miui/maml/ScreenElementRoot;->mResizeScale:F

    iget-object v6, p0, Lcom/miui/maml/ScreenElementRoot;->mWidgetType:Ljava/lang/String;

    invoke-static {v1, v5, v6}, Lcom/miui/maml/util/DeviceUtils;->getTargetScreenWH(Landroid/view/WindowManager;FLjava/lang/String;)[I

    move-result-object v1

    .line 1168
    aget v5, v1, v0

    const/4 v6, 0x1

    aget v7, v1, v6

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    .line 1169
    aget v5, v1, v0

    aget v1, v1, v6

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetScreenHeight:I

    .line 1171
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1172
    invoke-virtual {v4, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1173
    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v1, p0, Lcom/miui/maml/ScreenElementRoot;->mRawTargetDensity:I

    .line 1175
    iget-object v1, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    iget-object v1, v1, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 1176
    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    .line 1179
    iget v4, p0, Lcom/miui/maml/ScreenElementRoot;->mRawDefaultResourceDensity:I

    if-nez v4, :cond_7

    .line 1181
    iget v4, p0, Lcom/miui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    mul-int/2addr v4, v3

    div-int/2addr v4, v2

    .line 1183
    :cond_7
    new-instance v2, Lcom/miui/maml/ScreenElementRoot$ExtraResource;

    invoke-direct {v2, p1, v4}, Lcom/miui/maml/ScreenElementRoot$ExtraResource;-><init>(Lorg/w3c/dom/Element;I)V

    .line 1184
    iget v3, p0, Lcom/miui/maml/ScreenElementRoot;->mRawTargetDensity:I

    iget v4, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    invoke-virtual {v2, v3, v4, v1}, Lcom/miui/maml/ScreenElementRoot$ExtraResource;->findResource(III)Lcom/miui/maml/ScreenElementRoot$ExtraResource$Resource;

    move-result-object v3

    .line 1185
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "findResource: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/miui/maml/ScreenElementRoot$ExtraResource$Resource;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ScreenElementRoot"

    invoke-static {v5, v4}, Lcom/miui/maml/util/MamlLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1186
    iget v4, v3, Lcom/miui/maml/ScreenElementRoot$ExtraResource$Resource;->mDensity:I

    invoke-static {v4}, Lcom/miui/maml/ResourceManager;->translateDensity(I)I

    move-result v4

    int-to-float v4, v4

    iget v6, v3, Lcom/miui/maml/ScreenElementRoot$ExtraResource$Resource;->scale:F

    div-float/2addr v4, v6

    float-to-int v4, v4

    .line 1187
    iget-object v6, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    iget-object v6, v6, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    iget-object v3, v3, Lcom/miui/maml/ScreenElementRoot$ExtraResource$Resource;->mPath:Ljava/lang/String;

    invoke-virtual {v6, v3, v4}, Lcom/miui/maml/ResourceManager;->setExtraResource(Ljava/lang/String;I)V

    .line 1190
    iget v3, p0, Lcom/miui/maml/ScreenElementRoot;->mRawTargetDensity:I

    iget v4, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    invoke-virtual {v2, v3, v4, v1}, Lcom/miui/maml/ScreenElementRoot$ExtraResource;->findScale(III)Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;

    move-result-object v1

    .line 1191
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "findScale: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/miui/maml/util/MamlLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1195
    iget-boolean v2, p0, Lcom/miui/maml/ScreenElementRoot;->mScaleByDensity:Z

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-eqz v2, :cond_9

    .line 1196
    iget v2, p0, Lcom/miui/maml/ScreenElementRoot;->mRawTargetDensity:I

    invoke-static {v2}, Lcom/miui/maml/ResourceManager;->translateDensity(I)I

    move-result v2

    iput v2, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetDensity:I

    .line 1198
    iget v2, v1, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->scale:F

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_8

    .line 1199
    iget v1, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetDensity:I

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/maml/ScreenElementRoot;->mDefaultResourceDensity:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/miui/maml/ScreenElementRoot;->mScale:F

    goto :goto_2

    .line 1201
    :cond_8
    iget v2, p0, Lcom/miui/maml/ScreenElementRoot;->mRawTargetDensity:I

    int-to-float v2, v2

    mul-float/2addr v2, v3

    iget v3, v1, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mDensity:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 1202
    iget v1, v1, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->scale:F

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/miui/maml/ScreenElementRoot;->mScale:F

    goto :goto_2

    .line 1205
    :cond_9
    iget v2, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    int-to-float v2, v2

    iget v6, p0, Lcom/miui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    int-to-float v6, v6

    div-float/2addr v2, v6

    iput v2, p0, Lcom/miui/maml/ScreenElementRoot;->mScale:F

    .line 1206
    iget v2, p0, Lcom/miui/maml/ScreenElementRoot;->mDefaultResourceDensity:I

    int-to-float v2, v2

    iget v6, p0, Lcom/miui/maml/ScreenElementRoot;->mScale:F

    mul-float/2addr v2, v6

    float-to-int v2, v2

    iput v2, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetDensity:I

    .line 1208
    iget v2, v1, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->scale:F

    cmpl-float v2, v2, v4

    if-lez v2, :cond_a

    .line 1209
    iget v2, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v3

    iget v3, v1, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScreenWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 1210
    iget v1, v1, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->scale:F

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/miui/maml/ScreenElementRoot;->mScale:F

    .line 1213
    :cond_a
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set scale: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/maml/ScreenElementRoot;->mScale:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/miui/maml/util/MamlLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1214
    iget-object v1, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    iget-object v1, v1, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    iget v2, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetDensity:I

    invoke-virtual {v1, v2}, Lcom/miui/maml/ResourceManager;->setTargetDensity(I)V

    const-string v1, "width"

    .line 1216
    invoke-static {p1, v1, v0}, Lcom/miui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/miui/maml/ScreenElementRoot;->mRawWidth:I

    const-string v1, "height"

    .line 1217
    invoke-static {p1, v1, v0}, Lcom/miui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/miui/maml/ScreenElementRoot;->mRawHeight:I

    .line 1218
    iget p1, p0, Lcom/miui/maml/ScreenElementRoot;->mRawWidth:I

    int-to-float p1, p1

    iget v0, p0, Lcom/miui/maml/ScreenElementRoot;->mScale:F

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/miui/maml/ScreenElementRoot;->mWidth:F

    .line 1219
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

    .line 862
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 863
    new-instance v0, Lcom/miui/maml/ScreenElementRoot$2;

    invoke-direct {v0, p0}, Lcom/miui/maml/ScreenElementRoot$2;-><init>(Lcom/miui/maml/ScreenElementRoot;)V

    invoke-virtual {p0, v0}, Lcom/miui/maml/ScreenElementRoot;->acceptVisitor(Lcom/miui/maml/elements/ScreenElementVisitor;)V

    return-void
.end method


# virtual methods
.method public acceptVisitor(Lcom/miui/maml/elements/ScreenElementVisitor;)V
    .locals 0

    .line 1647
    invoke-super {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->acceptVisitor(Lcom/miui/maml/elements/ScreenElementVisitor;)V

    .line 1648
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ElementGroup;->acceptVisitor(Lcom/miui/maml/elements/ScreenElementVisitor;)V

    return-void
.end method

.method public addAccessibleElements(Lcom/miui/maml/elements/AnimatedScreenElement;)V
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mAccessibleElements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/maml/elements/AnimatedScreenElement;->setVirtualViewId(I)V

    .line 374
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mAccessibleElements:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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

    .line 394
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mAccessibleElements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 395
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 396
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

    .line 1787
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mAnimationItems:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1788
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mAnimationItems:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    .line 1789
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1791
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1792
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1793
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mAnimationItems:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public addElement(Ljava/lang/String;Ljava/lang/ref/WeakReference;)V
    .locals 0

    .line 1810
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mElements:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addPreTicker(Lcom/miui/maml/elements/ITicker;)V
    .locals 0

    .line 1390
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mPreTickers:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public allowScreenRotation()Z
    .locals 0

    .line 1684
    iget-boolean p0, p0, Lcom/miui/maml/ScreenElementRoot;->mAllowScreenRotation:Z

    return p0
.end method

.method public attachToVsync()V
    .locals 4

    .line 1593
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mController:Lcom/miui/maml/RendererController;

    if-eqz v0, :cond_1

    .line 1596
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1598
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

    .line 1594
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "VsyncUpdater or controller is null, MUST load before attaching"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public createFramerateToken(Ljava/lang/String;)Lcom/miui/maml/FramerateTokenList$FramerateToken;
    .locals 0

    .line 318
    invoke-virtual {p0, p1}, Lcom/miui/maml/ScreenElementRoot;->createToken(Ljava/lang/String;)Lcom/miui/maml/FramerateTokenList$FramerateToken;

    move-result-object p0

    return-object p0
.end method

.method public detachFromVsync()V
    .locals 4

    .line 1603
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mController:Lcom/miui/maml/RendererController;

    if-eqz v0, :cond_1

    .line 1606
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1608
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

    .line 1604
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "VsyncUpdater or controller is null, MUST load before detaching"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected doRender(Landroid/graphics/Canvas;)V
    .locals 3

    .line 488
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mFinished:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mLoaded:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 493
    :cond_0
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mClearCanvas:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 494
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 499
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

    .line 503
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ScreenElementRoot"

    invoke-static {v2, v1, v0}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 501
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 506
    :goto_0
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mShowFramerate:Z

    if-eqz v0, :cond_2

    .line 507
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mFramerateHelper:Lcom/miui/maml/ScreenElementRoot$FramerateHelper;

    invoke-virtual {v0, p1}, Lcom/miui/maml/ScreenElementRoot$FramerateHelper;->draw(Landroid/graphics/Canvas;)V

    .line 510
    :cond_2
    iget v0, p0, Lcom/miui/maml/ScreenElementRoot;->mFrames:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/maml/ScreenElementRoot;->mFrames:I

    .line 511
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mController:Lcom/miui/maml/RendererController;

    invoke-virtual {v0}, Lcom/miui/maml/RendererController;->doneRender()V

    .line 513
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mDarkWallpaperMode:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mUseCustomizedDarkModeWallpaper:Z

    if-nez v0, :cond_3

    iget-boolean p0, p0, Lcom/miui/maml/ScreenElementRoot;->mAutoDarkenWallpaper:Z

    if-eqz p0, :cond_3

    const/high16 p0, 0x19000000

    .line 514
    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method protected doTick(J)V
    .locals 7

    .line 406
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mFinished:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mLoaded:Z

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mVariableBinderManager:Lcom/miui/maml/data/VariableBinderManager;

    if-eqz v0, :cond_1

    .line 410
    invoke-virtual {v0}, Lcom/miui/maml/data/VariableBinderManager;->tick()V

    .line 412
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lcom/miui/maml/data/VariableUpdaterManager;

    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/data/VariableUpdaterManager;->tick(J)V

    .line 415
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mPreTickers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 417
    iget-object v3, p0, Lcom/miui/maml/ScreenElementRoot;->mPreTickers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/maml/elements/ITicker;

    invoke-interface {v3, p1, p2}, Lcom/miui/maml/elements/ITicker;->tick(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 420
    :cond_2
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/elements/ElementGroup;->tick(J)V

    .line 423
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

    .line 424
    :goto_1
    iput-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mNeedDisallowInterceptTouchEvent:Z

    .line 427
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mFrameRateVar:Lcom/miui/maml/data/IndexedVariable;

    const-wide/16 v3, 0x0

    if-nez v0, :cond_4

    .line 428
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    iget-object v5, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    iget-object v5, v5, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    const-string v6, "frame_rate"

    invoke-direct {v0, v6, v5, v2}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mFrameRateVar:Lcom/miui/maml/data/IndexedVariable;

    .line 429
    iput-wide v3, p0, Lcom/miui/maml/ScreenElementRoot;->mCheckPoint:J

    .line 432
    :cond_4
    iget-wide v5, p0, Lcom/miui/maml/ScreenElementRoot;->mCheckPoint:J

    cmp-long v0, v5, v3

    if-nez v0, :cond_5

    .line 433
    iput-wide p1, p0, Lcom/miui/maml/ScreenElementRoot;->mCheckPoint:J

    goto :goto_2

    :cond_5
    sub-long v2, p1, v5

    const-wide/16 v4, 0x3e8

    cmp-long v0, v2, v4

    if-ltz v0, :cond_6

    .line 437
    iget v0, p0, Lcom/miui/maml/ScreenElementRoot;->mFrames:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v4, v0

    div-long/2addr v4, v2

    long-to-int v0, v4

    .line 438
    iget-object v2, p0, Lcom/miui/maml/ScreenElementRoot;->mFramerateHelper:Lcom/miui/maml/ScreenElementRoot$FramerateHelper;

    invoke-virtual {v2, v0}, Lcom/miui/maml/ScreenElementRoot$FramerateHelper;->set(I)V

    .line 439
    iget-object v2, p0, Lcom/miui/maml/ScreenElementRoot;->mFrameRateVar:Lcom/miui/maml/data/IndexedVariable;

    int-to-double v3, v0

    invoke-virtual {v2, v3, v4}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 440
    iput v1, p0, Lcom/miui/maml/ScreenElementRoot;->mFrames:I

    .line 441
    iput-wide p1, p0, Lcom/miui/maml/ScreenElementRoot;->mCheckPoint:J

    :cond_6
    :goto_2
    return-void
.end method

.method public doneRender()V
    .locals 0

    .line 1613
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mController:Lcom/miui/maml/RendererController;

    invoke-virtual {p0}, Lcom/miui/maml/RendererController;->doneRender()V

    return-void
.end method

.method public findBinder(Ljava/lang/String;)Lcom/miui/maml/data/VariableBinder;
    .locals 0

    .line 483
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mVariableBinderManager:Lcom/miui/maml/data/VariableBinderManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/miui/maml/data/VariableBinderManager;->findBinder(Ljava/lang/String;)Lcom/miui/maml/data/VariableBinder;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;
    .locals 1

    const-string v0, "__root"

    .line 476
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 479
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/maml/ScreenElementRoot;->getElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    move-result-object p0

    return-object p0
.end method

.method public findTask(Ljava/lang/String;)Lcom/miui/maml/util/Task;
    .locals 0

    .line 1279
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mConfig:Lcom/miui/maml/util/ConfigFile;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/maml/util/ConfigFile;->getTask(Ljava/lang/String;)Lcom/miui/maml/util/Task;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public finish()V
    .locals 3

    .line 1321
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mFinished:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mLoaded:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 1323
    :cond_0
    invoke-super {p0}, Lcom/miui/maml/elements/ScreenElement;->finish()V

    const-string v0, "finish"

    const-string v1, "ScreenElementRoot"

    .line 1324
    invoke-static {v1, v0}, Lcom/miui/maml/util/MamlLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1326
    iget-object v1, p0, Lcom/miui/maml/ScreenElementRoot;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    const-string v2, "preFinish"

    invoke-virtual {v1, v2}, Lcom/miui/maml/elements/ElementGroup;->performAction(Ljava/lang/String;)V

    .line 1327
    iget-object v1, p0, Lcom/miui/maml/ScreenElementRoot;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    invoke-virtual {v1}, Lcom/miui/maml/elements/ElementGroup;->finish()V

    .line 1328
    iget-object v1, p0, Lcom/miui/maml/ScreenElementRoot;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    invoke-virtual {v1, v0}, Lcom/miui/maml/elements/ElementGroup;->performAction(Ljava/lang/String;)V

    .line 1330
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mConfig:Lcom/miui/maml/util/ConfigFile;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/miui/maml/ScreenElementRoot;->mSaveConfigOnlyInPause:Z

    if-nez v1, :cond_1

    .line 1331
    iget-object v1, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    iget-object v1, v1, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/maml/util/ConfigFile;->save(Landroid/content/Context;)Z

    .line 1334
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mVariableBinderManager:Lcom/miui/maml/data/VariableBinderManager;

    if-eqz v0, :cond_2

    .line 1335
    invoke-virtual {v0}, Lcom/miui/maml/data/VariableBinderManager;->finish()V

    .line 1337
    :cond_2
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mExternalCommandManager:Lcom/miui/maml/CommandTriggers;

    if-eqz v0, :cond_3

    .line 1338
    invoke-virtual {v0}, Lcom/miui/maml/CommandTriggers;->finish()V

    .line 1340
    :cond_3
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lcom/miui/maml/data/VariableUpdaterManager;

    if-eqz v0, :cond_4

    .line 1341
    invoke-virtual {v0}, Lcom/miui/maml/data/VariableUpdaterManager;->finish()V

    .line 1343
    :cond_4
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mSoundManager:Lcom/miui/maml/SoundManager;

    invoke-virtual {v0}, Lcom/miui/maml/SoundManager;->release()V

    .line 1344
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    iget-boolean v1, p0, Lcom/miui/maml/ScreenElementRoot;->mKeepResource:Z

    invoke-virtual {v0, v1}, Lcom/miui/maml/ResourceManager;->finish(Z)V

    const/4 v0, 0x1

    .line 1345
    iput-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mFinished:Z

    const/4 v0, 0x0

    .line 1346
    iput-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mKeepResource:Z

    .line 1349
    invoke-static {}, Lcom/miui/maml/data/Expression$FunctionExpression;->resetFunctions()V

    :cond_5
    :goto_0
    return-void
.end method

.method public getAccessibleElements()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/maml/elements/AnimatedScreenElement;",
            ">;"
        }
    .end annotation

    .line 378
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mAccessibleElements:Ljava/util/List;

    return-object p0
.end method

.method public getAnimationItems(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 0
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

    .line 1798
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mAnimationItems:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    return-object p0
.end method

.method public getCacheDir()Ljava/lang/String;
    .locals 0

    .line 346
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mCacheDir:Ljava/lang/String;

    return-object p0
.end method

.method public getCapability(I)Z
    .locals 0

    .line 1722
    iget p0, p0, Lcom/miui/maml/ScreenElementRoot;->mCapability:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getContext()Lcom/miui/maml/ScreenContext;
    .locals 0

    .line 461
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    return-object p0
.end method

.method public getContextAndRect()Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Landroid/content/Context;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 1584
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mViewManagerRef:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/maml/util/MamlViewManager;

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_1

    .line 1586
    invoke-interface {p0}, Lcom/miui/maml/util/MamlViewManager;->getViewLocationOnScreen()Landroid/graphics/Rect;

    move-result-object v0

    .line 1587
    invoke-interface {p0}, Lcom/miui/maml/util/MamlViewManager;->getViewContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public getCornerCutType()Ljava/lang/String;
    .locals 0

    .line 1308
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mCornerCutType:Ljava/lang/String;

    return-object p0
.end method

.method public getDefaultScreenWidth()I
    .locals 0

    .line 1312
    iget p0, p0, Lcom/miui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    return p0
.end method

.method public getElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;
    .locals 0

    .line 1802
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mElements:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    .line 1804
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/maml/elements/ScreenElement;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getFontScale()F
    .locals 0

    .line 1753
    iget p0, p0, Lcom/miui/maml/ScreenElementRoot;->mFontScale:F

    return p0
.end method

.method public getHeight()F
    .locals 0

    .line 1386
    iget p0, p0, Lcom/miui/maml/ScreenElementRoot;->mHeight:F

    return p0
.end method

.method public getHoverElement()Lcom/miui/maml/elements/AnimatedScreenElement;
    .locals 0

    .line 1463
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mHoverElement:Lcom/miui/maml/elements/AnimatedScreenElement;

    return-object p0
.end method

.method public getMamlAccessHelper()Lcom/miui/maml/util/MamlAccessHelper;
    .locals 0

    .line 1783
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mMamlAccessHelper:Lcom/miui/maml/util/MamlAccessHelper;

    return-object p0
.end method

.method public getMamlSurface()Lcom/miui/maml/component/MamlSurface;
    .locals 0

    .line 1856
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mMamlSurfaceRef:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/maml/component/MamlSurface;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getRawAttr(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 452
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mRawAttrs:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getRenderMutex()Ljava/lang/Object;
    .locals 0

    .line 401
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mRenderMutex:Ljava/lang/Object;

    return-object p0
.end method

.method public getRendererController()Lcom/miui/maml/RendererController;
    .locals 0

    .line 1653
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mController:Lcom/miui/maml/RendererController;

    return-object p0
.end method

.method public getResourceDensity()I
    .locals 0

    .line 1296
    iget p0, p0, Lcom/miui/maml/ScreenElementRoot;->mDefaultResourceDensity:I

    return p0
.end method

.method public getRootTag()Ljava/lang/String;
    .locals 0

    .line 851
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mRootTag:Ljava/lang/String;

    return-object p0
.end method

.method public final getScale()F
    .locals 1

    .line 1287
    iget p0, p0, Lcom/miui/maml/ScreenElementRoot;->mScale:F

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-nez v0, :cond_0

    const-string p0, "ScreenElementRoot"

    const-string v0, "scale not initialized!"

    .line 1288
    invoke-static {p0, v0}, Lcom/miui/maml/util/MamlLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 p0, 0x3f800000    # 1.0f

    :cond_0
    return p0
.end method

.method public getScreenHeight()I
    .locals 0

    .line 1378
    iget p0, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetScreenHeight:I

    return p0
.end method

.method public getScreenWidth()I
    .locals 0

    .line 1374
    iget p0, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    return p0
.end method

.method public getStyle(Ljava/lang/String;)Lcom/miui/maml/StylesManager$Style;
    .locals 2

    .line 855
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 857
    :cond_0
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mStylesManager:Lcom/miui/maml/StylesManager;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/miui/maml/StylesManager;->getStyle(Ljava/lang/String;)Lcom/miui/maml/StylesManager$Style;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public getSystemFrameRate()F
    .locals 1

    .line 1838
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    iget-object p0, p0, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 1839
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 1840
    invoke-virtual {p0}, Landroid/view/Display;->getRefreshRate()F

    move-result p0

    return p0
.end method

.method public getTargetDensity()I
    .locals 0

    .line 1300
    iget p0, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetDensity:I

    return p0
.end method

.method public getViewManager()Lcom/miui/maml/util/MamlViewManager;
    .locals 0

    .line 1742
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mViewManagerRef:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    .line 1743
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/maml/util/MamlViewManager;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getWidth()F
    .locals 0

    .line 1382
    iget p0, p0, Lcom/miui/maml/ScreenElementRoot;->mWidth:F

    return p0
.end method

.method public getmConfiguration()Landroid/content/res/Configuration;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mConfiguration:Landroid/content/res/Configuration;

    return-object p0
.end method

.method public haptic(I)V
    .locals 0

    return-void
.end method

.method public init()V
    .locals 9

    .line 524
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mLoaded:Z

    if-nez v0, :cond_0

    return-void

    .line 528
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    const-string v1, "__objRoot"

    .line 529
    invoke-virtual {v0, v1, p0}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 530
    iget-object v1, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    const-string v2, "__objContext"

    invoke-virtual {v0, v2, v1}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 532
    invoke-super {p0}, Lcom/miui/maml/elements/ScreenElement;->init()V

    const-string v1, "init"

    const-string v2, "ScreenElementRoot"

    .line 533
    invoke-static {v2, v1}, Lcom/miui/maml/util/MamlLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    iget v3, p0, Lcom/miui/maml/ScreenElementRoot;->mFrameRate:F

    invoke-virtual {p0, v3}, Lcom/miui/maml/ScreenElementRoot;->requestFramerate(F)V

    const/4 v3, -0x1

    .line 537
    iput v3, p0, Lcom/miui/maml/ScreenElementRoot;->mCapability:I

    .line 538
    invoke-static {}, Lcom/miui/maml/util/HideSdkDependencyUtils;->isShowDebugLayout()Z

    move-result v3

    iput-boolean v3, p0, Lcom/miui/maml/ScreenElementRoot;->mShowDebugLayout:Z

    const/4 v3, 0x0

    .line 540
    iput-boolean v3, p0, Lcom/miui/maml/ScreenElementRoot;->mFinished:Z

    .line 541
    iget-object v4, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    iget-object v4, v4, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    invoke-virtual {v4}, Lcom/miui/maml/ResourceManager;->init()V

    .line 544
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v4

    iget-object v4, v4, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->fontScale:F

    iput v4, p0, Lcom/miui/maml/ScreenElementRoot;->mFontScale:F

    .line 545
    iget v4, p0, Lcom/miui/maml/ScreenElementRoot;->mFontScale:F

    float-to-double v4, v4

    const-string v6, "__fontScale"

    invoke-virtual {v0, v6, v4, v5}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 548
    iget-object v4, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    iget-object v4, v4, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v5, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    iget-object v5, v5, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    iget-object v6, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    iget-object v6, v6, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    invoke-static {v4, v5, v6}, Lcom/miui/maml/LanguageHelper;->load(Ljava/util/Locale;Lcom/miui/maml/ResourceManager;Lcom/miui/maml/data/Variables;)Z

    .line 550
    iget v4, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    int-to-double v4, v4

    const-string v6, "raw_screen_width"

    invoke-virtual {v0, v6, v4, v5}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 551
    iget v4, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetScreenHeight:I

    int-to-double v4, v4

    const-string v6, "raw_screen_height"

    invoke-virtual {v0, v6, v4, v5}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 552
    iget v4, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/miui/maml/ScreenElementRoot;->mScale:F

    div-float/2addr v4, v5

    float-to-double v4, v4

    const-string v6, "screen_width"

    invoke-virtual {v0, v6, v4, v5}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 553
    iget v4, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetScreenHeight:I

    int-to-float v4, v4

    iget v5, p0, Lcom/miui/maml/ScreenElementRoot;->mScale:F

    div-float/2addr v4, v5

    float-to-double v4, v4

    const-string v6, "screen_height"

    invoke-virtual {v0, v6, v4, v5}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 554
    iget v4, p0, Lcom/miui/maml/ScreenElementRoot;->mRawWidth:I

    const-string v5, "view_width"

    if-lez v4, :cond_1

    int-to-double v6, v4

    .line 555
    invoke-virtual {v0, v5, v6, v7}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 557
    :cond_1
    iget v4, p0, Lcom/miui/maml/ScreenElementRoot;->mRawHeight:I

    const-string v6, "view_height"

    if-lez v4, :cond_2

    int-to-double v7, v4

    .line 558
    invoke-virtual {v0, v6, v7, v8}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 560
    :cond_2
    iget v4, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    int-to-float v4, v4

    iget v7, p0, Lcom/miui/maml/ScreenElementRoot;->mScale:F

    div-float/2addr v4, v7

    float-to-double v7, v4

    invoke-virtual {v0, v5, v7, v8}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 561
    iget v4, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetScreenHeight:I

    int-to-float v4, v4

    iget v5, p0, Lcom/miui/maml/ScreenElementRoot;->mScale:F

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-virtual {v0, v6, v4, v5}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 563
    iget v4, p0, Lcom/miui/maml/ScreenElementRoot;->mRawTargetDensity:I

    int-to-double v4, v4

    const-string v6, "__raw_density"

    invoke-virtual {v0, v6, v4, v5}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 564
    iget v4, p0, Lcom/miui/maml/ScreenElementRoot;->mScale:F

    float-to-double v4, v4

    const-string v6, "__scale_factor"

    invoke-virtual {v0, v6, v4, v5}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    const-wide/high16 v4, 0x401c000000000000L    # 7.0

    const-string v6, "__maml_version"

    .line 565
    invoke-virtual {v0, v6, v4, v5}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 568
    :try_start_0
    iget-object v4, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    iget-object v4, v4, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_3

    .line 569
    iget-object v4, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    iget-object v4, v4, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    if-eqz v4, :cond_3

    const-string v5, "com.android.thememanager"

    .line 571
    invoke-virtual {v4, v5, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 573
    iget v2, v4, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v2

    goto :goto_0

    :catch_0
    const-string v4, "thememanager not found"

    .line 578
    invoke-static {v2, v4}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    int-to-double v2, v3

    const-string v4, "__thememanager_version"

    .line 580
    invoke-virtual {v0, v4, v2, v3}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    const-string v2, "ro.miui.ui.version.name"

    .line 582
    invoke-static {v2}, Lcom/miui/maml/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "__miui_version_name"

    invoke-virtual {v0, v3, v2}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "ro.miui.ui.version.code"

    .line 583
    invoke-static {v2}, Lcom/miui/maml/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "__miui_version_code"

    invoke-virtual {v0, v3, v2}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 584
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v3, "__android_version"

    invoke-virtual {v0, v3, v2}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 585
    sget-object v2, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    const-string v3, "__system_version"

    invoke-virtual {v0, v3, v2}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 586
    invoke-static {}, Lcom/miui/maml/util/DeviceUtils;->isPad()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "__is_tablet"

    invoke-virtual {v0, v3, v2}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 587
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->loadConfig()V

    .line 590
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lcom/miui/maml/data/VariableUpdaterManager;

    if-eqz v0, :cond_4

    .line 591
    invoke-virtual {v0}, Lcom/miui/maml/data/VariableUpdaterManager;->init()V

    .line 594
    :cond_4
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mVariableBinderManager:Lcom/miui/maml/data/VariableBinderManager;

    if-eqz v0, :cond_5

    .line 595
    invoke-virtual {v0}, Lcom/miui/maml/data/VariableBinderManager;->init()V

    .line 598
    :cond_5
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mExternalCommandManager:Lcom/miui/maml/CommandTriggers;

    if-eqz v0, :cond_6

    .line 599
    invoke-virtual {v0}, Lcom/miui/maml/CommandTriggers;->init()V

    .line 602
    :cond_6
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    invoke-virtual {v0, v1}, Lcom/miui/maml/elements/ElementGroup;->performAction(Ljava/lang/String;)V

    .line 603
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    invoke-virtual {v0}, Lcom/miui/maml/elements/ElementGroup;->init()V

    .line 604
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    const-string v1, "postInit"

    invoke-virtual {v0, v1}, Lcom/miui/maml/elements/ElementGroup;->performAction(Ljava/lang/String;)V

    .line 606
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/miui/maml/ScreenElementRoot;->mHoverElement:Lcom/miui/maml/elements/AnimatedScreenElement;

    const/4 v0, 0x1

    .line 607
    iput-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mNeedReset:Z

    .line 608
    iget-object v1, p0, Lcom/miui/maml/ScreenElementRoot;->mController:Lcom/miui/maml/RendererController;

    invoke-virtual {v1, v0}, Lcom/miui/maml/RendererController;->setNeedReset(Z)V

    .line 609
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->requestUpdate()V

    return-void
.end method

.method public isDisableCutRoundCorner()Z
    .locals 0

    .line 1304
    iget-boolean p0, p0, Lcom/miui/maml/ScreenElementRoot;->mDisableCutRoundCorner:Z

    return p0
.end method

.method public isMamlBlurWindow()Z
    .locals 0

    .line 1757
    iget-boolean p0, p0, Lcom/miui/maml/ScreenElementRoot;->mBlurWindow:Z

    return p0
.end method

.method public isSupportAccessibilityService()Z
    .locals 0

    .line 1718
    iget-boolean p0, p0, Lcom/miui/maml/ScreenElementRoot;->mSupportAccessibilityService:Z

    return p0
.end method

.method public isTransparentSurface()Z
    .locals 0

    .line 1860
    iget-boolean p0, p0, Lcom/miui/maml/ScreenElementRoot;->mTransparentSurface:Z

    return p0
.end method

.method public isUseHardwareCanvas()Z
    .locals 0

    .line 1761
    iget-boolean p0, p0, Lcom/miui/maml/ScreenElementRoot;->mUseHardwareCanvas:Z

    return p0
.end method

.method public issueExternCommand(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V
    .locals 4

    .line 1418
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mSystemExternCommandListener:Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;->onCommand(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V

    .line 1420
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mExternCommandListener:Ljava/lang/ref/WeakReference;

    const-string v1, "ScreenElementRoot"

    const-string v2, " "

    if-eqz v0, :cond_0

    .line 1421
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;

    if-eqz v0, :cond_0

    .line 1423
    invoke-interface {v0, p1, p2, p3}, Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;->onCommand(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V

    .line 1424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "issueExternCommand: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/maml/util/MamlLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1427
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mMamlViewExternCommandListener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 1428
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;

    if-eqz v0, :cond_1

    .line 1430
    invoke-interface {v0, p1, p2, p3}, Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;->onCommand(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V

    .line 1431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "issueExternCommand to MamlView: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/maml/util/MamlLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1434
    :cond_1
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mMamlSurfaceExternCommandListener:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_2

    .line 1435
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;

    if-eqz p0, :cond_2

    .line 1437
    invoke-interface {p0, p1, p2, p3}, Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;->onCommand(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V

    .line 1438
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "issueExternCommand to MamlSurface: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/miui/maml/util/MamlLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final load()Z
    .locals 9

    const-string v0, "cornerCutType"

    const-string v1, "ScreenElementRoot"

    const/4 v2, 0x0

    .line 781
    :try_start_0
    iput-boolean v2, p0, Lcom/miui/maml/ScreenElementRoot;->mLoaded:Z

    .line 782
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 783
    iget-object v5, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    iget-object v5, v5, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    invoke-virtual {v5}, Lcom/miui/maml/ResourceManager;->getManifestRoot()Lorg/w3c/dom/Element;

    move-result-object v5

    if-nez v5, :cond_0

    const-string p0, "load error, manifest root is null"

    .line 785
    invoke-static {v1, p0}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 788
    :cond_0
    invoke-interface {v5}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/miui/maml/ScreenElementRoot;->mRootTag:Ljava/lang/String;

    .line 789
    invoke-direct {p0, v5}, Lcom/miui/maml/ScreenElementRoot;->loadRawAttrs(Lorg/w3c/dom/Element;)V

    .line 790
    invoke-direct {p0, v5}, Lcom/miui/maml/ScreenElementRoot;->processUseVariableUpdater(Lorg/w3c/dom/Element;)V

    .line 793
    invoke-direct {p0, v5}, Lcom/miui/maml/ScreenElementRoot;->setupScale(Lorg/w3c/dom/Element;)V

    const-string v6, "VariableBinders"

    .line 795
    invoke-static {v5, v6}, Lcom/miui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    .line 797
    new-instance v7, Lcom/miui/maml/data/VariableBinderManager;

    invoke-direct {v7, v6, p0}, Lcom/miui/maml/data/VariableBinderManager;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    iput-object v7, p0, Lcom/miui/maml/ScreenElementRoot;->mVariableBinderManager:Lcom/miui/maml/data/VariableBinderManager;

    const-string v6, "ExternalCommands"

    .line 799
    invoke-static {v5, v6}, Lcom/miui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 801
    new-instance v7, Lcom/miui/maml/CommandTriggers;

    invoke-direct {v7, v6, p0}, Lcom/miui/maml/CommandTriggers;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)V

    iput-object v7, p0, Lcom/miui/maml/ScreenElementRoot;->mExternalCommandManager:Lcom/miui/maml/CommandTriggers;

    :cond_1
    const-string v6, "Styles"

    .line 805
    invoke-static {v5, v6}, Lcom/miui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 807
    new-instance v7, Lcom/miui/maml/StylesManager;

    invoke-direct {v7, v6}, Lcom/miui/maml/StylesManager;-><init>(Lorg/w3c/dom/Element;)V

    iput-object v7, p0, Lcom/miui/maml/ScreenElementRoot;->mStylesManager:Lcom/miui/maml/StylesManager;

    :cond_2
    const-string v6, "selfRender"

    .line 810
    invoke-interface {v5, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/miui/maml/ScreenElementRoot;->mSelfRender:Z

    const-string v6, "transparentSurface"

    .line 811
    invoke-interface {v5, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/miui/maml/ScreenElementRoot;->mTransparentSurface:Z

    const-string v6, "frameRate"

    .line 812
    iget v7, p0, Lcom/miui/maml/ScreenElementRoot;->DEFAULT_FRAME_RATE:F

    invoke-static {v5, v6, v7}, Lcom/miui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v6

    iput v6, p0, Lcom/miui/maml/ScreenElementRoot;->mFrameRate:F

    const-string v6, "customizedDarkModeWallpaper"

    .line 813
    invoke-interface {v5, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/miui/maml/ScreenElementRoot;->mUseCustomizedDarkModeWallpaper:Z

    const-string v6, "disableCutRoundCorner"

    .line 814
    invoke-interface {v5, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/miui/maml/ScreenElementRoot;->mDisableCutRoundCorner:Z

    .line 815
    invoke-interface {v5, v0}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 816
    invoke-interface {v5, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mCornerCutType:Ljava/lang/String;

    :cond_3
    const-string v0, "clearCanvas"

    .line 818
    invoke-interface {v5, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mClearCanvas:Z

    const-string v0, "supportAccessibityService"

    .line 819
    invoke-interface {v5, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mSupportAccessibilityService:Z

    const-string v0, "allowScreenRotation"

    .line 820
    invoke-interface {v5, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mAllowScreenRotation:Z

    const-string v0, "blurWindow"

    .line 821
    invoke-interface {v5, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mBlurWindow:Z

    const-string v0, "useHardwareCanvas"

    .line 822
    invoke-interface {v5, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mUseHardwareCanvas:Z

    const-string v0, "needFolmeClean"

    const/4 v6, 0x1

    .line 823
    invoke-static {v5, v0, v6}, Lcom/miui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_4

    move v0, v6

    goto :goto_0

    :cond_4
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mNeedFolmeClean:Z

    .line 824
    new-instance v0, Lcom/miui/maml/RendererController;

    invoke-direct {v0}, Lcom/miui/maml/RendererController;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mController:Lcom/miui/maml/RendererController;

    .line 825
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mController:Lcom/miui/maml/RendererController;

    iget-boolean v7, p0, Lcom/miui/maml/ScreenElementRoot;->mSelfRender:Z

    invoke-virtual {v0, v7}, Lcom/miui/maml/RendererController;->setSelfRender(Z)V

    .line 826
    new-instance v0, Lcom/miui/maml/ScreenElementRoot$InnerGroup;

    invoke-direct {v0, v5, p0}, Lcom/miui/maml/ScreenElementRoot$InnerGroup;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    iput-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    .line 827
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    invoke-virtual {v0}, Lcom/miui/maml/elements/ElementGroup;->getElements()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_5

    const-string p0, "load error, no element loaded"

    .line 828
    invoke-static {v1, p0}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_5
    const-string v0, "version"

    .line 831
    invoke-static {v5, v0, v6}, Lcom/miui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/maml/ScreenElementRoot;->mVersion:I

    .line 832
    invoke-virtual {p0, v5}, Lcom/miui/maml/ScreenElementRoot;->onLoad(Lorg/w3c/dom/Element;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string p0, "load error, onLoad fail"

    .line 833
    invoke-static {v1, p0}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 839
    :cond_6
    invoke-direct {p0}, Lcom/miui/maml/ScreenElementRoot;->traverseElements()V

    .line 841
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "load finished, spent "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long/2addr v7, v3

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ms"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/maml/util/MamlLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    iput-boolean v6, p0, Lcom/miui/maml/ScreenElementRoot;->mLoaded:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v6

    :catch_0
    move-exception p0

    const-string v0, "load error! "

    .line 845
    invoke-static {v1, v0, p0}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2
.end method

.method public loadConfig()V
    .locals 1

    .line 613
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mConfigPath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/miui/maml/ScreenElementRoot;->loadConfig(Ljava/lang/String;)V

    return-void
.end method

.method public needDisallowInterceptTouchEvent()Z
    .locals 0

    .line 760
    iget-boolean p0, p0, Lcom/miui/maml/ScreenElementRoot;->mNeedDisallowInterceptTouchEvent:Z

    return p0
.end method

.method public needFolmeClean()Z
    .locals 0

    .line 1765
    iget-boolean p0, p0, Lcom/miui/maml/ScreenElementRoot;->mNeedFolmeClean:Z

    return p0
.end method

.method protected onAddVariableUpdater(Lcom/miui/maml/data/VariableUpdaterManager;)V
    .locals 0

    .line 322
    new-instance p0, Lcom/miui/maml/data/DateTimeVariableUpdater;

    invoke-direct {p0, p1}, Lcom/miui/maml/data/DateTimeVariableUpdater;-><init>(Lcom/miui/maml/data/VariableUpdaterManager;)V

    invoke-virtual {p1, p0}, Lcom/miui/maml/data/VariableUpdaterManager;->add(Lcom/miui/maml/data/VariableUpdater;)V

    return-void
.end method

.method public onCommand(Ljava/lang/String;)V
    .locals 1

    .line 1353
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mExternalCommandManager:Lcom/miui/maml/CommandTriggers;

    if-eqz v0, :cond_0

    .line 1354
    new-instance v0, Lcom/miui/maml/ScreenElementRoot$3;

    invoke-direct {v0, p0, p1}, Lcom/miui/maml/ScreenElementRoot$3;-><init>(Lcom/miui/maml/ScreenElementRoot;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/miui/maml/ScreenElementRoot;->postRunnable(Ljava/lang/Runnable;)V

    .line 1365
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->requestUpdate()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1657
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mAllowScreenRotation:Z

    if-eqz v0, :cond_0

    .line 1658
    invoke-virtual {p0, p1}, Lcom/miui/maml/ScreenElementRoot;->setConfiguration(Landroid/content/res/Configuration;)V

    const-string v0, "orientationChange"

    .line 1659
    invoke-virtual {p0, v0}, Lcom/miui/maml/ScreenElementRoot;->onCommand(Ljava/lang/String;)V

    .line 1660
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->requestUpdate()V

    .line 1662
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mConfiguration:Landroid/content/res/Configuration;

    if-nez v0, :cond_1

    return-void

    .line 1666
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

    .line 1670
    :cond_2
    invoke-static {}, Lcom/miui/maml/ResourceManager;->clear()V

    .line 1671
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    invoke-virtual {v0}, Lcom/miui/maml/ResourceManager;->getManifestRoot()Lorg/w3c/dom/Element;

    move-result-object v0

    if-nez v0, :cond_3

    const-string p0, "ScreenElementRoot"

    const-string p1, "load error, manifest root is null"

    .line 1673
    invoke-static {p0, p1}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1676
    :cond_3
    invoke-direct {p0, v0}, Lcom/miui/maml/ScreenElementRoot;->setupScale(Lorg/w3c/dom/Element;)V

    .line 1677
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->requestUpdate()V

    .line 1679
    :cond_4
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    return-void
.end method

.method public onHover(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v0, 0x0

    .line 752
    :try_start_0
    iget-boolean v1, p0, Lcom/miui/maml/ScreenElementRoot;->mFinished:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/miui/maml/ScreenElementRoot;->mLoaded:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/miui/maml/ScreenElementRoot;->mTouchable:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ElementGroup;->onHover(Landroid/view/MotionEvent;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return v0

    :catch_0
    move-exception p0

    .line 754
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ScreenElementRoot"

    invoke-static {v1, p1, p0}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method public onHoverChange(Lcom/miui/maml/elements/AnimatedScreenElement;Ljava/lang/String;)V
    .locals 0

    .line 1452
    iput-object p1, p0, Lcom/miui/maml/ScreenElementRoot;->mHoverElement:Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 1454
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mHoverChangeListenerRef:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    .line 1455
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/maml/ScreenElementRoot$OnHoverChangeListener;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 1458
    invoke-interface {p0, p2}, Lcom/miui/maml/ScreenElementRoot$OnHoverChangeListener;->onHoverChange(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected onLoad(Lorg/w3c/dom/Element;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v0, 0x0

    .line 699
    :try_start_0
    iget-boolean v1, p0, Lcom/miui/maml/ScreenElementRoot;->mFinished:Z

    if-nez v1, :cond_7

    iget-boolean v1, p0, Lcom/miui/maml/ScreenElementRoot;->mLoaded:Z

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/miui/maml/ScreenElementRoot;->mTouchable:Z

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 702
    :cond_0
    iget-object v1, p0, Lcom/miui/maml/ScreenElementRoot;->mHoverElement:Lcom/miui/maml/elements/AnimatedScreenElement;

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 703
    iget-object v1, p0, Lcom/miui/maml/ScreenElementRoot;->mHoverElement:Lcom/miui/maml/elements/AnimatedScreenElement;

    invoke-virtual {v1}, Lcom/miui/maml/elements/AnimatedScreenElement;->getWidth()F

    move-result v1

    .line 704
    iget-object v3, p0, Lcom/miui/maml/ScreenElementRoot;->mHoverElement:Lcom/miui/maml/elements/AnimatedScreenElement;

    invoke-virtual {v3}, Lcom/miui/maml/elements/AnimatedScreenElement;->getHeight()F

    move-result v3

    .line 705
    iget-object v4, p0, Lcom/miui/maml/ScreenElementRoot;->mHoverElement:Lcom/miui/maml/elements/AnimatedScreenElement;

    invoke-virtual {v4}, Lcom/miui/maml/elements/AnimatedScreenElement;->getAbsoluteLeft()F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v1, v5

    add-float/2addr v4, v1

    .line 706
    iget-object v1, p0, Lcom/miui/maml/ScreenElementRoot;->mHoverElement:Lcom/miui/maml/elements/AnimatedScreenElement;

    invoke-virtual {v1}, Lcom/miui/maml/elements/AnimatedScreenElement;->getAbsoluteTop()F

    move-result v1

    div-float/2addr v3, v5

    add-float/2addr v1, v3

    .line 707
    iget-object v3, p0, Lcom/miui/maml/ScreenElementRoot;->mHoverMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sub-float/2addr v1, v5

    invoke-virtual {v3, v4, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 708
    iget-object v1, p0, Lcom/miui/maml/ScreenElementRoot;->mHoverMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    .line 709
    iget-object v1, p0, Lcom/miui/maml/ScreenElementRoot;->mHoverElement:Lcom/miui/maml/elements/AnimatedScreenElement;

    invoke-virtual {v1, p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->onTouch(Landroid/view/MotionEvent;)Z

    .line 710
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eq v1, v2, :cond_1

    .line 711
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    :cond_1
    const/4 p1, 0x0

    .line 712
    iput-object p1, p0, Lcom/miui/maml/ScreenElementRoot;->mHoverElement:Lcom/miui/maml/elements/AnimatedScreenElement;

    :cond_2
    return v2

    .line 717
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-double v3, v1

    invoke-virtual {p0, v3, v4}, Lcom/miui/maml/ScreenElementRoot;->descale(D)D

    move-result-wide v3

    .line 718
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-double v5, v1

    invoke-virtual {p0, v5, v6}, Lcom/miui/maml/ScreenElementRoot;->descale(D)D

    move-result-wide v5

    .line 720
    iget-object v1, p0, Lcom/miui/maml/ScreenElementRoot;->mTouchX:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {v1, v3, v4}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 721
    iget-object v1, p0, Lcom/miui/maml/ScreenElementRoot;->mTouchY:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {v1, v5, v6}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 722
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eqz v1, :cond_5

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    goto :goto_0

    .line 733
    :cond_4
    iput-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mNeedDisallowInterceptTouchEvent:Z

    goto :goto_0

    .line 724
    :cond_5
    iget-object v1, p0, Lcom/miui/maml/ScreenElementRoot;->mTouchBeginX:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {v1, v3, v4}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 725
    iget-object v1, p0, Lcom/miui/maml/ScreenElementRoot;->mTouchBeginY:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {v1, v5, v6}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 726
    iget-object v1, p0, Lcom/miui/maml/ScreenElementRoot;->mTouchBeginTime:Lcom/miui/maml/data/IndexedVariable;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 728
    iput-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mNeedDisallowInterceptTouchEvent:Z

    .line 737
    :goto_0
    iget-object v1, p0, Lcom/miui/maml/ScreenElementRoot;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    invoke-virtual {v1, p1}, Lcom/miui/maml/elements/ElementGroup;->onTouch(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 740
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mController:Lcom/miui/maml/RendererController;

    invoke-virtual {p0}, Lcom/miui/maml/RendererController;->requestUpdate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    return p1

    :cond_7
    :goto_1
    return v0

    :catch_0
    move-exception p0

    .line 744
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ScreenElementRoot"

    invoke-static {p1, p0}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public onUIInteractive(Lcom/miui/maml/elements/ScreenElement;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public pause()V
    .locals 2

    .line 647
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mLoaded:Z

    if-nez v0, :cond_0

    return-void

    .line 650
    :cond_0
    invoke-super {p0}, Lcom/miui/maml/elements/ScreenElement;->pause()V

    const-string v0, "pause"

    const-string v1, "ScreenElementRoot"

    .line 651
    invoke-static {v1, v0}, Lcom/miui/maml/util/MamlLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    iget-object v1, p0, Lcom/miui/maml/ScreenElementRoot;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    invoke-virtual {v1, v0}, Lcom/miui/maml/elements/ElementGroup;->performAction(Ljava/lang/String;)V

    .line 654
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    invoke-virtual {v0}, Lcom/miui/maml/elements/ElementGroup;->pause()V

    .line 655
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mSoundManager:Lcom/miui/maml/SoundManager;

    invoke-virtual {v0}, Lcom/miui/maml/SoundManager;->pause()V

    .line 656
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mVariableBinderManager:Lcom/miui/maml/data/VariableBinderManager;

    if-eqz v0, :cond_1

    .line 657
    invoke-virtual {v0}, Lcom/miui/maml/data/VariableBinderManager;->pause()V

    .line 659
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mExternalCommandManager:Lcom/miui/maml/CommandTriggers;

    if-eqz v0, :cond_2

    .line 660
    invoke-virtual {v0}, Lcom/miui/maml/CommandTriggers;->pause()V

    .line 662
    :cond_2
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lcom/miui/maml/data/VariableUpdaterManager;

    if-eqz v0, :cond_3

    .line 663
    invoke-virtual {v0}, Lcom/miui/maml/data/VariableUpdaterManager;->pause()V

    .line 664
    :cond_3
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    invoke-virtual {v0}, Lcom/miui/maml/ResourceManager;->pause()V

    const/4 v0, 0x0

    .line 665
    invoke-virtual {p0, v0, v0}, Lcom/miui/maml/ScreenElementRoot;->onHoverChange(Lcom/miui/maml/elements/AnimatedScreenElement;Ljava/lang/String;)V

    .line 666
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mConfig:Lcom/miui/maml/util/ConfigFile;

    if-eqz v0, :cond_4

    .line 667
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    iget-object p0, p0, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/miui/maml/util/ConfigFile;->save(Landroid/content/Context;)Z

    :cond_4
    return-void
.end method

.method protected pauseAnim(J)V
    .locals 0

    .line 1624
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->pauseAnim(J)V

    .line 1625
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ElementGroup;->pauseAnim(J)V

    return-void
.end method

.method protected playAnim(JJJZZ)V
    .locals 9

    .line 1618
    invoke-super/range {p0 .. p8}, Lcom/miui/maml/elements/ScreenElement;->playAnim(JJJZZ)V

    move-object v0, p0

    .line 1619
    iget-object v0, v0, Lcom/miui/maml/ScreenElementRoot;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/miui/maml/elements/ElementGroup;->playAnim(JJJZZ)V

    return-void
.end method

.method public playSound(Ljava/lang/String;)I
    .locals 3

    .line 1249
    new-instance v0, Lcom/miui/maml/SoundManager$SoundOptions;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2}, Lcom/miui/maml/SoundManager$SoundOptions;-><init>(ZZF)V

    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/ScreenElementRoot;->playSound(Ljava/lang/String;Lcom/miui/maml/SoundManager$SoundOptions;)I

    move-result p0

    return p0
.end method

.method public playSound(Ljava/lang/String;Lcom/miui/maml/SoundManager$SoundOptions;)I
    .locals 2

    .line 1254
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1257
    :cond_0
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->shouldPlaySound()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1258
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mSoundManager:Lcom/miui/maml/SoundManager;

    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/SoundManager;->playSound(Ljava/lang/String;Lcom/miui/maml/SoundManager$SoundOptions;)I

    move-result p0

    return p0

    :cond_1
    return v1
.end method

.method public playSound(ILcom/miui/maml/SoundManager$Command;)V
    .locals 0

    .line 1267
    :try_start_0
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mSoundManager:Lcom/miui/maml/SoundManager;

    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/SoundManager;->playSound(ILcom/miui/maml/SoundManager$Command;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1269
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ScreenElementRoot"

    invoke-static {p1, p0}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public postDelayed(Ljava/lang/Runnable;J)Z
    .locals 1

    .line 465
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mFinished:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mLoaded:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 467
    :cond_0
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/maml/ScreenContext;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public postMessage(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1531
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mLoaded:Z

    if-eqz v0, :cond_0

    .line 1532
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mController:Lcom/miui/maml/RendererController;

    invoke-virtual {p0, p1}, Lcom/miui/maml/RendererController;->postMessage(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method protected putRawAttr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 448
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mRawAttrs:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public removeAccessibleElement(Lcom/miui/maml/elements/AnimatedScreenElement;)V
    .locals 0

    .line 382
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mAccessibleElements:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/high16 p0, -0x80000000

    .line 383
    invoke-virtual {p1, p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->setVirtualViewId(I)V

    return-void
.end method

.method public removeAllAccessibleElements()V
    .locals 3

    .line 387
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

    .line 388
    invoke-virtual {v1, v2}, Lcom/miui/maml/elements/AnimatedScreenElement;->setVirtualViewId(I)V

    goto :goto_0

    .line 390
    :cond_0
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mAccessibleElements:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public removeCallbacks(Ljava/lang/Runnable;)V
    .locals 0

    .line 471
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    invoke-virtual {p0, p1}, Lcom/miui/maml/ScreenContext;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeElement(Ljava/lang/String;)V
    .locals 0

    .line 1814
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mElements:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removePreTicker(Lcom/miui/maml/elements/ITicker;)V
    .locals 0

    .line 1394
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mPreTickers:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public requestFrameRateByCommand(F)V
    .locals 1

    .line 1818
    iput p1, p0, Lcom/miui/maml/ScreenElementRoot;->mFrameRate:F

    .line 1819
    invoke-virtual {p0, p1}, Lcom/miui/maml/ScreenElementRoot;->requestFramerate(F)V

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    .line 1821
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->requestUpdate()V

    :cond_0
    return-void
.end method

.method public requestUpdate()V
    .locals 3

    .line 1573
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mLoaded:Z

    if-eqz v0, :cond_0

    .line 1574
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1576
    iget-object v2, p0, Lcom/miui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/RendererController;

    .line 1577
    invoke-virtual {v2}, Lcom/miui/maml/RendererController;->requestUpdate()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public reset(J)V
    .locals 0

    .line 1636
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->reset(J)V

    .line 1637
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ElementGroup;->reset(J)V

    return-void
.end method

.method public resume()V
    .locals 2

    .line 673
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mLoaded:Z

    if-nez v0, :cond_0

    return-void

    .line 676
    :cond_0
    invoke-super {p0}, Lcom/miui/maml/elements/ScreenElement;->resume()V

    const-string v0, "resume"

    const-string v1, "ScreenElementRoot"

    .line 677
    invoke-static {v1, v0}, Lcom/miui/maml/util/MamlLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    invoke-static {}, Lcom/miui/maml/util/HideSdkDependencyUtils;->isShowDebugLayout()Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/maml/ScreenElementRoot;->mShowDebugLayout:Z

    .line 680
    iget-object v1, p0, Lcom/miui/maml/ScreenElementRoot;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    invoke-virtual {v1, v0}, Lcom/miui/maml/elements/ElementGroup;->performAction(Ljava/lang/String;)V

    .line 681
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    invoke-virtual {v0}, Lcom/miui/maml/elements/ElementGroup;->resume()V

    .line 683
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mVariableBinderManager:Lcom/miui/maml/data/VariableBinderManager;

    if-eqz v0, :cond_1

    .line 684
    invoke-virtual {v0}, Lcom/miui/maml/data/VariableBinderManager;->resume()V

    .line 686
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mExternalCommandManager:Lcom/miui/maml/CommandTriggers;

    if-eqz v0, :cond_2

    .line 687
    invoke-virtual {v0}, Lcom/miui/maml/CommandTriggers;->resume()V

    .line 689
    :cond_2
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lcom/miui/maml/data/VariableUpdaterManager;

    if-eqz v0, :cond_3

    .line 690
    invoke-virtual {v0}, Lcom/miui/maml/data/VariableUpdaterManager;->resume()V

    .line 692
    :cond_3
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    invoke-virtual {v0}, Lcom/miui/maml/ResourceManager;->resume()V

    .line 693
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->setSyncInterval()V

    return-void
.end method

.method protected resumeAnim(J)V
    .locals 0

    .line 1630
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->resumeAnim(J)V

    .line 1631
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ElementGroup;->resumeAnim(J)V

    return-void
.end method

.method public saveVar(Ljava/lang/String;Ljava/lang/Double;)V
    .locals 2

    .line 1467
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mConfig:Lcom/miui/maml/util/ConfigFile;

    if-nez p0, :cond_0

    const-string p0, "ScreenElementRoot"

    const-string p1, "fail to saveVar, config file is null"

    .line 1468
    invoke-static {p0, p1}, Lcom/miui/maml/util/MamlLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    const-string p2, "null"

    .line 1473
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/util/ConfigFile;->putNumber(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1475
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/maml/util/ConfigFile;->putNumber(Ljava/lang/String;D)V

    :goto_0
    return-void
.end method

.method public saveVar(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1480
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mConfig:Lcom/miui/maml/util/ConfigFile;

    if-nez p0, :cond_0

    const-string p0, "ScreenElementRoot"

    const-string p1, "fail to saveVar, config file is null"

    .line 1481
    invoke-static {p0, p1}, Lcom/miui/maml/util/MamlLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1484
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/util/ConfigFile;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public selfFinish()V
    .locals 1

    .line 1497
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mLoaded:Z

    if-eqz v0, :cond_0

    .line 1498
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mController:Lcom/miui/maml/RendererController;

    invoke-virtual {p0}, Lcom/miui/maml/RendererController;->finish()V

    :cond_0
    return-void
.end method

.method public selfInit()V
    .locals 1

    .line 1491
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mLoaded:Z

    if-eqz v0, :cond_0

    .line 1492
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mController:Lcom/miui/maml/RendererController;

    invoke-virtual {p0}, Lcom/miui/maml/RendererController;->init()V

    :cond_0
    return-void
.end method

.method public selfPause()V
    .locals 3

    .line 1503
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1505
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

    .line 1510
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1512
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

    .line 1848
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

    .line 342
    iput-object p1, p0, Lcom/miui/maml/ScreenElementRoot;->mCacheDir:Ljava/lang/String;

    return-void
.end method

.method public setCapability(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1711
    iget p2, p0, Lcom/miui/maml/ScreenElementRoot;->mCapability:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/miui/maml/ScreenElementRoot;->mCapability:I

    goto :goto_0

    .line 1713
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

    .line 1734
    iput-boolean p1, p0, Lcom/miui/maml/ScreenElementRoot;->mClearCanvas:Z

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 1769
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    if-eqz p0, :cond_0

    .line 1770
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ElementGroup;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    return-void
.end method

.method public setConfig(Ljava/lang/String;)V
    .locals 0

    .line 326
    iput-object p1, p0, Lcom/miui/maml/ScreenElementRoot;->mConfigPath:Ljava/lang/String;

    return-void
.end method

.method public setConfiguration(Landroid/content/res/Configuration;)V
    .locals 8

    .line 1688
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mAllowScreenRotation:Z

    if-eqz v0, :cond_2

    .line 1689
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    .line 1690
    iget-object v1, p0, Lcom/miui/maml/ScreenElementRoot;->mContext:Lcom/miui/maml/ScreenContext;

    iget-object v1, v1, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    int-to-double v2, v2

    .line 1691
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string v3, "orientation"

    .line 1690
    invoke-static {v3, v1, v2}, Lcom/miui/maml/util/Utils;->putVariableNumber(Ljava/lang/String;Lcom/miui/maml/data/Variables;Ljava/lang/Double;)V

    .line 1692
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    const-string v2, "screen_height"

    const-string v3, "screen_width"

    const-string v4, "raw_screen_height"

    const-string v5, "raw_screen_width"

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 1694
    :cond_0
    iget p1, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetScreenHeight:I

    int-to-double v6, p1

    invoke-virtual {v0, v5, v6, v7}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 1695
    iget p1, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    int-to-double v5, p1

    invoke-virtual {v0, v4, v5, v6}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 1696
    iget p1, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetScreenHeight:I

    int-to-float p1, p1

    iget v1, p0, Lcom/miui/maml/ScreenElementRoot;->mScale:F

    div-float/2addr p1, v1

    float-to-double v4, p1

    invoke-virtual {v0, v3, v4, v5}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 1697
    iget p1, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    int-to-float p1, p1

    iget p0, p0, Lcom/miui/maml/ScreenElementRoot;->mScale:F

    div-float/2addr p1, p0

    float-to-double p0, p1

    invoke-virtual {v0, v2, p0, p1}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    goto :goto_0

    .line 1700
    :cond_1
    iget p1, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    int-to-double v6, p1

    invoke-virtual {v0, v5, v6, v7}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 1701
    iget p1, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetScreenHeight:I

    int-to-double v5, p1

    invoke-virtual {v0, v4, v5, v6}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 1702
    iget p1, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetScreenWidth:I

    int-to-float p1, p1

    iget v1, p0, Lcom/miui/maml/ScreenElementRoot;->mScale:F

    div-float/2addr p1, v1

    float-to-double v4, p1

    invoke-virtual {v0, v3, v4, v5}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 1703
    iget p1, p0, Lcom/miui/maml/ScreenElementRoot;->mTargetScreenHeight:I

    int-to-float p1, p1

    iget p0, p0, Lcom/miui/maml/ScreenElementRoot;->mScale:F

    div-float/2addr p1, p0

    float-to-double p0, p1

    invoke-virtual {v0, v2, p0, p1}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setDarkWallpaperMode(Z)V
    .locals 0

    .line 1775
    iput-boolean p1, p0, Lcom/miui/maml/ScreenElementRoot;->mDarkWallpaperMode:Z

    return-void
.end method

.method public setDefaultFramerate(F)V
    .locals 0

    .line 456
    iput p1, p0, Lcom/miui/maml/ScreenElementRoot;->DEFAULT_FRAME_RATE:F

    return-void
.end method

.method public final setKeepResource(Z)V
    .locals 0

    .line 1316
    iput-boolean p1, p0, Lcom/miui/maml/ScreenElementRoot;->mKeepResource:Z

    return-void
.end method

.method public setMamlAccessHelper(Lcom/miui/maml/util/MamlAccessHelper;)V
    .locals 0

    .line 1779
    iput-object p1, p0, Lcom/miui/maml/ScreenElementRoot;->mMamlAccessHelper:Lcom/miui/maml/util/MamlAccessHelper;

    return-void
.end method

.method public setMamlSurface(Lcom/miui/maml/component/MamlSurface;)V
    .locals 1

    .line 1852
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

    .line 1413
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

    .line 1408
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

    .line 1403
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

    .line 1448
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mHoverChangeListenerRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setRenderControllerListener(Lcom/miui/maml/RendererController$Listener;)V
    .locals 1

    .line 1518
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mLoaded:Z

    if-eqz v0, :cond_0

    .line 1519
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mController:Lcom/miui/maml/RendererController;

    invoke-virtual {p0, p1}, Lcom/miui/maml/RendererController;->setListener(Lcom/miui/maml/RendererController$Listener;)V

    :cond_0
    return-void
.end method

.method public setRenderControllerRenderable(Lcom/miui/maml/RendererController$IRenderable;)V
    .locals 1

    .line 1525
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mLoaded:Z

    if-eqz v0, :cond_0

    .line 1526
    new-instance v0, Lcom/miui/maml/SingleRootListener;

    invoke-direct {v0, p0, p1}, Lcom/miui/maml/SingleRootListener;-><init>(Lcom/miui/maml/ScreenElementRoot;Lcom/miui/maml/RendererController$IRenderable;)V

    invoke-virtual {p0, v0}, Lcom/miui/maml/ScreenElementRoot;->setRenderControllerListener(Lcom/miui/maml/RendererController$Listener;)V

    :cond_0
    return-void
.end method

.method public setResizeRadio(F)V
    .locals 0

    .line 1864
    iput p1, p0, Lcom/miui/maml/ScreenElementRoot;->mResizeScale:F

    return-void
.end method

.method public setSaveConfigOnlyInPause(Z)V
    .locals 0

    .line 337
    iput-boolean p1, p0, Lcom/miui/maml/ScreenElementRoot;->mSaveConfigOnlyInPause:Z

    return-void
.end method

.method public setSaveConfigViaProvider(Z)V
    .locals 0

    .line 330
    iput-boolean p1, p0, Lcom/miui/maml/ScreenElementRoot;->mSaveConfigViaProvider:Z

    .line 331
    iget-object p1, p0, Lcom/miui/maml/ScreenElementRoot;->mConfig:Lcom/miui/maml/util/ConfigFile;

    if-eqz p1, :cond_0

    .line 332
    iget-boolean p0, p0, Lcom/miui/maml/ScreenElementRoot;->mSaveConfigViaProvider:Z

    invoke-virtual {p1, p0}, Lcom/miui/maml/util/ConfigFile;->setSaveViaProvider(Z)V

    :cond_0
    return-void
.end method

.method public setScaleByDensity(Z)V
    .locals 0

    .line 887
    iput-boolean p1, p0, Lcom/miui/maml/ScreenElementRoot;->mScaleByDensity:Z

    return-void
.end method

.method public setSyncInterval()V
    .locals 1

    .line 1827
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->getSystemFrameRate()F

    move-result p0

    float-to-int p0, p0

    if-eqz p0, :cond_0

    const/16 v0, 0x3e8

    .line 1829
    div-int/2addr v0, p0

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    :goto_0
    const/4 p0, 0x1

    if-ge v0, p0, :cond_1

    goto :goto_1

    :cond_1
    move p0, v0

    .line 1834
    :goto_1
    invoke-static {}, Lcom/miui/maml/RenderVsyncUpdater;->getInstance()Lcom/miui/maml/RenderVsyncUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/maml/RenderVsyncUpdater;->setSyncInterval(I)V

    return-void
.end method

.method public setTouchable(Z)V
    .locals 0

    .line 1844
    iput-boolean p1, p0, Lcom/miui/maml/ScreenElementRoot;->mTouchable:Z

    return-void
.end method

.method public setViewManager(Lcom/miui/maml/util/MamlViewManager;)V
    .locals 1

    .line 1738
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mViewManagerRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setWidgetType(Ljava/lang/String;)V
    .locals 0

    .line 1868
    iput-object p1, p0, Lcom/miui/maml/ScreenElementRoot;->mWidgetType:Ljava/lang/String;

    return-void
.end method

.method protected shouldPlaySound()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public showCategory(Ljava/lang/String;Z)V
    .locals 0

    .line 1642
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot;->mInnerGroup:Lcom/miui/maml/elements/ElementGroup;

    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ElementGroup;->showCategory(Ljava/lang/String;Z)V

    return-void
.end method

.method public showFramerate(Z)V
    .locals 0

    .line 519
    iput-boolean p1, p0, Lcom/miui/maml/ScreenElementRoot;->mShowFramerate:Z

    return-void
.end method

.method public tick(J)V
    .locals 2

    .line 351
    iget-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mNeedReset:Z

    if-eqz v0, :cond_0

    .line 352
    new-instance v0, Lcom/miui/maml/ScreenElementRoot$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/maml/ScreenElementRoot$1;-><init>(Lcom/miui/maml/ScreenElementRoot;J)V

    invoke-virtual {p0, v0}, Lcom/miui/maml/ScreenElementRoot;->postRunnableAtFrontOfQueue(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 366
    iput-boolean v0, p0, Lcom/miui/maml/ScreenElementRoot;->mNeedReset:Z

    .line 367
    iget-object v1, p0, Lcom/miui/maml/ScreenElementRoot;->mController:Lcom/miui/maml/RendererController;

    invoke-virtual {v1, v0}, Lcom/miui/maml/RendererController;->setNeedReset(Z)V

    .line 369
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/ScreenElementRoot;->doTick(J)V

    return-void
.end method

.method public update(J)J
    .locals 7

    .line 1558
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-wide v1, 0x7fffffffffffffffL

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    .line 1560
    iget-object v4, p0, Lcom/miui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/maml/RendererController;

    .line 1561
    invoke-virtual {v4}, Lcom/miui/maml/RendererController;->isSelfPaused()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/miui/maml/RendererController;->hasRunnable()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 1564
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

    .line 1539
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-wide v1, 0x7fffffffffffffffL

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    .line 1541
    iget-object v4, p0, Lcom/miui/maml/ScreenElementRoot;->mRendererControllers:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/maml/RendererController;

    .line 1542
    invoke-virtual {v4}, Lcom/miui/maml/RendererController;->isSelfPaused()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/miui/maml/RendererController;->hasRunnable()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 1545
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
    .locals 0

    .line 1749
    iget p0, p0, Lcom/miui/maml/ScreenElementRoot;->mVersion:I

    return p0
.end method
