.class public Lcom/miui/home/launcher/ErrorBar;
.super Landroid/widget/TextView;
.source "ErrorBar.java"

# interfaces
.implements Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;


# instance fields
.field private mAutoCloseErrorBar:Ljava/lang/Runnable;

.field private mConflictsListenerAdapter:Lcom/miui/home/launcher/common/ConflictsListenerAdapter;

.field private mFadeIn:Landroid/view/animation/Animation;

.field private mFadeOut:Landroid/view/animation/Animation;

.field private mLastForceHide:Z

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 23
    iput-boolean p1, p0, Lcom/miui/home/launcher/ErrorBar;->mLastForceHide:Z

    const/4 p1, -0x1

    .line 24
    iput p1, p0, Lcom/miui/home/launcher/ErrorBar;->mResId:I

    .line 72
    new-instance p1, Lcom/miui/home/launcher/ErrorBar$2;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/ErrorBar$2;-><init>(Lcom/miui/home/launcher/ErrorBar;)V

    iput-object p1, p0, Lcom/miui/home/launcher/ErrorBar;->mAutoCloseErrorBar:Ljava/lang/Runnable;

    .line 105
    new-instance p1, Lcom/miui/home/launcher/ErrorBar$3;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/ErrorBar$3;-><init>(Lcom/miui/home/launcher/ErrorBar;)V

    iput-object p1, p0, Lcom/miui/home/launcher/ErrorBar;->mConflictsListenerAdapter:Lcom/miui/home/launcher/common/ConflictsListenerAdapter;

    .line 29
    invoke-virtual {p0}, Lcom/miui/home/launcher/ErrorBar;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x10a0000

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/ErrorBar;->mFadeIn:Landroid/view/animation/Animation;

    .line 30
    invoke-virtual {p0}, Lcom/miui/home/launcher/ErrorBar;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x10a0001

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/ErrorBar;->mFadeOut:Landroid/view/animation/Animation;

    .line 31
    iget-object p1, p0, Lcom/miui/home/launcher/ErrorBar;->mFadeOut:Landroid/view/animation/Animation;

    new-instance p2, Lcom/miui/home/launcher/ErrorBar$1;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/ErrorBar$1;-><init>(Lcom/miui/home/launcher/ErrorBar;)V

    invoke-virtual {p1, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/ErrorBar;)Lcom/miui/home/launcher/common/ConflictsListenerAdapter;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/miui/home/launcher/ErrorBar;->mConflictsListenerAdapter:Lcom/miui/home/launcher/common/ConflictsListenerAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/ErrorBar;)Lcom/miui/home/launcher/Launcher;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/miui/home/launcher/ErrorBar;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/ErrorBar;)Z
    .locals 0

    .line 17
    iget-boolean p0, p0, Lcom/miui/home/launcher/ErrorBar;->mLastForceHide:Z

    return p0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/ErrorBar;)I
    .locals 0

    .line 17
    iget p0, p0, Lcom/miui/home/launcher/ErrorBar;->mResId:I

    return p0
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/ErrorBar;)Landroid/view/animation/Animation;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/miui/home/launcher/ErrorBar;->mFadeIn:Landroid/view/animation/Animation;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/home/launcher/ErrorBar;)Ljava/lang/Runnable;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/miui/home/launcher/ErrorBar;->mAutoCloseErrorBar:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method public forceToHide()V
    .locals 1

    const/4 v0, 0x0

    .line 57
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ErrorBar;->hideError(Z)V

    return-void
.end method

.method public getConflictsListener()Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/miui/home/launcher/ErrorBar;->mConflictsListenerAdapter:Lcom/miui/home/launcher/common/ConflictsListenerAdapter;

    return-object v0
.end method

.method hideError(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 62
    iget-object p1, p0, Lcom/miui/home/launcher/ErrorBar;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getTipConflictsManager()Lcom/miui/home/launcher/common/ConflictsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/launcher/ErrorBar;->mConflictsListenerAdapter:Lcom/miui/home/launcher/common/ConflictsListenerAdapter;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/common/ConflictsManager;->releaseLock(Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;)V

    const/4 p1, 0x1

    .line 63
    iput-boolean p1, p0, Lcom/miui/home/launcher/ErrorBar;->mLastForceHide:Z

    .line 64
    iget-object p1, p0, Lcom/miui/home/launcher/ErrorBar;->mAutoCloseErrorBar:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ErrorBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 66
    iput-boolean p1, p0, Lcom/miui/home/launcher/ErrorBar;->mLastForceHide:Z

    .line 67
    iget-object p1, p0, Lcom/miui/home/launcher/ErrorBar;->mFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ErrorBar;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .line 89
    invoke-virtual {p0}, Lcom/miui/home/launcher/ErrorBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onWallpaperColorChanged()V
    .locals 2

    .line 98
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasAppliedLightWallpaper()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/miui/home/launcher/ErrorBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f11030c

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/ErrorBar;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_0

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ErrorBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f11030b

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/ErrorBar;->setTextAppearance(Landroid/content/Context;I)V

    :goto_0
    return-void
.end method

.method public setLauncher(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/miui/home/launcher/ErrorBar;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-void
.end method

.method public showError(I)V
    .locals 1

    .line 52
    iput p1, p0, Lcom/miui/home/launcher/ErrorBar;->mResId:I

    .line 53
    iget-object p1, p0, Lcom/miui/home/launcher/ErrorBar;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getTipConflictsManager()Lcom/miui/home/launcher/common/ConflictsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/launcher/ErrorBar;->mConflictsListenerAdapter:Lcom/miui/home/launcher/common/ConflictsListenerAdapter;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/common/ConflictsManager;->obtainLock(Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;)V

    return-void
.end method
