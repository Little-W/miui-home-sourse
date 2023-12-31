.class public Lcom/miui/home/launcher/PullToSearchTipsController;
.super Ljava/lang/Object;
.source "PullToSearchTipsController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/PullToSearchTipsController$ICallBack;,
        Lcom/miui/home/launcher/PullToSearchTipsController$AnimationRunnable;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mRunnable:Lcom/miui/home/launcher/PullToSearchTipsController$AnimationRunnable;

.field private mSearchTips:Lmiui/home/lib/dialog/AlertDialog;

.field private mShowSearchTipsCallBack:Lcom/miui/home/launcher/PullToSearchTipsController$ICallBack;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/PullToSearchTipsController;->mHandler:Landroid/os/Handler;

    .line 25
    iput-object p1, p0, Lcom/miui/home/launcher/PullToSearchTipsController;->mContext:Landroid/content/Context;

    return-void
.end method

.method private createTipsDialog(Landroid/content/Context;Lcom/miui/home/launcher/PullToSearchTipsController$ICallBack;)Lmiui/home/lib/dialog/AlertDialog;
    .locals 5

    .line 81
    iput-object p2, p0, Lcom/miui/home/launcher/PullToSearchTipsController;->mShowSearchTipsCallBack:Lcom/miui/home/launcher/PullToSearchTipsController$ICallBack;

    .line 82
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0068

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0068

    .line 83
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/LottieAnimationView;

    .line 84
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDarkMode()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "pull_down_to_search_dark.json"

    goto :goto_0

    :cond_0
    const-string v2, "pull_down_to_search_light.json"

    .line 85
    :goto_0
    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 86
    invoke-direct {p0}, Lcom/miui/home/launcher/PullToSearchTipsController;->removeAnimationRunnable()V

    .line 87
    new-instance v2, Lcom/miui/home/launcher/PullToSearchTipsController$AnimationRunnable;

    invoke-direct {v2, v1}, Lcom/miui/home/launcher/PullToSearchTipsController$AnimationRunnable;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object v2, p0, Lcom/miui/home/launcher/PullToSearchTipsController;->mRunnable:Lcom/miui/home/launcher/PullToSearchTipsController$AnimationRunnable;

    .line 88
    iget-object v1, p0, Lcom/miui/home/launcher/PullToSearchTipsController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/miui/home/launcher/PullToSearchTipsController;->mRunnable:Lcom/miui/home/launcher/PullToSearchTipsController$AnimationRunnable;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 89
    new-instance v1, Lmiui/home/lib/dialog/AlertDialog$Builder;

    invoke-direct {v1, p1}, Lmiui/home/lib/dialog/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 90
    invoke-virtual {v1, v0}, Lmiui/home/lib/dialog/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiui/home/lib/dialog/AlertDialog$Builder;

    const p1, 0x7f11022b

    .line 91
    invoke-virtual {v1, p1}, Lmiui/home/lib/dialog/AlertDialog$Builder;->setTitle(I)Lmiui/home/lib/dialog/AlertDialog$Builder;

    const p1, 0x7f11024e

    .line 92
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$PullToSearchTipsController$UnT9aa_v5WdxS5yZ-X7RF97GCpQ;

    invoke-direct {v0, p2}, Lcom/miui/home/launcher/-$$Lambda$PullToSearchTipsController$UnT9aa_v5WdxS5yZ-X7RF97GCpQ;-><init>(Lcom/miui/home/launcher/PullToSearchTipsController$ICallBack;)V

    invoke-virtual {v1, p1, v0}, Lmiui/home/lib/dialog/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/home/lib/dialog/AlertDialog$Builder;

    .line 98
    sget-object p1, Lcom/miui/home/launcher/-$$Lambda$PullToSearchTipsController$Uippkg_8a35ePKoeyZhJ3lL-Z4o;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$PullToSearchTipsController$Uippkg_8a35ePKoeyZhJ3lL-Z4o;

    invoke-virtual {v1, p1}, Lmiui/home/lib/dialog/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lmiui/home/lib/dialog/AlertDialog$Builder;

    .line 104
    new-instance p1, Lcom/miui/home/launcher/-$$Lambda$PullToSearchTipsController$bQCBqybrIiLuEWzrXiZ9kBP5R3w;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/-$$Lambda$PullToSearchTipsController$bQCBqybrIiLuEWzrXiZ9kBP5R3w;-><init>(Lcom/miui/home/launcher/PullToSearchTipsController;)V

    invoke-virtual {v1, p1}, Lmiui/home/lib/dialog/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiui/home/lib/dialog/AlertDialog$Builder;

    const/4 p0, 0x0

    .line 105
    invoke-virtual {v1, p0}, Lmiui/home/lib/dialog/AlertDialog$Builder;->setCancelable(Z)Lmiui/home/lib/dialog/AlertDialog$Builder;

    .line 106
    invoke-virtual {v1}, Lmiui/home/lib/dialog/AlertDialog$Builder;->create()Lmiui/home/lib/dialog/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method private isShowing()Z
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/miui/home/launcher/PullToSearchTipsController;->mSearchTips:Lmiui/home/lib/dialog/AlertDialog;

    if-eqz p0, :cond_0

    .line 41
    invoke-virtual {p0}, Lmiui/home/lib/dialog/AlertDialog;->isShowing()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$createTipsDialog$0(Lcom/miui/home/launcher/PullToSearchTipsController$ICallBack;Landroid/content/DialogInterface;I)V
    .locals 0

    if-eqz p0, :cond_0

    .line 94
    invoke-interface {p0}, Lcom/miui/home/launcher/PullToSearchTipsController$ICallBack;->positiveButtonClick()V

    .line 96
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic lambda$createTipsDialog$1(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 99
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_0

    .line 100
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private removeAnimationRunnable()V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/miui/home/launcher/PullToSearchTipsController;->mRunnable:Lcom/miui/home/launcher/PullToSearchTipsController$AnimationRunnable;

    if-eqz v0, :cond_0

    .line 115
    iget-object v1, p0, Lcom/miui/home/launcher/PullToSearchTipsController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 116
    iput-object v0, p0, Lcom/miui/home/launcher/PullToSearchTipsController;->mRunnable:Lcom/miui/home/launcher/PullToSearchTipsController$AnimationRunnable;

    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .line 110
    invoke-direct {p0}, Lcom/miui/home/launcher/PullToSearchTipsController;->removeAnimationRunnable()V

    return-void
.end method

.method public dismiss()V
    .locals 1

    .line 47
    invoke-direct {p0}, Lcom/miui/home/launcher/PullToSearchTipsController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object p0, p0, Lcom/miui/home/launcher/PullToSearchTipsController;->mSearchTips:Lmiui/home/lib/dialog/AlertDialog;

    invoke-virtual {p0}, Lmiui/home/lib/dialog/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public handleDarkModeChanged()V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/miui/home/launcher/PullToSearchTipsController;->mSearchTips:Lmiui/home/lib/dialog/AlertDialog;

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {v0}, Lmiui/home/lib/dialog/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/miui/home/launcher/PullToSearchTipsController;->mSearchTips:Lmiui/home/lib/dialog/AlertDialog;

    invoke-virtual {v0}, Lmiui/home/lib/dialog/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lcom/miui/home/launcher/PullToSearchTipsController;->mSearchTips:Lmiui/home/lib/dialog/AlertDialog;

    .line 58
    iget-object v0, p0, Lcom/miui/home/launcher/PullToSearchTipsController;->mShowSearchTipsCallBack:Lcom/miui/home/launcher/PullToSearchTipsController$ICallBack;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/PullToSearchTipsController;->showSearchTips(Lcom/miui/home/launcher/PullToSearchTipsController$ICallBack;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$createTipsDialog$2$PullToSearchTipsController(Landroid/content/DialogInterface;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Lcom/miui/home/launcher/PullToSearchTipsController;->removeAnimationRunnable()V

    return-void
.end method

.method public showSearchTips(Lcom/miui/home/launcher/PullToSearchTipsController$ICallBack;)V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/miui/home/launcher/PullToSearchTipsController;->mSearchTips:Lmiui/home/lib/dialog/AlertDialog;

    if-nez v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/miui/home/launcher/PullToSearchTipsController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/PullToSearchTipsController;->createTipsDialog(Landroid/content/Context;Lcom/miui/home/launcher/PullToSearchTipsController$ICallBack;)Lmiui/home/lib/dialog/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/PullToSearchTipsController;->mSearchTips:Lmiui/home/lib/dialog/AlertDialog;

    .line 36
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/PullToSearchTipsController;->mSearchTips:Lmiui/home/lib/dialog/AlertDialog;

    invoke-virtual {p0}, Lmiui/home/lib/dialog/AlertDialog;->show()V

    return-void
.end method
