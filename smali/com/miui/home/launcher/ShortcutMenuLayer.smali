.class public Lcom/miui/home/launcher/ShortcutMenuLayer;
.super Lcom/miui/launcher/views/LauncherFrameLayout;
.source "ShortcutMenuLayer.java"

# interfaces
.implements Lcom/miui/home/launcher/DragController$DragListener;


# instance fields
.field private mIsNeedSkipTouch:Z

.field private mRequestAppShortcutAsyncTask:Landroid/os/AsyncTask;

.field private mRequestingItemInfo:Lcom/miui/home/launcher/ItemInfo;

.field private mShortcutMenu:Lcom/miui/home/launcher/shortcuts/ShortcutMenu;

.field public mSpringAnimationImpl:Lcom/miui/home/recents/util/SpringAnimationImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/ShortcutMenuLayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/ShortcutMenuLayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/launcher/views/LauncherFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 123
    iput-boolean p1, p0, Lcom/miui/home/launcher/ShortcutMenuLayer;->mIsNeedSkipTouch:Z

    .line 51
    invoke-static {}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;->createAllSystemShortcutMenuItems()V

    .line 53
    new-instance p1, Lcom/miui/home/recents/util/SpringAnimationImpl;

    invoke-direct {p1, p0}, Lcom/miui/home/recents/util/SpringAnimationImpl;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/miui/home/launcher/ShortcutMenuLayer;->mSpringAnimationImpl:Lcom/miui/home/recents/util/SpringAnimationImpl;

    return-void
.end method

.method private getDragViewLocationInShortcutMenuLayer(Lcom/miui/home/launcher/DragObject;)[F
    .locals 3

    const/4 v0, 0x2

    .line 202
    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 204
    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/DragObject;->getDragView(I)Lcom/miui/home/launcher/DragView;

    move-result-object p1

    const/4 v2, 0x1

    .line 203
    invoke-static {p1, p0, v0, v2, v1}, Lcom/miui/home/launcher/common/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZZ)F

    return-object v0
.end method

