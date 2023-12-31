.class public Lcom/miui/home/launcher/ShortcutMenuLayer;
.super Lcom/miui/launcher/views/LauncherFrameLayout;
.source "ShortcutMenuLayer.java"

# interfaces
.implements Lcom/miui/home/launcher/DragController$DragListener;
.implements Lcom/miui/launcher/sosc/interfaces/SoscingView;


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

    .line 50
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/ShortcutMenuLayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/ShortcutMenuLayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/launcher/views/LauncherFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 134
    iput-boolean p1, p0, Lcom/miui/home/launcher/ShortcutMenuLayer;->mIsNeedSkipTouch:Z

    .line 59
    invoke-static {}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;->createAllSystemShortcutMenuItems()V

    .line 61
    new-instance p1, Lcom/miui/home/recents/util/SpringAnimationImpl;

    invoke-direct {p1, p0}, Lcom/miui/home/recents/util/SpringAnimationImpl;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/miui/home/launcher/ShortcutMenuLayer;->mSpringAnimationImpl:Lcom/miui/home/recents/util/SpringAnimationImpl;

    return-void
.end method

.method private cancelShortcutMenu(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/shortcuts/CancelShortcutMenuReason;)V
    .locals 2

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelShortcutMenu reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.ShortcutMenuLayer"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x7

    .line 168
    invoke-virtual {v0, v1, p2}, Lcom/miui/home/launcher/Launcher;->cancelShortcutMenu(ILcom/miui/home/launcher/shortcuts/CancelShortcutMenuReason;)V

    .line 170
    :cond_0
    iget-object p2, p0, Lcom/miui/home/launcher/ShortcutMenuLayer;->mRequestingItemInfo:Lcom/miui/home/launcher/ItemInfo;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 171
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ShortcutMenuLayer;->setRequestingItemInfo(Lcom/miui/home/launcher/ItemInfo;)V

    :cond_1
    return-void
.end method

.method private checkMainThread()Z
    .locals 1

    .line 326
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private checkRequestLayoutInWorkerThread()V
    .locals 5

    .line 318
    invoke-direct {p0}, Lcom/miui/home/launcher/ShortcutMenuLayer;->checkMainThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 319
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "should not requestLayout in background thread:"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const-string v1, "requestLayout error"

    const-string v2, "Launcher.ShortcutMenuLayer"

    .line 320
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 321
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutMenuLayer;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutMenuLayer;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutMenuLayer;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/miui/home/launcher/common/Utilities;->getAppVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0, v2, v1, v0}, Lcom/miui/home/library/MiuiHomeLog284Helper;->fileLoggerLevelFatal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method private getDragViewLocationInShortcutMenuLayer(Lcom/miui/home/launcher/DragObject;)[F
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 233
    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/DragObject;->getDragView(I)Lcom/miui/home/launcher/DragView;

    move-result-object p1

    const/4 v1, 0x1

    .line 232
    invoke-static {p1, p0, v0, v1, v1}, Lcom/miui/home/launcher/common/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZZ)F

    return-object v0
.end method

.method private isRequestingShortcutMenuItems()Z
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutMenuLayer;->mRequestingItemInfo:Lcom/miui/home/launcher/ItemInfo;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isShortcutIconShowingMessage(Lcom/miui/home/launcher/DragObject;)Z
    .locals 1

    const/4 p0, 0x0

    .line 239
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/DragObject;->getDragView(I)Lcom/miui/home/launcher/DragView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragView;->getContent()Landroid/view/View;

    move-result-object p1

    .line 240
    instance-of v0, p1, Lcom/miui/home/launcher/ItemIcon;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/miui/home/launcher/ItemIcon;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemIcon;->isMessageVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    :cond_0
    return p0
.end method

