.class public Lcom/miui/home/launcher/ShortcutMenuLayer;
.super Lcom/miui/launcher/views/LauncherFrameLayout;
.source "ShortcutMenuLayer.java"

# interfaces
.implements Lcom/miui/home/launcher/DragController$DragListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/ShortcutMenuLayer$_lancet;
    }
.end annotation


# instance fields
.field private mRequestAppShortcutAsyncTask:Landroid/os/AsyncTask;

.field private mRequestingItemInfo:Lcom/miui/home/launcher/ItemInfo;

.field private mShortcutMenu:Lcom/miui/home/launcher/shortcuts/ShortcutMenu;

.field public mSpringAnimationImpl:Lcom/miui/home/recents/util/SpringAnimationImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/ShortcutMenuLayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/ShortcutMenuLayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/launcher/views/LauncherFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    invoke-static {}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;->createAllSystemShortcutMenuItems()V

    .line 43
    new-instance p1, Lcom/miui/home/recents/util/SpringAnimationImpl;

    invoke-direct {p1, p0}, Lcom/miui/home/recents/util/SpringAnimationImpl;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/miui/home/launcher/ShortcutMenuLayer;->mSpringAnimationImpl:Lcom/miui/home/recents/util/SpringAnimationImpl;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/ShortcutMenuLayer;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ShortcutMenuLayer;->setAlpha$___twin___(F)V

    return-void
.end method

