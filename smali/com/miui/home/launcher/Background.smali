.class public Lcom/miui/home/launcher/Background;
.super Landroid/view/View;
.source "Background.java"

# interfaces
.implements Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;
.implements Lcom/miui/home/launcher/interfaces/EventBusHandlerHolder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/Background$LongClickHandler;
    }
.end annotation


# instance fields
.field private mLoadingFinishMessageHandler:Lcom/miui/home/launcher/common/messages/LoadingFinishMessageHandler;

.field private mLongClickHandler:Lcom/miui/home/launcher/Background$LongClickHandler;

.field private mShowUninstallBgColor:Z

.field private mSpeardCircelAlphaInAnimator:Landroid/animation/ValueAnimator;

.field private mSpeardCircelAlphaOutAnimator:Landroid/animation/ValueAnimator;

.field private mSpreadCircle:Lcom/miui/home/launcher/animate/SpreadCircle;

.field private mSpreadCircleBlackColor:I

.field private mSpreadCircleWhiteColor:I

.field private mTouchRawX:F

.field private mTouchRawY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    new-instance p1, Lcom/miui/home/launcher/animate/SpreadCircle;

    invoke-direct {p1}, Lcom/miui/home/launcher/animate/SpreadCircle;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/Background;->mSpreadCircle:Lcom/miui/home/launcher/animate/SpreadCircle;

    const/4 p1, 0x0

    .line 30
    iput-boolean p1, p0, Lcom/miui/home/launcher/Background;->mShowUninstallBgColor:Z

    .line 34
    new-instance p1, Landroid/animation/ValueAnimator;

    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/Background;->mSpeardCircelAlphaInAnimator:Landroid/animation/ValueAnimator;

    .line 35
    new-instance p1, Landroid/animation/ValueAnimator;

    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/Background;->mSpeardCircelAlphaOutAnimator:Landroid/animation/ValueAnimator;

    .line 96
    new-instance p1, Lcom/miui/home/launcher/Background$LongClickHandler;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/miui/home/launcher/Background$LongClickHandler;-><init>(Lcom/miui/home/launcher/Background;Lcom/miui/home/launcher/Background$1;)V

    iput-object p1, p0, Lcom/miui/home/launcher/Background;->mLongClickHandler:Lcom/miui/home/launcher/Background$LongClickHandler;

    .line 135
    new-instance p1, Lcom/miui/home/launcher/Background$1;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/Background$1;-><init>(Lcom/miui/home/launcher/Background;)V

    iput-object p1, p0, Lcom/miui/home/launcher/Background;->mLoadingFinishMessageHandler:Lcom/miui/home/launcher/common/messages/LoadingFinishMessageHandler;

    return-void
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/Background;)Lcom/miui/home/launcher/animate/SpreadCircle;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/miui/home/launcher/Background;->mSpreadCircle:Lcom/miui/home/launcher/animate/SpreadCircle;

    return-object p0
.end method

.method static synthetic access$202(Lcom/miui/home/launcher/Background;I)I
    .locals 0

    .line 26
    iput p1, p0, Lcom/miui/home/launcher/Background;->mSpreadCircleWhiteColor:I

    return p1
.end method

.method static synthetic access$302(Lcom/miui/home/launcher/Background;I)I
    .locals 0

    .line 26
    iput p1, p0, Lcom/miui/home/launcher/Background;->mSpreadCircleBlackColor:I

    return p1
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/Background;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/miui/home/launcher/Background;->mSpeardCircelAlphaInAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/home/launcher/Background;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/miui/home/launcher/Background;->mSpeardCircelAlphaOutAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method private setTouchPoint(FF)V
    .locals 0

    .line 72
    iput p1, p0, Lcom/miui/home/launcher/Background;->mTouchRawX:F

    .line 73
    iput p2, p0, Lcom/miui/home/launcher/Background;->mTouchRawY:F

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 65
    iget-boolean v0, p0, Lcom/miui/home/launcher/Background;->mShowUninstallBgColor:Z

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/miui/home/launcher/Background;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060247

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 68
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getEventBusHandlers()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 100
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/home/launcher/Background;->mLongClickHandler:Lcom/miui/home/launcher/Background$LongClickHandler;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/miui/home/launcher/Background;->mLoadingFinishMessageHandler:Lcom/miui/home/launcher/common/messages/LoadingFinishMessageHandler;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTouchrawX()F
    .locals 1

    .line 77
    iget v0, p0, Lcom/miui/home/launcher/Background;->mTouchRawX:F

    return v0
.end method

.method public getTouchrawY()F
    .locals 1

    .line 81
    iget v0, p0, Lcom/miui/home/launcher/Background;->mTouchRawY:F

    return v0
.end method

.method public onWallpaperColorChanged()V
    .locals 0

    return-void
.end method

.method public setEnterEditingMode()V
    .locals 0

    return-void
.end method

.method public setExitEditingMode()V
    .locals 0

    return-void
.end method

.method public showUninstallBgColor(Z)V
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcom/miui/home/launcher/Background;->mShowUninstallBgColor:Z

    .line 60
    invoke-virtual {p0}, Lcom/miui/home/launcher/Background;->invalidate()V

    return-void
.end method

.method public startSpreadCircle(FF)V
    .locals 3

    const/4 v0, 0x2

    .line 85
    new-array v0, v0, [I

    .line 86
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Background;->getLocationOnScreen([I)V

    .line 87
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/Background;->setTouchPoint(FF)V

    .line 88
    iget-object p1, p0, Lcom/miui/home/launcher/Background;->mSpreadCircle:Lcom/miui/home/launcher/animate/SpreadCircle;

    .line 89
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasAppliedLightWallpaper()Z

    move-result p2

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/miui/home/launcher/Background;->mSpreadCircleBlackColor:I

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/miui/home/launcher/Background;->mSpreadCircleWhiteColor:I

    .line 88
    :goto_0
    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/animate/SpreadCircle;->setCircleColor(I)V

    .line 91
    iget-object p1, p0, Lcom/miui/home/launcher/Background;->mSpreadCircle:Lcom/miui/home/launcher/animate/SpreadCircle;

    iget p2, p0, Lcom/miui/home/launcher/Background;->mTouchRawX:F

    const/4 v1, 0x0

    aget v1, v0, v1

    int-to-float v1, v1

    sub-float/2addr p2, v1

    iget v1, p0, Lcom/miui/home/launcher/Background;->mTouchRawY:F

    const/4 v2, 0x1

    aget v0, v0, v2

    int-to-float v0, v0

    sub-float/2addr v1, v0

    invoke-virtual {p1, p2, v1}, Lcom/miui/home/launcher/animate/SpreadCircle;->startAnimation(FF)V

    .line 92
    iget-object p1, p0, Lcom/miui/home/launcher/Background;->mSpeardCircelAlphaInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public touchedAtValidArea(F)Z
    .locals 2

    .line 130
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getWorkspaceInvalidateEdgeWidth()I

    move-result v0

    int-to-float v1, v0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    .line 132
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v1

    sub-int/2addr v1, v0

    int-to-float v0, v1

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
