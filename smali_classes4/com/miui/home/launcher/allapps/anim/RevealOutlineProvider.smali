.class public Lcom/miui/home/launcher/allapps/anim/RevealOutlineProvider;
.super Landroid/view/ViewOutlineProvider;
.source "RevealOutlineProvider.java"


# instance fields
.field private mBeginRadius:F

.field private final mBoundMaxH:I

.field private final mBoundMaxW:I

.field private final mCenterX:I

.field private final mCenterY:I

.field private mEndRadius:F

.field private mIsRestore:Z

.field private mOldClipFlag:Z

.field private mOldProvider:Landroid/view/ViewOutlineProvider;

.field private mOutLine:Landroid/graphics/Rect;

.field private mOutLineRadius:F

.field private mRevealView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;IIII)V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    .line 32
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/anim/RevealOutlineProvider;->mOutLine:Landroid/graphics/Rect;

    .line 33
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/anim/RevealOutlineProvider;->mRevealView:Landroid/view/View;

    .line 34
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/anim/RevealOutlineProvider;->mRevealView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/anim/RevealOutlineProvider;->mOldProvider:Landroid/view/ViewOutlineProvider;

    .line 35
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/anim/RevealOutlineProvider;->mRevealView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getClipToOutline()Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/home/launcher/allapps/anim/RevealOutlineProvider;->mOldClipFlag:Z

    .line 37
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/anim/RevealOutlineProvider;->mRevealView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 38
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/anim/RevealOutlineProvider;->mRevealView:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClipToOutline(Z)V

    int-to-float p1, p4

    .line 39
    iput p1, p0, Lcom/miui/home/launcher/allapps/anim/RevealOutlineProvider;->mBeginRadius:F

    int-to-float p1, p5

    .line 40
    iput p1, p0, Lcom/miui/home/launcher/allapps/anim/RevealOutlineProvider;->mEndRadius:F

    .line 42
    iput p2, p0, Lcom/miui/home/launcher/allapps/anim/RevealOutlineProvider;->mCenterX:I

    .line 43
    iput p3, p0, Lcom/miui/home/launcher/allapps/anim/RevealOutlineProvider;->mCenterY:I

    .line 48
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p1, p0, Lcom/miui/home/launcher/allapps/anim/RevealOutlineProvider;->mBoundMaxW:I

    .line 49
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Lcom/miui/home/launcher/allapps/anim/RevealOutlineProvider;->mBoundMaxH:I

    return-void
.end method

.method private invalidateOutLine()V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/anim/RevealOutlineProvider;->mRevealView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidateOutline()V

    .line 60
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/anim/RevealOutlineProvider;->mRevealView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private updateOutLine(F)V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    .line 64
    iget v1, p0, Lcom/miui/home/launcher/allapps/anim/RevealOutlineProvider;->mBeginRadius:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/miui/home/launcher/allapps/anim/RevealOutlineProvider;->mEndRadius:F

    mul-float/2addr p1, v1

    add-float/2addr v0, p1

    iput v0, p0, Lcom/miui/home/launcher/allapps/anim/RevealOutlineProvider;->mOutLineRadius:F

    .line 65
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/anim/RevealOutlineProvider;->mOutLine:Landroid/graphics/Rect;

    iget v0, p0, Lcom/miui/home/launcher/allapps/anim/RevealOutlineProvider;->mCenterX:I

    int-to-float v1, v0

    iget v2, p0, Lcom/miui/home/launcher/allapps/anim/RevealOutlineProvider;->mOutLineRadius:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 66
    iget p0, p0, Lcom/miui/home/launcher/allapps/anim/RevealOutlineProvider;->mCenterY:I

    int-to-float v1, p0

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    add-float/2addr v0, v2

    float-to-int v0, v0

    .line 67
    iput v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float p0, p0

    add-float/2addr p0, v2

    float-to-int p0, p0

    .line 68
    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 0

    .line 73
    iget-boolean p1, p0, Lcom/miui/home/launcher/allapps/anim/RevealOutlineProvider;->mIsRestore:Z

    if-eqz p1, :cond_0

    .line 74
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/anim/RevealOutlineProvider;->mOutLine:Landroid/graphics/Rect;

    invoke-virtual {p2, p0}, Landroid/graphics/Outline;->setRect(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 76
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/anim/RevealOutlineProvider;->mOutLine:Landroid/graphics/Rect;

    iget p0, p0, Lcom/miui/home/launcher/allapps/anim/RevealOutlineProvider;->mOutLineRadius:F

    invoke-virtual {p2, p1, p0}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    :goto_0
    return-void
.end method

.method public restoreOutLine()V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/anim/RevealOutlineProvider;->mRevealView:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/anim/RevealOutlineProvider;->mOldProvider:Landroid/view/ViewOutlineProvider;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 82
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/anim/RevealOutlineProvider;->mRevealView:Landroid/view/View;

    iget-boolean v1, p0, Lcom/miui/home/launcher/allapps/anim/RevealOutlineProvider;->mOldClipFlag:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setClipToOutline(Z)V

    const/4 v0, 0x1

    .line 84
    iput-boolean v0, p0, Lcom/miui/home/launcher/allapps/anim/RevealOutlineProvider;->mIsRestore:Z

    .line 89
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/anim/RevealOutlineProvider;->mOutLine:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 90
    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 91
    iget v1, p0, Lcom/miui/home/launcher/allapps/anim/RevealOutlineProvider;->mBoundMaxW:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 92
    iget v1, p0, Lcom/miui/home/launcher/allapps/anim/RevealOutlineProvider;->mBoundMaxH:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 93
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/anim/RevealOutlineProvider;->invalidateOutLine()V

    return-void
.end method

.method public setProgress(F)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/allapps/anim/RevealOutlineProvider;->updateOutLine(F)V

    .line 55
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/anim/RevealOutlineProvider;->invalidateOutLine()V

    return-void
.end method