.method static synthetic access$001(Lcom/miui/home/launcher/ShortcutMenuLayer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ShortcutMenuLayer;->setVisibility$___twin___(I)V

    return-void
.end method

.method private getDragViewLocationInShortcutMenuLayer(Lcom/miui/home/launcher/DragObject;)[F
    .locals 3

    const/4 v0, 0x2

    .line 109
    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 111
    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/DragObject;->getDragView(I)Lcom/miui/home/launcher/DragView;

    move-result-object p1

    const/4 v2, 0x1

    .line 110
    invoke-static {p1, p0, v0, v2, v1}, Lcom/miui/home/launcher/common/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZZ)F

    return-object v0
.end method

.method private isRequestingShortcutMenuItems()Z
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutMenuLayer;->mRequestingItemInfo:Lcom/miui/home/launcher/ItemInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isShortcutIconShowingMessage(Lcom/miui/home/launcher/DragObject;)Z
    .locals 2

    const/4 v0, 0x0

    .line 117
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/DragObject;->getDragView(I)Lcom/miui/home/launcher/DragView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragView;->getContent()Landroid/view/View;

    move-result-object p1

    .line 118
    instance-of v1, p1, Lcom/miui/home/launcher/ItemIcon;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/miui/home/launcher/ItemIcon;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemIcon;->isMessageVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static synthetic lambda$showShortcutMenu$0(Lcom/miui/home/launcher/ItemInfo;Ljava/lang/Void;)Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;
    .locals 0

    .line 79
    invoke-static {}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->getInstance()Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->getAllShortcutMenuItems(Lcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$showShortcutMenu$1(Lcom/miui/home/launcher/ShortcutMenuLayer;Lcom/miui/home/launcher/ItemInfo;[FZ[ILcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p5

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    .line 80
    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/ShortcutMenuLayer;->onQuerySucceed(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;[FZ[I)V

    return-void
.end method

.method public static synthetic lambda$showShortcutMenu$2(Lcom/miui/home/launcher/ShortcutMenuLayer;Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;)V
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ShortcutMenuLayer;->onQueryCancel(Lcom/miui/home/launcher/ItemInfo;)V

    return-void
.end method

.method private onQueryCancel(Lcom/miui/home/launcher/ItemInfo;)V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutMenuLayer;->mRequestingItemInfo:Lcom/miui/home/launcher/ItemInfo;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 96
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ShortcutMenuLayer;->setRequestingItemInfo(Lcom/miui/home/launcher/ItemInfo;)V

    :cond_0
    return-void
.end method

.method private onQuerySucceed(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;[FZ[I)V
    .locals 1

    const/4 v0, 0x0

    .line 103
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/ShortcutMenuLayer;->setRequestingItemInfo(Lcom/miui/home/launcher/ItemInfo;)V

    .line 104
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutMenuLayer;->mShortcutMenu:Lcom/miui/home/launcher/shortcuts/ShortcutMenu;

    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->bindShortcut(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;)V

    .line 105
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutMenuLayer;->mShortcutMenu:Lcom/miui/home/launcher/shortcuts/ShortcutMenu;

    invoke-virtual {p1, p3, p4, p5}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->show([FZ[I)V

    return-void
.end method

.method private setAlpha$___twin___(F)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/launcher/views/LauncherFrameLayout;->setAlpha(F)V

    return-void
.end method

.method private setRequestingItemInfo(Lcom/miui/home/launcher/ItemInfo;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/miui/home/launcher/ShortcutMenuLayer;->mRequestingItemInfo:Lcom/miui/home/launcher/ItemInfo;

    return-void
.end method

.method private setVisibility$___twin___(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/launcher/views/LauncherFrameLayout;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public getBindedItemInfo()Lcom/miui/home/launcher/ItemInfo;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutMenuLayer;->mShortcutMenu:Lcom/miui/home/launcher/shortcuts/ShortcutMenu;

    invoke-virtual {v0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getBindedItemInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    return-object v0
.end method

.method public getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutMenuLayer;->mSpringAnimationImpl:Lcom/miui/home/recents/util/SpringAnimationImpl;

    return-object v0
.end method

.method public hideShortcutMenu(Lcom/miui/home/launcher/EditStateChangeReason;)V
    .locals 2

    .line 126
    invoke-direct {p0}, Lcom/miui/home/launcher/ShortcutMenuLayer;->isRequestingShortcutMenuItems()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutMenuLayer;->mRequestAppShortcutAsyncTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 127
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 129
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;->resetAllSystemShortcutMenuItems()V

    .line 130
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutMenuLayer;->mShortcutMenu:Lcom/miui/home/launcher/shortcuts/ShortcutMenu;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->hide(Lcom/miui/home/launcher/EditStateChangeReason;)V

    return-void
.end method

.method public onDragEnd(Lcom/miui/home/launcher/DragObject;)V
    .locals 3

    .line 144
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutMenuLayer;->getBindedItemInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    .line 145
    instance-of v0, p1, Lcom/miui/home/launcher/ShortcutInfo;

    if-nez v0, :cond_0

    return-void

    .line 146
    :cond_0
    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 147
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ShortcutMenu"

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show shortcut menu when drop, pkgName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-static {p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackShowingShortcutMenuWhenDropIcon(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onDragStart([Lcom/miui/home/launcher/DragSource;Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 52
    invoke-super {p0}, Lcom/miui/launcher/views/LauncherFrameLayout;->onFinishInflate()V

    const v0, 0x7f0a018e

    .line 53
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ShortcutMenuLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;

    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutMenuLayer;->mShortcutMenu:Lcom/miui/home/launcher/shortcuts/ShortcutMenu;

    .line 54
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutMenuLayer;->mShortcutMenu:Lcom/miui/home/launcher/shortcuts/ShortcutMenu;

    invoke-virtual {v0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->reset()V

    return-void
.end method

.method public onScreenOrientationChanged()V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutMenuLayer;->mShortcutMenu:Lcom/miui/home/launcher/shortcuts/ShortcutMenu;

    invoke-virtual {v0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->onScreenOrientationChanged()V

    return-void
.end method

.method public onScreenSizeChanged()V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutMenuLayer;->mShortcutMenu:Lcom/miui/home/launcher/shortcuts/ShortcutMenu;

    invoke-virtual {v0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->onScreenSizeChanged()V

    return-void
.end method

.method public setAlpha(F)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/ShortcutMenuLayer$_lancet;->com_miui_home_launcher_aop_LogHooker_setShortcutMenuLayerAlpha(Lcom/miui/home/launcher/ShortcutMenuLayer;F)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/ShortcutMenuLayer$_lancet;->com_miui_home_launcher_aop_LogHooker_setShortcutMenuLayerVisibility(Lcom/miui/home/launcher/ShortcutMenuLayer;I)V

    return-void
.end method

.method public setWithoutAnimNextHide()V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutMenuLayer;->mShortcutMenu:Lcom/miui/home/launcher/shortcuts/ShortcutMenu;

    invoke-virtual {v0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->setWithoutAnimNextHide()V

    return-void
.end method

.method public showShortcutMenu(Lcom/miui/home/launcher/DragObject;)V
    .locals 8

    .line 58
    invoke-static {p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->canShowShortcutMenu(Lcom/miui/home/launcher/DragObject;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutMenuLayer;->mShortcutMenu:Lcom/miui/home/launcher/shortcuts/ShortcutMenu;

    .line 59
    invoke-virtual {v0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 61
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/DragObject;->getDragInfo(I)Lcom/miui/home/launcher/ItemInfo;

    move-result-object v7

    if-nez v7, :cond_1

    return-void

    .line 65
    :cond_1
    iget-object v1, p0, Lcom/miui/home/launcher/ShortcutMenuLayer;->mRequestingItemInfo:Lcom/miui/home/launcher/ItemInfo;

    invoke-virtual {v7, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 67
    :cond_2
    invoke-direct {p0}, Lcom/miui/home/launcher/ShortcutMenuLayer;->isRequestingShortcutMenuItems()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/miui/home/launcher/ShortcutMenuLayer;->mRequestAppShortcutAsyncTask:Landroid/os/AsyncTask;

    if-eqz v1, :cond_3

    .line 68
    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 71
    :cond_3
    invoke-direct {p0, v7}, Lcom/miui/home/launcher/ShortcutMenuLayer;->setRequestingItemInfo(Lcom/miui/home/launcher/ItemInfo;)V

    .line 73
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ShortcutMenuLayer;->getDragViewLocationInShortcutMenuLayer(Lcom/miui/home/launcher/DragObject;)[F

    move-result-object v4

    .line 74
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ShortcutMenuLayer;->isShortcutIconShowingMessage(Lcom/miui/home/launcher/DragObject;)Z

    move-result v5

    const/4 v1, 0x2

    .line 75
    new-array v6, v1, [I

    aget v1, v4, v0

    float-to-int v1, v1

    iget v3, p1, Lcom/miui/home/launcher/DragObject;->xOffset:I

    add-int/2addr v1, v3

    aput v1, v6, v0

    aget v0, v4, v2

    float-to-int v0, v0

    iget p1, p1, Lcom/miui/home/launcher/DragObject;->yOffset:I

    add-int/2addr v0, p1

    aput v0, v6, v2

    .line 78
    new-instance p1, Lcom/miui/home/launcher/-$$Lambda$ShortcutMenuLayer$y2RYPbMVwXEI43BxdfItMz5aYsE;

    invoke-direct {p1, v7}, Lcom/miui/home/launcher/-$$Lambda$ShortcutMenuLayer$y2RYPbMVwXEI43BxdfItMz5aYsE;-><init>(Lcom/miui/home/launcher/ItemInfo;)V

    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$ShortcutMenuLayer$wPp8XZk0Ep-ubJkHLkOXIwkt8TE;

    move-object v1, v0

    move-object v2, p0

    move-object v3, v7

    invoke-direct/range {v1 .. v6}, Lcom/miui/home/launcher/-$$Lambda$ShortcutMenuLayer$wPp8XZk0Ep-ubJkHLkOXIwkt8TE;-><init>(Lcom/miui/home/launcher/ShortcutMenuLayer;Lcom/miui/home/launcher/ItemInfo;[FZ[I)V

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$ShortcutMenuLayer$jxC0cWXHU3x4UdvJA53BeZfORd8;

    invoke-direct {v1, p0, v7}, Lcom/miui/home/launcher/-$$Lambda$ShortcutMenuLayer$jxC0cWXHU3x4UdvJA53BeZfORd8;-><init>(Lcom/miui/home/launcher/ShortcutMenuLayer;Lcom/miui/home/launcher/ItemInfo;)V

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execCancelableTaskParallel(Ljava8/util/function/Function;Ljava8/util/function/Consumer;Ljava8/util/function/Consumer;Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/ShortcutMenuLayer;->mRequestAppShortcutAsyncTask:Landroid/os/AsyncTask;

    return-void

    :cond_4
    :goto_0
    return-void
.end method
