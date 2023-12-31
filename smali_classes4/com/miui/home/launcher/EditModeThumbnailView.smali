.class public abstract Lcom/miui/home/launcher/EditModeThumbnailView;
.super Lcom/miui/home/launcher/ThumbnailView;
.source "EditModeThumbnailView.java"

# interfaces
.implements Lcom/miui/home/launcher/GoogleAnimAndFolmeAnim;


# instance fields
.field private mEnterAnimation:Landroid/view/animation/Animation;

.field private mExitAnimation:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/ThumbnailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/ThumbnailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private getEnterAnimation()Landroid/view/animation/Animation;
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/miui/home/launcher/EditModeThumbnailView;->mEnterAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    .line 48
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const v1, 0x7f010031

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/EditModeThumbnailView;->mEnterAnimation:Landroid/view/animation/Animation;

    .line 49
    iget-object v0, p0, Lcom/miui/home/launcher/EditModeThumbnailView;->mEnterAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lmiuix/view/animation/CubicEaseInOutInterpolator;

    invoke-direct {v1}, Lmiuix/view/animation/CubicEaseInOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 51
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/EditModeThumbnailView;->mEnterAnimation:Landroid/view/animation/Animation;

    return-object p0
.end method

.method private getExitAnimation()Landroid/view/animation/Animation;
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/miui/home/launcher/EditModeThumbnailView;->mExitAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    .line 35
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const v1, 0x7f010032

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/EditModeThumbnailView;->mExitAnimation:Landroid/view/animation/Animation;

    .line 36
    iget-object v0, p0, Lcom/miui/home/launcher/EditModeThumbnailView;->mExitAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/miui/home/launcher/EditModeThumbnailView$1;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/EditModeThumbnailView$1;-><init>(Lcom/miui/home/launcher/EditModeThumbnailView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 43
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/EditModeThumbnailView;->mExitAnimation:Landroid/view/animation/Animation;

    return-object p0
.end method


# virtual methods
.method public hide()V
    .locals 1

    .line 55
    invoke-static {}, Lcom/miui/home/launcher/folme/FolmeUtils;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/miui/home/launcher/EditModeThumbnailView;->hideWithFolmeAnim()V

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/EditModeThumbnailView;->hideWithGoogleAnim()V

    :goto_0
    return-void
.end method

.method public hideWithGoogleAnim()V
    .locals 1

    .line 80
    invoke-direct {p0}, Lcom/miui/home/launcher/EditModeThumbnailView;->getExitAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/EditModeThumbnailView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method protected onHideComplete()V
    .locals 1

    const/16 v0, 0x8

    .line 29
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/EditModeThumbnailView;->setVisibility(I)V

    .line 30
    invoke-virtual {p0}, Lcom/miui/home/launcher/EditModeThumbnailView;->removeAllScreens()V

    return-void
.end method

.method public abstract prepareToShow()V
.end method

.method public show()V
    .locals 1

    .line 63
    invoke-static {}, Lcom/miui/home/launcher/folme/FolmeUtils;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/miui/home/launcher/EditModeThumbnailView;->showWithFolmeAnim()V

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/EditModeThumbnailView;->showWithGoogleAnim()V

    :goto_0
    return-void
.end method

.method public showWithGoogleAnim()V
    .locals 1

    const/4 v0, 0x0

    .line 74
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/EditModeThumbnailView;->setVisibility(I)V

    .line 75
    invoke-direct {p0}, Lcom/miui/home/launcher/EditModeThumbnailView;->getEnterAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/EditModeThumbnailView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
