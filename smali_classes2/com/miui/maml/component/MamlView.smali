.class public Lcom/miui/maml/component/MamlView;
.super Landroid/widget/FrameLayout;
.source "MamlView.java"

# interfaces
.implements Lcom/miui/maml/RendererController$IRenderable;
.implements Lcom/miui/maml/util/MamlViewManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/component/MamlView$OnExternCommandListener;,
        Lcom/miui/maml/component/MamlView$InnerView;,
        Lcom/miui/maml/component/MamlView$Config;
    }
.end annotation


# static fields
.field private static final BLUR_VAR_NAME:Ljava/lang/String; = "__blur_ratio"

.field public static final MODE_ASSETS_FOLDER:I = 0x2

.field public static final MODE_FOLDER:I = 0x3

.field public static final MODE_ZIP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MamlView"

.field private static final VERSION:Ljava/lang/String; = "1.0.0"

.field private static final VERSION_CODE:I = 0x1


# instance fields
.field private isAttachedFromWindow:Z

.field private mAutoFinishRoot:Z

.field private mAutoRemoveCache:Z

.field private mCanvasParamsChanged:Z

.field private final mCommandListener:Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;

.field private mExternCommandListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/maml/component/MamlView$OnExternCommandListener;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mFinished:Z

.field private mHasDelay:Z

.field private mLastBlurRatio:I

.field private mLp:Landroid/view/WindowManager$LayoutParams;

.field private mMamlAccessHelper:Lcom/miui/maml/util/MamlAccessHelper;

.field protected mNeedDisallowInterceptTouchEvent:Z

.field private mPivotX:I

.field private mPivotY:I

.field protected mRoot:Lcom/miui/maml/ScreenElementRoot;

.field private mScale:F

.field private mView:Lcom/miui/maml/component/MamlView$InnerView;

.field private mWindowManager:Landroid/view/WindowManager;

.field private mX:F