.method static synthetic lambda$showShortcutMenu$0(Lcom/miui/home/launcher/ItemInfo;Ljava/lang/Void;)Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;
    .locals 0

    .line 113
    invoke-static {}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->getInstance()Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->getAllShortcutMenuItems(Lcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;

    move-result-object p0

    return-object p0
.end method

.method private loadSoscLayout(Lcom/miui/launcher/sosc/module/SoscEvent;)V
    .locals 4

    .line 335
    iget v0, p1, Lcom/miui/launcher/sosc/module/SoscEvent;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    .line 338
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutMenuLayer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 339
    iget v1, p1, Lcom/miui/launcher/sosc/module/SoscEvent;->state:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v1, v2, :cond_4

    .line 340
    iget-object v1, p1, Lcom/miui/launcher/sosc/module/SoscEvent;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 341
    iget-object v1, p1, Lcom/miui/launcher/sosc/module/SoscEvent;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 342
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutMenuLayer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lmiuix/device/DeviceUtils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 343
    iget p1, p1, Lcom/miui/launcher/sosc/module/SoscEvent;->state:I

    if-ne p1, v3, :cond_1

    const/4 p1, 0x3

    goto :goto_0

    :cond_1
    const/4 p1, 0x5

    :goto_0
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_2

    .line 345
    :cond_2
    iget p1, p1, Lcom/miui/launcher/sosc/module/SoscEvent;->state:I

    if-ne p1, v3, :cond_3

    const/16 p1, 0x30

    goto :goto_1

    :cond_3
    const/16 p1, 0x50

    :goto_1
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_2

    .line 348
    :cond_4
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 349
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 351
    :goto_2
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result p1

    shr-int/2addr p1, v3

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutMenuLayer;->setPivotX(F)V

    .line 352
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenHeight()I

    move-result p1

    shr-int/2addr p1, v3

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutMenuLayer;->setPivotY(F)V

    .line 353
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutMenuLayer;->requestLayout()V

    return-void
.end method

.method private obtainCellWidth(Lcom/miui/home/launcher/ItemInfo;)I
    .locals 0

    .line 121
    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->isInHotseatList()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->isInHotseatRecommend()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 124
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->isInHotseat()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 125
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getHotSeatsCellWidth()I

    move-result p0

    return p0

    .line 127
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellWidth()I

    move-result p0

    return p0

    .line 122
    :cond_2
    :goto_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getHotSeatsListCellWidth()I

    move-result p0

    return p0
.end method

.method private obtainTipShortcutMenu(Ljava/lang/String;)Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;
    .locals 2

    .line 211
    new-instance p0, Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;

    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;-><init>()V

    .line 212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 213
    new-instance v1, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$TipMenuItem;

    invoke-direct {v1, p1}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$TipMenuItem;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;->setSystemShortcutMenuItems(Ljava/util/List;)V

    return-object p0
.end method

.method private onQueryCancel(Lcom/miui/home/launcher/ItemInfo;)V
    .locals 2

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onQueryCancel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.ShortcutMenuLayer"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    new-instance v0, Lcom/miui/home/launcher/shortcuts/CancelShortcutMenuReason;

    const-string v1, "onQueryCancel"

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/shortcuts/CancelShortcutMenuReason;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/ShortcutMenuLayer;->cancelShortcutMenu(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/shortcuts/CancelShortcutMenuReason;)V

    return-void
.end method

.method private onQuerySucceed(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;[FZ[II)V
    .locals 2

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onQuerySucceed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.ShortcutMenuLayer"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-virtual {p2}, Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;->getAllShortcutMenuItemsSize()I

    move-result v0

    if-gtz v0, :cond_0

    .line 180
    new-instance p2, Lcom/miui/home/launcher/shortcuts/CancelShortcutMenuReason;

    const-string p3, "The valid items is 0"

    invoke-direct {p2, p3}, Lcom/miui/home/launcher/shortcuts/CancelShortcutMenuReason;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/ShortcutMenuLayer;->cancelShortcutMenu(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/shortcuts/CancelShortcutMenuReason;)V

    return-void

    .line 183
    :cond_0
    invoke-direct/range {p0 .. p6}, Lcom/miui/home/launcher/ShortcutMenuLayer;->showMenuItems(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;[FZ[II)V

    return-void
.end method

.method private setRequestingItemInfo(Lcom/miui/home/launcher/ItemInfo;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/miui/home/launcher/ShortcutMenuLayer;->mRequestingItemInfo:Lcom/miui/home/launcher/ItemInfo;

    return-void
.end method

.method private showMenuItems(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;[FZ[II)V
    .locals 1

    const/4 v0, 0x0

    .line 190
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/ShortcutMenuLayer;->setRequestingItemInfo(Lcom/miui/home/launcher/ItemInfo;)V

    .line 191
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutMenuLayer;->mShortcutMenu:Lcom/miui/home/launcher/shortcuts/ShortcutMenu;

    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->bindShortcut(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;)V

    .line 192
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutMenuLayer;->mShortcutMenu:Lcom/miui/home/launcher/shortcuts/ShortcutMenu;

    invoke-virtual {p0, p3, p4, p5, p6}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->show([FZ[II)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 143
    iget-boolean v0, p0, Lcom/miui/home/launcher/ShortcutMenuLayer;->mIsNeedSkipTouch:Z

    if-eqz v0, :cond_0

    const-string p1, "Launcher.ShortcutMenuLayer"

    const-string v0, "don\'t dispatch touch because mIsNeedSkipTouch"

    .line 144
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 145
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutMenuLayer;->setIsNeedSkipTouch(Z)V

    return p1

    .line 148
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/launcher/views/LauncherFrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public getBindedItemInfo()Lcom/miui/home/launcher/ItemInfo;
    .locals 0

    .line 262
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutMenuLayer;->mShortcutMenu:Lcom/miui/home/launcher/shortcuts/ShortcutMenu;

    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->getBindedItemInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p0

    return-object p0
.end method

.method public getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutMenuLayer;->mSpringAnimationImpl:Lcom/miui/home/recents/util/SpringAnimationImpl;

    return-object p0
.end method

.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public hideShortcutMenu(Lcom/miui/home/launcher/EditStateChangeReason;)V
    .locals 2

    .line 248
    invoke-direct {p0}, Lcom/miui/home/launcher/ShortcutMenuLayer;->isRequestingShortcutMenuItems()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutMenuLayer;->mRequestAppShortcutAsyncTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 249
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    const/4 v0, 0x0

    .line 251
    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutMenuLayer;->mRequestAppShortcutAsyncTask:Landroid/os/AsyncTask;

    .line 252
    invoke-static {}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;->resetAllSystemShortcutMenuItems()V

    .line 253
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutMenuLayer;->mShortcutMenu:Lcom/miui/home/launcher/shortcuts/ShortcutMenu;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->hide(Lcom/miui/home/launcher/EditStateChangeReason;)V

    return-void
.end method

.method public synthetic lambda$showShortcutMenu$1$ShortcutMenuLayer(Lcom/miui/home/launcher/ItemInfo;[FZ[IILcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p6

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    .line 114
    invoke-direct/range {v0 .. v6}, Lcom/miui/home/launcher/ShortcutMenuLayer;->onQuerySucceed(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;[FZ[II)V

    return-void
.end method

.method public synthetic lambda$showShortcutMenu$2$ShortcutMenuLayer(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;)V
    .locals 0

    .line 115
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ShortcutMenuLayer;->onQueryCancel(Lcom/miui/home/launcher/ItemInfo;)V

    return-void
.end method

.method public onDarkModeChanged()V
    .locals 0

    .line 367
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutMenuLayer;->mShortcutMenu:Lcom/miui/home/launcher/shortcuts/ShortcutMenu;

    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->onDarkModeChanged()V

    return-void
.end method

.method public onDescendantInvalidated(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .line 299
    invoke-super {p0, p1, p2}, Lcom/miui/launcher/views/LauncherFrameLayout;->onDescendantInvalidated(Landroid/view/View;Landroid/view/View;)V

    .line 300
    invoke-direct {p0}, Lcom/miui/home/launcher/ShortcutMenuLayer;->checkMainThread()Z

    move-result p1

    if-nez p1, :cond_0

    .line 301
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "should not invalidate in background thread:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 302
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutMenuLayer;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutMenuLayer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutMenuLayer;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/miui/home/launcher/common/Utilities;->getAppVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "invalidate error"

    const-string v1, "Launcher.ShortcutMenuLayer"

    invoke-static {p2, p0, v1, v0, p1}, Lcom/miui/home/library/MiuiHomeLog284Helper;->fileLoggerLevelFatal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 306
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 382
    invoke-super {p0}, Lcom/miui/launcher/views/LauncherFrameLayout;->onDetachedFromWindow()V

    .line 383
    invoke-static {p0}, Lcom/miui/home/launcher/common/BlurUtilities;->clearAllBlur(Landroid/view/View;)V

    return-void
.end method

.method public onDisplayRotationChanged(I)V
    .locals 1

    .line 131
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
    .locals 1

    .line 267
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutMenuLayer;->getBindedItemInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p0

    .line 268
    instance-of p1, p0, Lcom/miui/home/launcher/ShortcutInfo;

    if-nez p1, :cond_0

    return-void

    .line 269
    :cond_0
    check-cast p0, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 270
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 271
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "show shortcut menu when drop, pkgName="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ShortcutMenu"

    invoke-static {v0, p1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    invoke-static {p0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackShowingShortcutMenuWhenDropIcon(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onDragStart([Lcom/miui/home/launcher/DragSource;Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 70
    invoke-super {p0}, Lcom/miui/launcher/views/LauncherFrameLayout;->onFinishInflate()V

    const v0, 0x7f0a031a

    .line 71
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ShortcutMenuLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;

    iput-object v0, p0, Lcom/miui/home/launcher/ShortcutMenuLayer;->mShortcutMenu:Lcom/miui/home/launcher/shortcuts/ShortcutMenu;

    .line 72
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutMenuLayer;->mShortcutMenu:Lcom/miui/home/launcher/shortcuts/ShortcutMenu;

    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->reset()V

    return-void
.end method

.method public onInterceptSoscEvent(Lcom/miui/launcher/sosc/module/SoscEvent;Lcom/miui/launcher/sosc/module/SoscEvent;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 358
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutMenuLayer;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lmiuix/device/DeviceUtils;->isTablet(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 361
    :cond_0
    iget p0, p1, Lcom/miui/launcher/sosc/module/SoscEvent;->state:I

    const/4 v1, 0x1

    if-nez p0, :cond_1

    iget p0, p2, Lcom/miui/launcher/sosc/module/SoscEvent;->state:I

    if-eq p0, v1, :cond_2

    :cond_1
    iget p0, p1, Lcom/miui/launcher/sosc/module/SoscEvent;->state:I

    if-ne p0, v1, :cond_3

    iget p0, p2, Lcom/miui/launcher/sosc/module/SoscEvent;->state:I

    if-nez p0, :cond_3

    :cond_2
    move v0, v1

    :cond_3
    :goto_0
    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 8

    .line 372
    invoke-super/range {p0 .. p5}, Lcom/miui/launcher/views/LauncherFrameLayout;->onLayout(ZIIII)V

    .line 373
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isBlurSupported()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 375
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutMenuLayer;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070661

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v4, -0x4c89898a

    const/16 v5, 0x64

    const v6, 0x66b4b4b4

    const/16 v7, 0x64

    move-object v0, p0

    .line 374
    invoke-static/range {v0 .. v7}, Lcom/miui/home/launcher/common/BlurUtilities;->setContainerBlur(Landroid/view/View;IZIIIII)V

    .line 376
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isMultiSelectEnabled()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1}, Lcom/miui/home/launcher/common/BlurUtilities;->disableMiBackgroundContainBelow(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public onScreenSizeChanged()V
    .locals 1

    .line 277
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInHalfSoscSplitMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    invoke-static {}, Lcom/miui/home/launcher/LauncherSoscController;->getInstance()Lcom/miui/home/launcher/LauncherSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherSoscController;->getSoscEvent()Lcom/miui/launcher/sosc/module/SoscEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/ShortcutMenuLayer;->loadSoscLayout(Lcom/miui/launcher/sosc/module/SoscEvent;)V

    goto :goto_0

    .line 280
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutMenuLayer;->mShortcutMenu:Lcom/miui/home/launcher/shortcuts/ShortcutMenu;

    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->onScreenSizeChanged()V

    :goto_0
    return-void
.end method

.method public onSoscEvent(Lcom/miui/launcher/sosc/module/SoscEvent;Lcom/miui/launcher/sosc/module/SoscEvent;)V
    .locals 0

    .line 331
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/ShortcutMenuLayer;->loadSoscLayout(Lcom/miui/launcher/sosc/module/SoscEvent;)V

    return-void
.end method

.method public requestLayout()V
    .locals 0

    .line 313
    invoke-direct {p0}, Lcom/miui/home/launcher/ShortcutMenuLayer;->checkRequestLayoutInWorkerThread()V

    .line 314
    invoke-super {p0}, Lcom/miui/launcher/views/LauncherFrameLayout;->requestLayout()V

    return-void
.end method

.method public setIsNeedSkipTouch(Z)V
    .locals 1

    .line 137
    iput-boolean p1, p0, Lcom/miui/home/launcher/ShortcutMenuLayer;->mIsNeedSkipTouch:Z

    .line 138
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isNeedSkipTouch="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Launcher.ShortcutMenuLayer"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setScaleX(F)V
    .locals 1

    .line 286
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutMenuLayer;->getScaleX()F

    move-result v0

    cmpg-float v0, v0, p1

    if-gez v0, :cond_0

    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/view/View;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 287
    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/view/View;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->refreshSearchBarBlur()V

    .line 289
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/launcher/views/LauncherFrameLayout;->setScaleX(F)V

    return-void
.end method

.method public setWithoutAnimNextHide()V
    .locals 0

    .line 244
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutMenuLayer;->mShortcutMenu:Lcom/miui/home/launcher/shortcuts/ShortcutMenu;

    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->setWithoutAnimNextHide()V

    return-void
.end method

.method public showShortcutMenu(Lcom/miui/home/launcher/DragObject;)V
    .locals 10

    .line 76
    invoke-static {p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->canShowShortcutMenu(Lcom/miui/home/launcher/DragObject;)Z

    move-result v0

    const-string v1, "Launcher.ShortcutMenuLayer"

    if-nez v0, :cond_0

    const-string p0, "can not show shortcut menu"

    .line 77
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutMenuLayer;->mShortcutMenu:Lcom/miui/home/launcher/shortcuts/ShortcutMenu;

    invoke-virtual {v0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "shortcut menu already visible"

    .line 82
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 86
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/DragObject;->getDragInfo(I)Lcom/miui/home/launcher/ItemInfo;

    move-result-object v9

    if-nez v9, :cond_2

    const-string p0, "drag item info is null"

    .line 89
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 93
    :cond_2
    iget-object v2, p0, Lcom/miui/home/launcher/ShortcutMenuLayer;->mRequestingItemInfo:Lcom/miui/home/launcher/ItemInfo;

    invoke-virtual {v9, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string p0, "itemInfo already requesting"

    .line 94
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 98
    :cond_3
    invoke-direct {p0}, Lcom/miui/home/launcher/ShortcutMenuLayer;->isRequestingShortcutMenuItems()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/miui/home/launcher/ShortcutMenuLayer;->mRequestAppShortcutAsyncTask:Landroid/os/AsyncTask;

    if-eqz v2, :cond_4

    const-string v2, "cancel current requesting"

    .line 99
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v1, p0, Lcom/miui/home/launcher/ShortcutMenuLayer;->mRequestAppShortcutAsyncTask:Landroid/os/AsyncTask;

    invoke-virtual {v1, v3}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 103
    :cond_4
    invoke-direct {p0, v9}, Lcom/miui/home/launcher/ShortcutMenuLayer;->setRequestingItemInfo(Lcom/miui/home/launcher/ItemInfo;)V

    .line 105
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ShortcutMenuLayer;->getDragViewLocationInShortcutMenuLayer(Lcom/miui/home/launcher/DragObject;)[F

    move-result-object v5

    .line 106
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ShortcutMenuLayer;->isShortcutIconShowingMessage(Lcom/miui/home/launcher/DragObject;)Z

    move-result v6

    const/4 v1, 0x2

    new-array v7, v1, [I

    .line 107
    aget v1, v5, v0

    float-to-int v1, v1

    iget v2, p1, Lcom/miui/home/launcher/DragObject;->xOffset:I

    add-int/2addr v1, v2

    aput v1, v7, v0

    aget v0, v5, v3

    float-to-int v0, v0

    iget p1, p1, Lcom/miui/home/launcher/DragObject;->yOffset:I

    add-int/2addr v0, p1

    aput v0, v7, v3

    .line 110
    invoke-direct {p0, v9}, Lcom/miui/home/launcher/ShortcutMenuLayer;->obtainCellWidth(Lcom/miui/home/launcher/ItemInfo;)I

    move-result v8

    .line 112
    new-instance p1, Lcom/miui/home/launcher/-$$Lambda$ShortcutMenuLayer$8OxjhgR8XQX7uIkDGDjMweuAwrc;

    invoke-direct {p1, v9}, Lcom/miui/home/launcher/-$$Lambda$ShortcutMenuLayer$8OxjhgR8XQX7uIkDGDjMweuAwrc;-><init>(Lcom/miui/home/launcher/ItemInfo;)V

    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$ShortcutMenuLayer$Nz_iEvHhM---LMvd0hwhWE-2H9A;

    move-object v2, v0

    move-object v3, p0

    move-object v4, v9

    invoke-direct/range {v2 .. v8}, Lcom/miui/home/launcher/-$$Lambda$ShortcutMenuLayer$Nz_iEvHhM---LMvd0hwhWE-2H9A;-><init>(Lcom/miui/home/launcher/ShortcutMenuLayer;Lcom/miui/home/launcher/ItemInfo;[FZ[II)V

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$ShortcutMenuLayer$l_NL_emm96ZYhDWvGSC9nTKru0I;

    invoke-direct {v1, p0, v9}, Lcom/miui/home/launcher/-$$Lambda$ShortcutMenuLayer$l_NL_emm96ZYhDWvGSC9nTKru0I;-><init>(Lcom/miui/home/launcher/ShortcutMenuLayer;Lcom/miui/home/launcher/ItemInfo;)V

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execCancelableTaskParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/ShortcutMenuLayer;->mRequestAppShortcutAsyncTask:Landroid/os/AsyncTask;

    return-void
.end method

.method public showShortcutTip(Landroid/view/View;Ljava/lang/String;)V
    .locals 8

    .line 196
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/ItemInfo;

    if-nez v0, :cond_0

    goto :goto_0

    .line 199
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->setEditingState(I)V

    const/4 v0, 0x2

    new-array v6, v0, [I

    const/4 v1, 0x1

    .line 202
    invoke-static {p1, p0, v6, v1}, Lcom/miui/home/launcher/common/Utilities;->getLocationInParent(Landroid/view/View;Landroid/view/View;[IZ)F

    new-array v4, v0, [F

    const/4 v0, 0x0

    .line 203
    aget v2, v6, v0

    int-to-float v2, v2

    aput v2, v4, v0

    aget v0, v6, v1

    int-to-float v0, v0

    aput v0, v4, v1

    .line 205
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/miui/home/launcher/ItemInfo;

    .line 206
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/ShortcutMenuLayer;->obtainTipShortcutMenu(Ljava/lang/String;)Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;

    move-result-object v3

    const/4 v5, 0x0

    .line 207
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    move-object v1, p0

    .line 206
    invoke-direct/range {v1 .. v7}, Lcom/miui/home/launcher/ShortcutMenuLayer;->showMenuItems(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;[FZ[II)V

    :cond_1
    :goto_0
    return-void
.end method