.method private isRequestingShortcutMenuItems()Z
    .locals 1

    .line 145
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

    .line 210
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/DragObject;->getDragView(I)Lcom/miui/home/launcher/DragView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragView;->getContent()Landroid/view/View;

    move-result-object p1

    .line 211
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

    .line 105
    invoke-static {}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->getInstance()Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->getAllShortcutMenuItems(Lcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$showShortcutMenu$1(Lcom/miui/home/launcher/ShortcutMenuLayer;Lcom/miui/home/launcher/ItemInfo;[FZ[IILcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p6

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    .line 106
    invoke-direct/range {v0 .. v6}, Lcom/miui/home/launcher/ShortcutMenuLayer;->onQuerySucceed(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;[FZ[II)V

    return-void
.end method

.method public static synthetic lambda$showShortcutMenu$2(Lcom/miui/home/launcher/ShortcutMenuLayer;Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;)V
    .locals 0

    .line 107
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ShortcutMenuLayer;->onQueryCancel(Lcom/miui/home/launcher/ItemInfo;)V

    return-void
.end method

.method private obtainCellWidth(Lcom/miui/home/launcher/ItemInfo;)I
    .locals 1

    .line 113
    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->isInHotseat()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->isInHotseatRecommend()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 116
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellWidth()I

    move-result p1

    return p1

    .line 114
    :cond_1
    :goto_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getHotSeatsCellWidth()I

    move-result p1

    return p1
.end method

.method private obtainTipShortcutMenu(Ljava/lang/String;)Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;
    .locals 3

    .line 188
    new-instance v0, Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;

    invoke-direct {v0}, Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;-><init>()V

    .line 189
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 190
    new-instance v2, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$TipMenuItem;

    invoke-direct {v2, p1}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$TipMenuItem;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;->setAppShortcutMenuItems(Ljava/util/List;)V

    return-object v0
.end method

.method private onQueryCancel(Lcom/miui/home/launcher/ItemInfo;)V
    .locals 3

    const-string v0, "Launcher.ShortcutMenuLayer"

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onQueryCancel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutMenuLayer;->mRequestingItemInfo:Lcom/miui/home/launcher/ItemInfo;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 151
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ShortcutMenuLayer;->setRequestingItemInfo(Lcom/miui/home/launcher/ItemInfo;)V

    :cond_0
    return-void
.end method

.method private onQuerySucceed(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;[FZ[II)V
    .locals 3

    const-string v0, "Launcher.ShortcutMenuLayer"

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onQuerySucceed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-direct/range {p0 .. p6}, Lcom/miui/home/launcher/ShortcutMenuLayer;->showMenuItems(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;[FZ[II)V

    return-void
.end method

.method private setRequestingItemInfo(Lcom/miui/home/launcher/ItemInfo;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/miui/home/launcher/ShortcutMenuLayer;->mRequestingItemInfo:Lcom/miui/home/launcher/ItemInfo;

    return-void
.end method

.method private showMenuItems(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;[FZ[II)V
    .locals 1

    const/4 v0, 0x0

    .line 166
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/ShortcutMenuLayer;->setRequestingItemInfo(Lcom/miui/home/launcher/ItemInfo;)V

    .line 167
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutMenuLayer;->mShortcutMenu:Lcom/miui/home/launcher/shortcuts/ShortcutMenu;

    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->bindShortcut(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;)V

    .line 168
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutMenuLayer;->mShortcutMenu:Lcom/miui/home/launcher/shortcuts/ShortcutMenu;

    invoke-virtual {v0, p3, p4, p5, p6}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->show([FZ[II)V

    .line 169
    invoke-virtual {p2}, Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;->getWidgetShortcutMenuItems()Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/ShortcutMenuLayer;->trackAddWidgetItemExpose(Lcom/miui/home/launcher/ItemInfo;Ljava/util/List;)V

    return-void
.end method

.method private trackAddWidgetItemExpose(Lcom/miui/home/launcher/ItemInfo;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/ItemInfo;",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;",
            ">;)V"
        }
    .end annotation

    .line 196
    instance-of v0, p1, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_0

    .line 197
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutMenuLayer;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackExposeInstallMenuItem(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 132
    iget-boolean v0, p0, Lcom/miui/home/launcher/ShortcutMenuLayer;->mIsNeedSkipTouch:Z

    if-eqz v0, :cond_0

    const-string p1, "Launcher.ShortcutMenuLayer"

    const-string v0, "don\'t dispatch touch because mIsNeedSkipTouch"

    .line 133
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 134
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutMenuLayer;->setIsNeedSkipTouch(Z)V

    return p1

    .line 137
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/launcher/views/LauncherFrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getBindedItemInfo()Lcom/miui/home/launcher/ItemInfo;
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutMenuLayer;->mShortcutMenu:Lcom/miui/home/launcher/shortcuts/ShortcutMenu;

    invoke-virtual {v0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getBindedItemInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    return-object v0
.end method

.method public getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutMenuLayer;->mSpringAnimationImpl:Lcom/miui/home/recents/util/SpringAnimationImpl;

    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hideShortcutMenu(Lcom/miui/home/launcher/EditStateChangeReason;)V
    .locals 2

    .line 219
    invoke-direct {p0}, Lcom/miui/home/launcher/ShortcutMenuLayer;->isRequestingShortcutMenuItems()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutMenuLayer;->mRequestAppShortcutAsyncTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 220
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    const/4 v0, 0x0

    .line 222
    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutMenuLayer;->mRequestAppShortcutAsyncTask:Landroid/os/AsyncTask;

    .line 223
    invoke-static {}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;->resetAllSystemShortcutMenuItems()V

    .line 224
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutMenuLayer;->mShortcutMenu:Lcom/miui/home/launcher/shortcuts/ShortcutMenu;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->hide(Lcom/miui/home/launcher/EditStateChangeReason;)V

    return-void
.end method

.method public onDescendantInvalidated(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .line 266
    invoke-super {p0, p1, p2}, Lcom/miui/launcher/views/LauncherFrameLayout;->onDescendantInvalidated(Landroid/view/View;Landroid/view/View;)V

    .line 267
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 268
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "should not invalidate in background thread:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const-string p2, "Launcher.ShortcutMenuLayer"

    const-string v0, "invalidate error"

    .line 272
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public onDisplayRotationChanged(I)V
    .locals 1

    .line 120
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isKeepRecentsViewPortrait()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/miui/home/recents/util/RotationHelper;->isLandscapeRotation(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutMenuLayer;->setIsNeedSkipTouch(Z)V

    return-void
.end method

.method public onDragEnd(Lcom/miui/home/launcher/DragObject;)V
    .locals 3

    .line 238
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutMenuLayer;->getBindedItemInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    .line 239
    instance-of v0, p1, Lcom/miui/home/launcher/ShortcutInfo;

    if-nez v0, :cond_0

    return-void

    .line 240
    :cond_0
    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 241
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ShortcutMenu"

    .line 242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show shortcut menu when drop, pkgName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
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

    .line 62
    invoke-super {p0}, Lcom/miui/launcher/views/LauncherFrameLayout;->onFinishInflate()V

    const v0, 0x7f0a024a

    .line 63
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ShortcutMenuLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;

    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutMenuLayer;->mShortcutMenu:Lcom/miui/home/launcher/shortcuts/ShortcutMenu;

    .line 64
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutMenuLayer;->mShortcutMenu:Lcom/miui/home/launcher/shortcuts/ShortcutMenu;

    invoke-virtual {v0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->reset()V

    return-void
.end method

.method public onScreenSizeChanged()V
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutMenuLayer;->mShortcutMenu:Lcom/miui/home/launcher/shortcuts/ShortcutMenu;

    invoke-virtual {v0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->onScreenSizeChanged()V

    return-void
.end method

.method public setIsNeedSkipTouch(Z)V
    .locals 3

    .line 126
    iput-boolean p1, p0, Lcom/miui/home/launcher/ShortcutMenuLayer;->mIsNeedSkipTouch:Z

    const-string v0, "Launcher.ShortcutMenuLayer"

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNeedSkipTouch="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setScaleX(F)V
    .locals 1

    .line 253
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutMenuLayer;->getScaleX()F

    move-result v0

    cmpg-float v0, v0, p1

    if-gez v0, :cond_0

    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/view/View;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 254
    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/view/View;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->refreshSearchBarBlur()V

    .line 256
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/launcher/views/LauncherFrameLayout;->setScaleX(F)V

    return-void
.end method

.method public setWithoutAnimNextHide()V
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutMenuLayer;->mShortcutMenu:Lcom/miui/home/launcher/shortcuts/ShortcutMenu;

    invoke-virtual {v0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->setWithoutAnimNextHide()V

    return-void
.end method

.method public showShortcutMenu(Lcom/miui/home/launcher/DragObject;)V
    .locals 9

    .line 68
    invoke-static {p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->canShowShortcutMenu(Lcom/miui/home/launcher/DragObject;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "Launcher.ShortcutMenuLayer"

    const-string v0, "can not show shortcut menu"

    .line 69
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutMenuLayer;->mShortcutMenu:Lcom/miui/home/launcher/shortcuts/ShortcutMenu;

    invoke-virtual {v0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "Launcher.ShortcutMenuLayer"

    const-string v0, "shortcut menu already visible"

    .line 74
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 78
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/DragObject;->getDragInfo(I)Lcom/miui/home/launcher/ItemInfo;

    move-result-object v8

    if-nez v8, :cond_2

    const-string p1, "Launcher.ShortcutMenuLayer"

    const-string v0, "drag item info is null"

    .line 81
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 85
    :cond_2
    iget-object v1, p0, Lcom/miui/home/launcher/ShortcutMenuLayer;->mRequestingItemInfo:Lcom/miui/home/launcher/ItemInfo;

    invoke-virtual {v8, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string p1, "Launcher.ShortcutMenuLayer"

    const-string v0, "itemInfo already requesting"

    .line 86
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 90
    :cond_3
    invoke-direct {p0}, Lcom/miui/home/launcher/ShortcutMenuLayer;->isRequestingShortcutMenuItems()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/miui/home/launcher/ShortcutMenuLayer;->mRequestAppShortcutAsyncTask:Landroid/os/AsyncTask;

    if-eqz v1, :cond_4

    const-string v1, "Launcher.ShortcutMenuLayer"

    const-string v3, "cancel current requesting"

    .line 91
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v1, p0, Lcom/miui/home/launcher/ShortcutMenuLayer;->mRequestAppShortcutAsyncTask:Landroid/os/AsyncTask;

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 95
    :cond_4
    invoke-direct {p0, v8}, Lcom/miui/home/launcher/ShortcutMenuLayer;->setRequestingItemInfo(Lcom/miui/home/launcher/ItemInfo;)V

    .line 97
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ShortcutMenuLayer;->getDragViewLocationInShortcutMenuLayer(Lcom/miui/home/launcher/DragObject;)[F

    move-result-object v4

    .line 98
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ShortcutMenuLayer;->isShortcutIconShowingMessage(Lcom/miui/home/launcher/DragObject;)Z

    move-result v5

    const/4 v1, 0x2

    .line 99
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

    .line 102
    invoke-direct {p0, v8}, Lcom/miui/home/launcher/ShortcutMenuLayer;->obtainCellWidth(Lcom/miui/home/launcher/ItemInfo;)I

    move-result v7

    .line 104
    new-instance p1, Lcom/miui/home/launcher/-$$Lambda$ShortcutMenuLayer$8OxjhgR8XQX7uIkDGDjMweuAwrc;

    invoke-direct {p1, v8}, Lcom/miui/home/launcher/-$$Lambda$ShortcutMenuLayer$8OxjhgR8XQX7uIkDGDjMweuAwrc;-><init>(Lcom/miui/home/launcher/ItemInfo;)V

    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$ShortcutMenuLayer$Nz_iEvHhM---LMvd0hwhWE-2H9A;

    move-object v1, v0

    move-object v2, p0

    move-object v3, v8

    invoke-direct/range {v1 .. v7}, Lcom/miui/home/launcher/-$$Lambda$ShortcutMenuLayer$Nz_iEvHhM---LMvd0hwhWE-2H9A;-><init>(Lcom/miui/home/launcher/ShortcutMenuLayer;Lcom/miui/home/launcher/ItemInfo;[FZ[II)V

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$ShortcutMenuLayer$l_NL_emm96ZYhDWvGSC9nTKru0I;

    invoke-direct {v1, p0, v8}, Lcom/miui/home/launcher/-$$Lambda$ShortcutMenuLayer$l_NL_emm96ZYhDWvGSC9nTKru0I;-><init>(Lcom/miui/home/launcher/ShortcutMenuLayer;Lcom/miui/home/launcher/ItemInfo;)V

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execCancelableTaskParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/ShortcutMenuLayer;->mRequestAppShortcutAsyncTask:Landroid/os/AsyncTask;

    return-void
.end method

.method public showShortcutTip(Landroid/view/View;Ljava/lang/String;)V
    .locals 8

    .line 173
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/ItemInfo;

    if-nez v0, :cond_0

    goto :goto_0

    .line 176
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->setEditingState(I)V

    const/4 v0, 0x2

    .line 178
    new-array v6, v0, [I

    const/4 v1, 0x1

    .line 179
    invoke-static {p1, p0, v6, v1}, Lcom/miui/home/launcher/common/Utilities;->getLocationInParent(Landroid/view/View;Landroid/view/View;[IZ)F

    .line 180
    new-array v4, v0, [F

    const/4 v0, 0x0

    aget v2, v6, v0

    int-to-float v2, v2

    aput v2, v4, v0

    aget v0, v6, v1

    int-to-float v0, v0

    aput v0, v4, v1

    .line 182
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/miui/home/launcher/ItemInfo;

    .line 183
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/ShortcutMenuLayer;->obtainTipShortcutMenu(Ljava/lang/String;)Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;

    move-result-object v3

    const/4 v5, 0x0

    .line 184
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    move-object v1, p0

    .line 183
    invoke-direct/range {v1 .. v7}, Lcom/miui/home/launcher/ShortcutMenuLayer;->showMenuItems(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;[FZ[II)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method