.field private mY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 94
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 67
    iput-boolean v0, p0, Lcom/miui/maml/component/MamlView;->mAutoFinishRoot:Z

    .line 80
    new-instance v1, Lcom/miui/maml/component/MamlView$1;

    invoke-direct {v1, p0}, Lcom/miui/maml/component/MamlView$1;-><init>(Lcom/miui/maml/component/MamlView;)V

    iput-object v1, p0, Lcom/miui/maml/component/MamlView;->mCommandListener:Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;

    .line 95
    invoke-virtual {p0}, Lcom/miui/maml/component/MamlView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/miui/maml/R$styleable;->MamlView:[I

    invoke-virtual {v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 96
    sget v1, Lcom/miui/maml/R$styleable;->MamlView_path:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 97
    sget v2, Lcom/miui/maml/R$styleable;->MamlView_innerPath:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 98
    sget v3, Lcom/miui/maml/R$styleable;->MamlView_resMode:I

    const/4 v4, 0x2

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 99
    sget v4, Lcom/miui/maml/R$styleable;->MamlView_autoRemoveCache:I

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 100
    sget v5, Lcom/miui/maml/R$styleable;->MamlView_touchable:I

    invoke-virtual {p2, v5, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 101
    invoke-direct {p0, p1, v1, v2, v3}, Lcom/miui/maml/component/MamlView;->getResourceLoader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lcom/miui/maml/ResourceLoader;

    move-result-object v0

    invoke-direct {p0, p1, v0, v4}, Lcom/miui/maml/component/MamlView;->load(Landroid/content/Context;Lcom/miui/maml/ResourceLoader;Z)V

    .line 102
    invoke-virtual {p0, p2}, Lcom/miui/maml/component/MamlView;->setTouchable(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 129
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/miui/maml/component/MamlView;-><init>(Landroid/content/Context;Lcom/miui/maml/ScreenElementRoot;J)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/maml/ScreenElementRoot;J)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 134
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p3, 0x1

    .line 67
    iput-boolean p3, p0, Lcom/miui/maml/component/MamlView;->mAutoFinishRoot:Z

    .line 80
    new-instance p3, Lcom/miui/maml/component/MamlView$1;

    invoke-direct {p3, p0}, Lcom/miui/maml/component/MamlView$1;-><init>(Lcom/miui/maml/component/MamlView;)V

    iput-object p3, p0, Lcom/miui/maml/component/MamlView;->mCommandListener:Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;

    .line 135
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/component/MamlView;->initMamlview(Landroid/content/Context;Lcom/miui/maml/ScreenElementRoot;)V

    const/4 p1, 0x0

    .line 137
    iput-boolean p1, p0, Lcom/miui/maml/component/MamlView;->mAutoFinishRoot:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/maml/component/MamlView$Config;)V
    .locals 3

    .line 124
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 67
    iput-boolean v0, p0, Lcom/miui/maml/component/MamlView;->mAutoFinishRoot:Z

    .line 80
    new-instance v0, Lcom/miui/maml/component/MamlView$1;

    invoke-direct {v0, p0}, Lcom/miui/maml/component/MamlView$1;-><init>(Lcom/miui/maml/component/MamlView;)V

    iput-object v0, p0, Lcom/miui/maml/component/MamlView;->mCommandListener:Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;

    .line 125
    iget-object v0, p2, Lcom/miui/maml/component/MamlView$Config;->path:Ljava/lang/String;

    iget-object v1, p2, Lcom/miui/maml/component/MamlView$Config;->innerPath:Ljava/lang/String;

    iget v2, p2, Lcom/miui/maml/component/MamlView$Config;->mode:I

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/miui/maml/component/MamlView;->getResourceLoader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lcom/miui/maml/ResourceLoader;

    move-result-object v0

    iget-boolean v1, p2, Lcom/miui/maml/component/MamlView$Config;->autoRemoveCache:Z

    iget p2, p2, Lcom/miui/maml/component/MamlView$Config;->resizeScale:F

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/miui/maml/component/MamlView;->load(Landroid/content/Context;Lcom/miui/maml/ResourceLoader;ZF)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 106
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/miui/maml/component/MamlView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IZ)V
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    .line 110
    invoke-direct/range {v0 .. v5}, Lcom/miui/maml/component/MamlView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 114
    invoke-direct/range {v0 .. v5}, Lcom/miui/maml/component/MamlView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 1

    .line 119
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 67
    iput-boolean v0, p0, Lcom/miui/maml/component/MamlView;->mAutoFinishRoot:Z

    .line 80
    new-instance v0, Lcom/miui/maml/component/MamlView$1;

    invoke-direct {v0, p0}, Lcom/miui/maml/component/MamlView$1;-><init>(Lcom/miui/maml/component/MamlView;)V

    iput-object v0, p0, Lcom/miui/maml/component/MamlView;->mCommandListener:Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;

    .line 120
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/maml/component/MamlView;->getResourceLoader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lcom/miui/maml/ResourceLoader;

    move-result-object p2

    invoke-direct {p0, p1, p2, p5}, Lcom/miui/maml/component/MamlView;->load(Landroid/content/Context;Lcom/miui/maml/ResourceLoader;Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/maml/component/MamlView;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/miui/maml/component/MamlView;->mExternCommandListener:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/maml/component/MamlView;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/miui/maml/component/MamlView;->mCanvasParamsChanged:Z

    return p0
.end method

.method static synthetic access$200(Lcom/miui/maml/component/MamlView;)F
    .locals 0

    .line 43
    iget p0, p0, Lcom/miui/maml/component/MamlView;->mX:F

    return p0
.end method

.method static synthetic access$300(Lcom/miui/maml/component/MamlView;)F
    .locals 0

    .line 43
    iget p0, p0, Lcom/miui/maml/component/MamlView;->mY:F

    return p0
.end method

.method static synthetic access$400(Lcom/miui/maml/component/MamlView;)F
    .locals 0

    .line 43
    iget p0, p0, Lcom/miui/maml/component/MamlView;->mScale:F

    return p0
.end method

.method static synthetic access$500(Lcom/miui/maml/component/MamlView;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/miui/maml/component/MamlView;->mPivotX:I

    return p0
.end method

.method static synthetic access$600(Lcom/miui/maml/component/MamlView;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/miui/maml/component/MamlView;->mPivotY:I

    return p0
.end method

.method private blurBackground()V
    .locals 3

    .line 467
    :try_start_0
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->isMamlBlurWindow()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mLp:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v0

    const-string v1, "__blur_ratio"

    invoke-virtual {v0, v1}, Lcom/miui/maml/data/Variables;->existsDouble(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 468
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v0

    const-string v1, "__blur_ratio"

    invoke-virtual {v0, v1}, Lcom/miui/maml/data/Variables;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-int v0, v0

    const/16 v1, 0x64

    if-gez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    if-le v0, v1, :cond_1

    move v0, v1

    .line 474
    :cond_1
    :goto_0
    iget v1, p0, Lcom/miui/maml/component/MamlView;->mLastBlurRatio:I

    if-eq v0, v1, :cond_3

    .line 475
    iput v0, p0, Lcom/miui/maml/component/MamlView;->mLastBlurRatio:I

    if-nez v0, :cond_2

    .line 477
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_1

    .line 479
    :cond_2
    iget-object v1, p0, Lcom/miui/maml/component/MamlView;->mLp:Landroid/view/WindowManager$LayoutParams;

    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v0, v2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v0, v2

    invoke-static {v1, v0}, Lcom/miui/maml/util/HideSdkDependencyUtils;->WindowManager_LayoutParams_setLayoutParamsBlurRatio(Landroid/view/WindowManager$LayoutParams;F)V

    .line 480
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 482
    :goto_1
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/miui/maml/component/MamlView;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 486
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_2
    return-void
.end method

.method private finish()V
    .locals 2

    .line 679
    iget-boolean v0, p0, Lcom/miui/maml/component/MamlView;->mFinished:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/maml/component/MamlView;->mAutoFinishRoot:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 680
    iput-boolean v0, p0, Lcom/miui/maml/component/MamlView;->mFinished:Z

    const/4 v0, 0x0

    .line 681
    invoke-virtual {p0, v0}, Lcom/miui/maml/component/MamlView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 682
    iget-object v1, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz v1, :cond_1

    .line 683
    invoke-virtual {v1}, Lcom/miui/maml/ScreenElementRoot;->selfFinish()V

    .line 684
    iget-object v1, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lcom/miui/maml/ScreenElementRoot;->detachFromVsync()V

    .line 685
    iget-object v1, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lcom/miui/maml/ScreenElementRoot;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/maml/data/Variables;->reset()V

    .line 686
    invoke-direct {p0}, Lcom/miui/maml/component/MamlView;->removeAccessHelperRef()V

    .line 687
    iget-boolean v1, p0, Lcom/miui/maml/component/MamlView;->mAutoRemoveCache:Z

    if-eqz v1, :cond_0

    .line 688
    invoke-virtual {p0}, Lcom/miui/maml/component/MamlView;->removeRelatedBitmapsRef()V

    .line 690
    :cond_0
    iput-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    :cond_1
    return-void
.end method

.method private getResourceLoader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lcom/miui/maml/ResourceLoader;
    .locals 2

    .line 151
    invoke-static {p2}, Lcom/miui/maml/util/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    packed-switch p4, :pswitch_data_0

    return-object v1

    .line 158
    :pswitch_0
    new-instance p1, Lcom/miui/maml/util/FolderResourceLoader;

    invoke-direct {p1, p2}, Lcom/miui/maml/util/FolderResourceLoader;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 160
    :pswitch_1
    new-instance p3, Lcom/miui/maml/util/AssetsResourceLoader;

    invoke-direct {p3, p1, p2}, Lcom/miui/maml/util/AssetsResourceLoader;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object p3

    .line 156
    :pswitch_2
    new-instance p1, Lcom/miui/maml/util/ZipResourceLoader;

    invoke-direct {p1, p2, p3}, Lcom/miui/maml/util/ZipResourceLoader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initMamlview(Landroid/content/Context;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 1

    const/4 v0, 0x1

    .line 195
    invoke-virtual {p0, v0}, Lcom/miui/maml/component/MamlView;->setClickable(Z)V

    .line 196
    invoke-virtual {p0, v0}, Lcom/miui/maml/component/MamlView;->setFocusable(Z)V

    .line 197
    invoke-virtual {p0, v0}, Lcom/miui/maml/component/MamlView;->setFocusableInTouchMode(Z)V

    if-eqz p2, :cond_1

    const-string v0, "window"

    .line 201
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/miui/maml/component/MamlView;->mWindowManager:Landroid/view/WindowManager;

    .line 202
    new-instance v0, Lcom/miui/maml/component/MamlView$InnerView;

    invoke-direct {v0, p0, p1}, Lcom/miui/maml/component/MamlView$InnerView;-><init>(Lcom/miui/maml/component/MamlView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/maml/component/MamlView;->mView:Lcom/miui/maml/component/MamlView$InnerView;

    .line 203
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 206
    invoke-virtual {p0}, Lcom/miui/maml/component/MamlView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 207
    invoke-virtual {p0}, Lcom/miui/maml/component/MamlView;->removeAllViews()V

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mView:Lcom/miui/maml/component/MamlView$InnerView;

    invoke-virtual {p0, v0, p1}, Lcom/miui/maml/component/MamlView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 210
    iput-object p2, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 211
    iget-object p1, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {p1, p0}, Lcom/miui/maml/ScreenElementRoot;->setViewManager(Lcom/miui/maml/util/MamlViewManager;)V

    .line 212
    iget-object p1, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    new-instance p2, Lcom/miui/maml/component/MamlView$2;

    invoke-direct {p2, p0}, Lcom/miui/maml/component/MamlView$2;-><init>(Lcom/miui/maml/component/MamlView;)V

    invoke-virtual {p1, p2}, Lcom/miui/maml/ScreenElementRoot;->setOnHoverChangeListener(Lcom/miui/maml/ScreenElementRoot$OnHoverChangeListener;)V

    .line 219
    invoke-virtual {p0}, Lcom/miui/maml/component/MamlView;->init()V

    return-void

    .line 199
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public static synthetic lambda$i5HJZ991JJQcAzAFwV9NnBX2vMw(Lcom/miui/maml/component/MamlView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/maml/component/MamlView;->finish()V

    return-void
.end method

.method public static synthetic lambda$load$0(Lcom/miui/maml/component/MamlView;Landroid/content/Context;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 0

    .line 183
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/component/MamlView;->initMamlview(Landroid/content/Context;Lcom/miui/maml/ScreenElementRoot;)V

    .line 184
    iget-boolean p1, p0, Lcom/miui/maml/component/MamlView;->isAttachedFromWindow:Z

    if-eqz p1, :cond_0

    .line 185
    invoke-virtual {p2}, Lcom/miui/maml/ScreenElementRoot;->selfResume()V

    const-string p1, "resume"

    .line 186
    invoke-virtual {p0, p1}, Lcom/miui/maml/component/MamlView;->sendCommand(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$load$1(Lcom/miui/maml/component/MamlView;Lcom/miui/maml/ScreenElementRoot;Landroid/content/Context;)V
    .locals 1

    .line 179
    invoke-virtual {p1}, Lcom/miui/maml/ScreenElementRoot;->load()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 180
    invoke-virtual {p1, v0}, Lcom/miui/maml/ScreenElementRoot;->setKeepResource(Z)V

    .line 182
    new-instance v0, Lcom/miui/maml/component/-$$Lambda$MamlView$Uc0MUIiy0Vf72Lvpm8Hig3rnGag;

    invoke-direct {v0, p0, p2, p1}, Lcom/miui/maml/component/-$$Lambda$MamlView$Uc0MUIiy0Vf72Lvpm8Hig3rnGag;-><init>(Lcom/miui/maml/component/MamlView;Landroid/content/Context;Lcom/miui/maml/ScreenElementRoot;)V

    invoke-virtual {p0, v0}, Lcom/miui/maml/component/MamlView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public static synthetic lambda$setPathThenVisible$2(Lcom/miui/maml/component/MamlView;)V
    .locals 1

    const/4 v0, 0x0

    .line 374
    invoke-virtual {p0, v0}, Lcom/miui/maml/component/MamlView;->setVisibility(I)V

    return-void
.end method

.method private load(Landroid/content/Context;Lcom/miui/maml/ResourceLoader;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 167
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/maml/component/MamlView;->load(Landroid/content/Context;Lcom/miui/maml/ResourceLoader;ZF)V

    return-void
.end method

.method private load(Landroid/content/Context;Lcom/miui/maml/ResourceLoader;ZF)V
    .locals 2

    .line 171
    iput-boolean p3, p0, Lcom/miui/maml/component/MamlView;->mAutoRemoveCache:Z

    if-eqz p2, :cond_0

    .line 173
    new-instance p3, Lcom/miui/maml/ResourceManager;

    invoke-direct {p3, p2}, Lcom/miui/maml/ResourceManager;-><init>(Lcom/miui/maml/ResourceLoader;)V

    .line 174
    new-instance p2, Lcom/miui/maml/ScreenElementRoot;

    new-instance v0, Lcom/miui/maml/ScreenContext;

    .line 175
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lcom/miui/maml/ScreenContext;-><init>(Landroid/content/Context;Lcom/miui/maml/ResourceManager;)V

    invoke-direct {p2, v0}, Lcom/miui/maml/ScreenElementRoot;-><init>(Lcom/miui/maml/ScreenContext;)V

    .line 177
    invoke-virtual {p2, p4}, Lcom/miui/maml/ScreenElementRoot;->setResizeRadio(F)V

    .line 178
    invoke-static {}, Lcom/miui/maml/util/ExecutorHelper;->getLocalTaskExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object p3

    new-instance p4, Lcom/miui/maml/component/-$$Lambda$MamlView$iV60I_o_1hOlpz8PU_uNssSQLgk;

    invoke-direct {p4, p0, p2, p1}, Lcom/miui/maml/component/-$$Lambda$MamlView$iV60I_o_1hOlpz8PU_uNssSQLgk;-><init>(Lcom/miui/maml/component/MamlView;Lcom/miui/maml/ScreenElementRoot;Landroid/content/Context;)V

    invoke-virtual {p3, p4}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private removeAccessHelperRef()V
    .locals 2

    .line 696
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/maml/ScreenElementRoot;->setMamlAccessHelper(Lcom/miui/maml/util/MamlAccessHelper;)V

    .line 697
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mMamlAccessHelper:Lcom/miui/maml/util/MamlAccessHelper;

    if-eqz v0, :cond_0

    .line 698
    invoke-virtual {v0}, Lcom/miui/maml/util/MamlAccessHelper;->removeRoot()V

    :cond_0
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 302
    invoke-virtual {p0, v0}, Lcom/miui/maml/component/MamlView;->cleanUp(Z)V

    return-void
.end method

.method public cleanUp(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 308
    invoke-virtual {p0, v0}, Lcom/miui/maml/component/MamlView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 309
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz v0, :cond_1

    .line 310
    invoke-virtual {v0, p1}, Lcom/miui/maml/ScreenElementRoot;->setKeepResource(Z)V

    .line 311
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->selfFinish()V

    if-nez p1, :cond_0

    .line 313
    invoke-virtual {p0}, Lcom/miui/maml/component/MamlView;->removeRelatedBitmapsRef()V

    .line 315
    :cond_0
    invoke-static {}, Lcom/miui/maml/util/Utils;->triggerGC()V

    :cond_1
    return-void
.end method

.method public clearBitmapCache()V
    .locals 1

    .line 612
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz v0, :cond_0

    .line 613
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    invoke-static {}, Lcom/miui/maml/ResourceManager;->clear()V

    :cond_0
    return-void
.end method

.method public disableCutRoundCorner()Z
    .locals 1

    .line 597
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->isDisableCutRoundCorner()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mMamlAccessHelper:Lcom/miui/maml/util/MamlAccessHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/miui/maml/util/MamlAccessHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 239
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public doRender()V
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mView:Lcom/miui/maml/component/MamlView$InnerView;

    invoke-virtual {v0}, Lcom/miui/maml/component/MamlView$InnerView;->postInvalidate()V

    .line 245
    invoke-direct {p0}, Lcom/miui/maml/component/MamlView;->blurBackground()V

    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 589
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 590
    iget-boolean v1, p0, Lcom/miui/maml/component/MamlView;->mFinished:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 591
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/maml/component/-$$Lambda$MamlView$i5HJZ991JJQcAzAFwV9NnBX2vMw;

    invoke-direct {v1, p0}, Lcom/miui/maml/component/-$$Lambda$MamlView$i5HJZ991JJQcAzAFwV9NnBX2vMw;-><init>(Lcom/miui/maml/component/MamlView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 593
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getMamlVersionCode()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getMamlVersionName()Ljava/lang/String;
    .locals 1

    const-string v0, "1.0.0"

    return-object v0
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz v0, :cond_0

    .line 330
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getHeight()F

    move-result v0

    float-to-int v0, v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz v0, :cond_0

    .line 322
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getWidth()F

    move-result v0

    float-to-int v0, v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getVariableNumber(Ljava/lang/String;)D
    .locals 2

    .line 551
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz v0, :cond_0

    .line 552
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/maml/util/Utils;->getVariableNumber(Ljava/lang/String;Lcom/miui/maml/data/Variables;)D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getVariableString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 558
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz v0, :cond_0

    .line 559
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/maml/util/Utils;->getVariableString(Ljava/lang/String;Lcom/miui/maml/data/Variables;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getViewContext()Landroid/content/Context;
    .locals 1

    .line 224
    invoke-virtual {p0}, Lcom/miui/maml/component/MamlView;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getViewLocationOnScreen()Landroid/graphics/Rect;
    .locals 7

    const/4 v0, 0x2

    .line 229
    new-array v0, v0, [I

    .line 230
    invoke-virtual {p0, v0}, Lcom/miui/maml/component/MamlView;->getLocationOnScreen([I)V

    .line 231
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    aget v3, v0, v2

    const/4 v4, 0x1

    aget v5, v0, v4

    aget v2, v0, v2

    invoke-virtual {p0}, Lcom/miui/maml/component/MamlView;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v2, v6

    aget v0, v0, v4

    invoke-virtual {p0}, Lcom/miui/maml/component/MamlView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v0, v4

    invoke-direct {v1, v3, v5, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method public init()V
    .locals 2

    .line 286
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz v0, :cond_0

    .line 287
    invoke-virtual {p0}, Lcom/miui/maml/component/MamlView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/maml/ScreenElementRoot;->setConfiguration(Landroid/content/res/Configuration;)V

    .line 288
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    iget-object v1, p0, Lcom/miui/maml/component/MamlView;->mCommandListener:Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;

    invoke-virtual {v0, v1}, Lcom/miui/maml/ScreenElementRoot;->setMamlViewOnExternCommandListener(Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;)V

    .line 289
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0, p0}, Lcom/miui/maml/ScreenElementRoot;->setRenderControllerRenderable(Lcom/miui/maml/RendererController$IRenderable;)V

    .line 290
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->attachToVsync()V

    .line 291
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->selfInit()V

    .line 293
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 294
    new-instance v0, Lcom/miui/maml/util/MamlAccessHelper;

    iget-object v1, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-direct {v0, v1, p0}, Lcom/miui/maml/util/MamlAccessHelper;-><init>(Lcom/miui/maml/ScreenElementRoot;Landroid/view/View;)V

    iput-object v0, p0, Lcom/miui/maml/component/MamlView;->mMamlAccessHelper:Lcom/miui/maml/util/MamlAccessHelper;

    .line 295
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mMamlAccessHelper:Lcom/miui/maml/util/MamlAccessHelper;

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    :cond_0
    return-void
.end method

.method public isLoaded()Z
    .locals 1

    .line 576
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 379
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 380
    iput-boolean v0, p0, Lcom/miui/maml/component/MamlView;->isAttachedFromWindow:Z

    .line 381
    invoke-virtual {p0}, Lcom/miui/maml/component/MamlView;->onResume()V

    return-void
.end method

.method public onCommand(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 505
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz v0, :cond_0

    .line 506
    invoke-virtual {v0, p1}, Lcom/miui/maml/ScreenElementRoot;->onCommand(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 454
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 455
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz v0, :cond_0

    .line 456
    invoke-virtual {v0, p1}, Lcom/miui/maml/ScreenElementRoot;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onDestory()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 492
    invoke-virtual {p0}, Lcom/miui/maml/component/MamlView;->onDestroy()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "MamlView"

    const-string v1, "onDestroy"

    .line 496
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    invoke-direct {p0}, Lcom/miui/maml/component/MamlView;->finish()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 386
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 387
    iput-boolean v0, p0, Lcom/miui/maml/component/MamlView;->isAttachedFromWindow:Z

    .line 388
    invoke-virtual {p0}, Lcom/miui/maml/component/MamlView;->onPause()V

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 362
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz v0, :cond_0

    .line 363
    invoke-virtual {v0, p1}, Lcom/miui/maml/ScreenElementRoot;->onHover(Landroid/view/MotionEvent;)Z

    .line 365
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    .line 276
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz v0, :cond_0

    const-string v1, "accessibilityText"

    .line 277
    invoke-virtual {v0, v1}, Lcom/miui/maml/ScreenElementRoot;->getRawAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 278
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 280
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .line 407
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 409
    iget-object p1, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz p1, :cond_1

    .line 410
    invoke-virtual {p1}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object p1

    iget-object p1, p1, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    const-string v0, "view_width"

    sub-int/2addr p4, p2

    int-to-float p4, p4

    .line 411
    iget-object v1, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lcom/miui/maml/ScreenElementRoot;->getScale()F

    move-result v1

    div-float/2addr p4, v1

    float-to-double v1, p4

    invoke-virtual {p1, v0, v1, v2}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    const-string p4, "view_height"

    sub-int/2addr p5, p3

    int-to-float p5, p5

    .line 412
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getScale()F

    move-result v0

    div-float/2addr p5, v0

    float-to-double v0, p5

    invoke-virtual {p1, p4, v0, v1}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 416
    invoke-virtual {p0}, Lcom/miui/maml/component/MamlView;->getParent()Landroid/view/ViewParent;

    move-result-object p4

    .line 417
    :goto_0
    instance-of p5, p4, Landroid/view/View;

    if-eqz p5, :cond_0

    .line 418
    check-cast p4, Landroid/view/View;

    .line 419
    invoke-virtual {p4}, Landroid/view/View;->getLeft()I

    move-result p5

    invoke-virtual {p4}, Landroid/view/View;->getScrollX()I

    move-result v0

    sub-int/2addr p5, v0

    add-int/2addr p2, p5

    .line 420
    invoke-virtual {p4}, Landroid/view/View;->getTop()I

    move-result p5

    invoke-virtual {p4}, Landroid/view/View;->getScrollY()I

    move-result v0

    sub-int/2addr p5, v0

    add-int/2addr p3, p5

    .line 421
    invoke-virtual {p4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p4

    goto :goto_0

    :cond_0
    const-string p4, "view_x"

    int-to-float p2, p2

    .line 424
    iget-object p5, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {p5}, Lcom/miui/maml/ScreenElementRoot;->getScale()F

    move-result p5

    div-float/2addr p2, p5

    float-to-double v0, p2

    invoke-virtual {p1, p4, v0, v1}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    const-string p2, "view_y"

    int-to-float p3, p3

    .line 425
    iget-object p4, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {p4}, Lcom/miui/maml/ScreenElementRoot;->getScale()F

    move-result p4

    div-float/2addr p3, p4

    float-to-double p3, p3

    invoke-virtual {p1, p2, p3, p4}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 427
    iget-object p1, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {p1}, Lcom/miui/maml/ScreenElementRoot;->requestUpdate()V

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 656
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 659
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 660
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 661
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 662
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 663
    iget-object v2, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/miui/maml/ScreenElementRoot;->getWidth()F

    move-result v2

    float-to-int v2, v2

    goto :goto_0

    :cond_0
    move v2, v3

    .line 664
    :goto_0
    iget-object v4, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/miui/maml/ScreenElementRoot;->getHeight()F

    move-result v3

    float-to-int v3, v3

    :cond_1
    const/high16 v4, -0x80000000

    if-ne v0, v4, :cond_2

    if-lez v2, :cond_2

    .line 666
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    :cond_2
    if-ne v1, v4, :cond_3

    if-lez v3, :cond_3

    .line 671
    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 675
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/component/MamlView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onPause()V
    .locals 2

    const-string v0, "MamlView"

    const-string v1, "onPause"

    .line 392
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz v0, :cond_0

    .line 394
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->selfPause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    const-string v0, "MamlView"

    const-string v1, "onResume"

    .line 399
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz v0, :cond_0

    .line 401
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->selfResume()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 348
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 349
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->needDisallowInterceptTouchEvent()Z

    move-result v0

    .line 350
    iget-boolean v2, p0, Lcom/miui/maml/component/MamlView;->mNeedDisallowInterceptTouchEvent:Z

    if-eq v2, v0, :cond_0

    .line 351
    invoke-virtual {p0}, Lcom/miui/maml/component/MamlView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 352
    iput-boolean v0, p0, Lcom/miui/maml/component/MamlView;->mNeedDisallowInterceptTouchEvent:Z

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0, p1}, Lcom/miui/maml/ScreenElementRoot;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-nez v0, :cond_2

    .line 357
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public putVariableNumber(Ljava/lang/String;D)V
    .locals 1

    const/4 v0, 0x0

    .line 531
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/miui/maml/component/MamlView;->putVariableNumber(Ljava/lang/String;DI)V

    return-void
.end method

.method public putVariableNumber(Ljava/lang/String;DI)V
    .locals 1

    .line 535
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz v0, :cond_0

    .line 536
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;DI)V

    :cond_0
    return-void
.end method

.method public putVariableObject(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 541
    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/maml/component/MamlView;->putVariableObject(Ljava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method public putVariableObject(Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 1

    .line 545
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz v0, :cond_0

    .line 546
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method public putVariableString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 521
    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/maml/component/MamlView;->putVariableString(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putVariableString(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 525
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz v0, :cond_0

    .line 526
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method public removeRelatedBitmapsRef()V
    .locals 1

    .line 619
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz v0, :cond_0

    .line 620
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    invoke-virtual {v0}, Lcom/miui/maml/ResourceManager;->clearByKeys()V

    :cond_0
    return-void
.end method

.method public requestUpdate()V
    .locals 1

    .line 637
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz v0, :cond_0

    .line 638
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->requestUpdate()V

    :cond_0
    return-void
.end method

.method public sendCommand(Ljava/lang/String;)V
    .locals 1

    .line 511
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz v0, :cond_0

    .line 512
    invoke-virtual {v0, p1}, Lcom/miui/maml/ScreenElementRoot;->onCommand(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setAutoDarkenWallpaper(Z)V
    .locals 1

    .line 631
    iget-object p1, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 632
    invoke-virtual {p1, v0}, Lcom/miui/maml/ScreenElementRoot;->setAutoDarkenWallpaper(Z)V

    :cond_0
    return-void
.end method

.method public setAutoFinishRoot(Z)V
    .locals 0

    .line 580
    iput-boolean p1, p0, Lcom/miui/maml/component/MamlView;->mAutoFinishRoot:Z

    return-void
.end method

.method public setCacheSize(I)V
    .locals 1

    .line 605
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz v0, :cond_0

    .line 606
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    invoke-virtual {v0, p1}, Lcom/miui/maml/ResourceManager;->setCacheSize(I)V

    :cond_0
    return-void
.end method

.method public final setKeepResource(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 566
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz v0, :cond_0

    .line 567
    invoke-virtual {v0, p1}, Lcom/miui/maml/ScreenElementRoot;->setKeepResource(Z)V

    :cond_0
    return-void
.end method

.method public setOnExternCommandListener(Lcom/miui/maml/component/MamlView$OnExternCommandListener;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 517
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/miui/maml/component/MamlView;->mExternCommandListener:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 4

    .line 369
    invoke-virtual {p0}, Lcom/miui/maml/component/MamlView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/maml/component/MamlView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v1, p1, v2, v3}, Lcom/miui/maml/component/MamlView;->getResourceLoader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lcom/miui/maml/ResourceLoader;

    move-result-object p1

    iget-boolean v1, p0, Lcom/miui/maml/component/MamlView;->mAutoRemoveCache:Z

    invoke-direct {p0, v0, p1, v1}, Lcom/miui/maml/component/MamlView;->load(Landroid/content/Context;Lcom/miui/maml/ResourceLoader;Z)V

    return-void
.end method

.method public setPathThenVisible(Ljava/lang/String;)V
    .locals 0

    .line 373
    invoke-virtual {p0, p1}, Lcom/miui/maml/component/MamlView;->setPath(Ljava/lang/String;)V

    .line 374
    new-instance p1, Lcom/miui/maml/component/-$$Lambda$MamlView$4_eQZLVeDqKKGncQue9rbApdZu8;

    invoke-direct {p1, p0}, Lcom/miui/maml/component/-$$Lambda$MamlView$4_eQZLVeDqKKGncQue9rbApdZu8;-><init>(Lcom/miui/maml/component/MamlView;)V

    invoke-virtual {p0, p1}, Lcom/miui/maml/component/MamlView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setSaveConfigOnlyInPause(Z)V
    .locals 1

    .line 649
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz v0, :cond_0

    .line 650
    invoke-virtual {v0, p1}, Lcom/miui/maml/ScreenElementRoot;->setSaveConfigViaProvider(Z)V

    :cond_0
    return-void
.end method

.method public setSaveConfigViaProvider(Z)V
    .locals 1

    .line 643
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz v0, :cond_0

    .line 644
    invoke-virtual {v0, p1}, Lcom/miui/maml/ScreenElementRoot;->setSaveConfigViaProvider(Z)V

    :cond_0
    return-void
.end method

.method public setScale(FII)V
    .locals 0

    .line 434
    iput p1, p0, Lcom/miui/maml/component/MamlView;->mScale:F

    .line 435
    iput p2, p0, Lcom/miui/maml/component/MamlView;->mPivotX:I

    .line 436
    iput p3, p0, Lcom/miui/maml/component/MamlView;->mPivotY:I

    const/4 p1, 0x1

    .line 437
    iput-boolean p1, p0, Lcom/miui/maml/component/MamlView;->mCanvasParamsChanged:Z

    .line 438
    iget-object p1, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz p1, :cond_0

    .line 439
    invoke-virtual {p1}, Lcom/miui/maml/ScreenElementRoot;->requestUpdate()V

    :cond_0
    return-void
.end method

.method public setTouchable(Z)V
    .locals 1

    .line 625
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz v0, :cond_0

    .line 626
    invoke-virtual {v0, p1}, Lcom/miui/maml/ScreenElementRoot;->setTouchable(Z)V

    :cond_0
    return-void
.end method

.method public setTranslate(FF)V
    .locals 0

    .line 444
    iput p1, p0, Lcom/miui/maml/component/MamlView;->mX:F

    .line 445
    iput p2, p0, Lcom/miui/maml/component/MamlView;->mY:F

    const/4 p1, 0x1

    .line 446
    iput-boolean p1, p0, Lcom/miui/maml/component/MamlView;->mCanvasParamsChanged:Z

    .line 447
    iget-object p1, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz p1, :cond_0

    .line 448
    invoke-virtual {p1}, Lcom/miui/maml/ScreenElementRoot;->requestUpdate()V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 337
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-nez p1, :cond_0

    .line 339
    invoke-virtual {p0}, Lcom/miui/maml/component/MamlView;->onResume()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    .line 341
    :cond_1
    invoke-virtual {p0}, Lcom/miui/maml/component/MamlView;->onPause()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setWindowLayoutParams(Landroid/view/WindowManager$LayoutParams;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 462
    iput-object p1, p0, Lcom/miui/maml/component/MamlView;->mLp:Landroid/view/WindowManager$LayoutParams;

    return-void
.end method
