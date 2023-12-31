.class public Lcom/miui/home/launcher/UninstallDialog;
.super Lcom/miui/launcher/views/LauncherFrameLayout;
.source "UninstallDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;,
        Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mButtons:Landroid/view/View;

.field private mCustomHeight:I

.field private mDescription:Landroid/widget/TextView;

.field private mIconContainer:Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mMessages:Landroid/view/View;

.field private mRemoveItemsWorker:Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;

.field private mShakeAnim:Landroid/animation/ValueAnimator;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/miui/launcher/views/LauncherFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/UninstallDialog;->TAG:Ljava/lang/String;

    const/4 p1, 0x0

    .line 45
    iput p1, p0, Lcom/miui/home/launcher/UninstallDialog;->mCustomHeight:I

    .line 374
    new-instance p1, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;-><init>(Lcom/miui/home/launcher/UninstallDialog;Lcom/miui/home/launcher/UninstallDialog$1;)V

    iput-object p1, p0, Lcom/miui/home/launcher/UninstallDialog;->mRemoveItemsWorker:Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/UninstallDialog;)Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/miui/home/launcher/UninstallDialog;->mIconContainer:Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/UninstallDialog;Landroid/view/View;)Z
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/UninstallDialog;->removeItem(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lcom/miui/home/launcher/UninstallDialog;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/miui/home/launcher/UninstallDialog;->setTitle()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/UninstallDialog;)Lcom/miui/home/launcher/Launcher;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/miui/home/launcher/UninstallDialog;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/UninstallDialog;[Landroid/view/View;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/UninstallDialog;->addItemsWhenCancelUninstallWithoutAnim([Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/UninstallDialog;)Landroid/content/Context;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/miui/home/launcher/UninstallDialog;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/home/launcher/UninstallDialog;)Landroid/content/Context;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/miui/home/launcher/UninstallDialog;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/miui/home/launcher/UninstallDialog;)Landroid/content/Context;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/miui/home/launcher/UninstallDialog;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$700(Lcom/miui/home/launcher/UninstallDialog;)Landroid/content/Context;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/miui/home/launcher/UninstallDialog;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$900(Lcom/miui/home/launcher/UninstallDialog;)Landroid/content/Context;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/miui/home/launcher/UninstallDialog;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private addItemsWhenCancelUninstallWithoutAnim([Landroid/view/View;)V
    .locals 5

    .line 275
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 276
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/ItemInfo;

    .line 277
    instance-of v4, v3, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v4, :cond_0

    .line 278
    iget-object v4, p0, Lcom/miui/home/launcher/UninstallDialog;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v4, v3, v1, v1}, Lcom/miui/home/launcher/Launcher;->addItem(Lcom/miui/home/launcher/ItemInfo;ZZ)Landroid/view/View;

    .line 279
    iget-object v4, p0, Lcom/miui/home/launcher/UninstallDialog;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v4}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 280
    move-object v4, v3

    check-cast v4, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v4}, Lcom/miui/home/launcher/ShortcutInfo;->restoreCheckedStatus()V

    .line 283
    :cond_0
    invoke-virtual {v3}, Lcom/miui/home/launcher/ItemInfo;->finishPending()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private cancelUninstall([Landroid/view/View;Z)V
    .locals 7

    .line 236
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 237
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 239
    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, p1, v4

    .line 240
    iget-object v6, p0, Lcom/miui/home/launcher/UninstallDialog;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v6, v5}, Lcom/miui/home/launcher/Launcher;->getDragSourceForCancelUninstall(Landroid/view/View;)Lcom/miui/home/launcher/DragSource;

    move-result-object v6

    if-eqz v6, :cond_0

    if-eqz p2, :cond_0

    .line 242
    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 244
    :cond_0
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    :goto_1
    instance-of v6, v6, Lcom/miui/home/launcher/hotseats/HotSeats;

    if-nez v6, :cond_1

    instance-of v6, v5, Lcom/miui/home/launcher/ItemIcon;

    if-eqz v6, :cond_1

    .line 247
    check-cast v5, Lcom/miui/home/launcher/ItemIcon;

    invoke-virtual {v5, v3}, Lcom/miui/home/launcher/ItemIcon;->setIsHideTitle(Z)V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 251
    :cond_2
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 252
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/UninstallDialog;->cancelUninstallWithAnim(Ljava/util/HashMap;)V

    .line 255
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 256
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Landroid/view/View;

    .line 257
    invoke-interface {v1, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/UninstallDialog;->addItemsWhenCancelUninstallWithoutAnim([Landroid/view/View;)V

    :cond_4
    return-void
.end method

.method private cancelUninstallWithAnim(Ljava/util/HashMap;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Lcom/miui/home/launcher/DragSource;",
            ">;)V"
        }
    .end annotation

    .line 262
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v0

    new-array v0, v0, [Landroid/view/View;

    .line 263
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v1

    new-array v1, v1, [Lcom/miui/home/launcher/DragSource;

    .line 264
    iget-object v2, p0, Lcom/miui/home/launcher/UninstallDialog;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getDragController()Lcom/miui/home/launcher/DragController;

    move-result-object v2

    .line 265
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, [Landroid/view/View;

    .line 266
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, [Lcom/miui/home/launcher/DragSource;

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v3, v2

    .line 265
    invoke-virtual/range {v3 .. v8}, Lcom/miui/home/launcher/DragController;->autoDrag([Landroid/view/View;[Lcom/miui/home/launcher/DragSource;III)V

    .line 269
    iget-object p0, p0, Lcom/miui/home/launcher/UninstallDialog;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 270
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getDropTargetBar()Lcom/miui/home/launcher/DropTargetBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/DropTargetBar;->getUninstallDialogWrapper()Lcom/miui/home/launcher/UninstallDialogWrapper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/UninstallDialogWrapper;->getShowUninstallDialogAnimDuration()I

    move-result p0

    .line 269
    invoke-virtual {v2, p0}, Lcom/miui/home/launcher/DragController;->setEachDragViewMinDropAnimationDuration(I)V

    .line 271
    invoke-virtual {v2}, Lcom/miui/home/launcher/DragController;->autoDropBack()V

    return-void
.end method

.method private containRelativeXSpace()Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 183
    :goto_0
    iget-object v2, p0, Lcom/miui/home/launcher/UninstallDialog;->mIconContainer:Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;

    invoke-virtual {v2}, Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;->getScreenCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 184
    iget-object v2, p0, Lcom/miui/home/launcher/UninstallDialog;->mIconContainer:Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;->getScreen(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ItemIcon;

    .line 185
    invoke-virtual {v2}, Lcom/miui/home/launcher/ItemIcon;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v3, :cond_0

    .line 186
    invoke-virtual {v2}, Lcom/miui/home/launcher/ItemIcon;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ShortcutInfo;

    .line 187
    invoke-virtual {v2}, Lcom/miui/home/launcher/ShortcutInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/launcher/utils/LauncherUtils;->isXSpaceUser(Landroid/os/UserHandle;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/miui/home/launcher/UninstallDialog;->mContext:Landroid/content/Context;

    .line 188
    invoke-virtual {v2}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/miui/launcher/utils/LauncherUtils;->hasRelativeXSpaceApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method static synthetic lambda$removeItem$0(Lcom/miui/home/launcher/ItemInfo;)V
    .locals 0

    .line 386
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemInfo;->finishPending()V

    return-void
.end method

.method private removeFromDB(Lcom/miui/home/launcher/ItemInfo;)V
    .locals 2

    .line 412
    instance-of v0, p1, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v0, :cond_0

    .line 413
    move-object v0, p1

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 414
    iget-object v1, p0, Lcom/miui/home/launcher/UninstallDialog;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/Launcher;->removeFromAppsList(Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 415
    iget-object v1, v0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 416
    invoke-static {v0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackDeletedShortCut(Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialog;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    .line 420
    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    .line 421
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.xiaomi.market"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 422
    new-instance p1, Lcom/miui/home/launcher/UninstallDialog$3;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/UninstallDialog$3;-><init>(Lcom/miui/home/launcher/UninstallDialog;)V

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/UninstallDialog;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method private removeItem(Landroid/view/View;)Z
    .locals 2

    .line 378
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/ItemInfo;

    .line 379
    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->isApplicatoin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialog;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getUninstallController()Lcom/miui/home/launcher/uninstall/UninstallController;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/uninstall/UninstallController;->uninstallApp(Lcom/miui/home/launcher/ShortcutInfo;)Z

    move-result v0

    goto :goto_0

    .line 381
    :cond_0
    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->isHybirdApp(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 382
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialog;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getUninstallController()Lcom/miui/home/launcher/uninstall/UninstallController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/uninstall/UninstallController;->deleteItem(Lcom/miui/home/launcher/ItemInfo;)V

    :cond_1
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    .line 385
    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$UninstallDialog$b_6a3_enhvUc241lEd37X2DnUIY;

    invoke-direct {v1, p1}, Lcom/miui/home/launcher/-$$Lambda$UninstallDialog$b_6a3_enhvUc241lEd37X2DnUIY;-><init>(Lcom/miui/home/launcher/ItemInfo;)V

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/UninstallDialog;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return v0
.end method

.method private setIcon(Lcom/miui/home/launcher/ItemIcon;)V
    .locals 1

    .line 220
    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemIcon;->onlyShowIconWhenDrawChild()V

    .line 222
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialog;->mIconContainer:Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;->addView(Landroid/view/View;)V

    .line 223
    invoke-direct {p0}, Lcom/miui/home/launcher/UninstallDialog;->setTitle()V

    return-void
.end method

.method private setTitle()V
    .locals 9

    .line 130
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialog;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDropTargetBar()Lcom/miui/home/launcher/DropTargetBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/DropTargetBar;->isUninstallMode()Z

    move-result v0

    .line 131
    iget-object v1, p0, Lcom/miui/home/launcher/UninstallDialog;->mButtons:Landroid/view/View;

    const v2, 0x7f0a00a6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    if-eqz v0, :cond_0

    const v2, 0x7f1104e0

    goto :goto_0

    :cond_0
    const v2, 0x7f110490

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 132
    iget-object v1, p0, Lcom/miui/home/launcher/UninstallDialog;->mIconContainer:Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;->getScreen(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ItemIcon;

    .line 133
    iget-object v3, p0, Lcom/miui/home/launcher/UninstallDialog;->mIconContainer:Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;

    invoke-virtual {v3}, Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;->getScreenCount()I

    move-result v3

    .line 135
    invoke-virtual {v1}, Lcom/miui/home/launcher/ItemIcon;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v4, :cond_1

    .line 136
    invoke-virtual {v1}, Lcom/miui/home/launcher/ItemIcon;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/home/launcher/ShortcutInfo;

    .line 137
    iget-object v5, p0, Lcom/miui/home/launcher/UninstallDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/miui/home/launcher/ShortcutInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_1

    .line 139
    :cond_1
    invoke-virtual {v1}, Lcom/miui/home/launcher/ItemIcon;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    .line 140
    iget-object v5, p0, Lcom/miui/home/launcher/UninstallDialog;->mContext:Landroid/content/Context;

    iget-object v6, v4, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v6, v6, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v4, v4, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v4}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v4

    invoke-static {v5, v6, v4}, Lcom/miui/home/launcher/ScreenUtils;->getProviderName(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 142
    :goto_1
    iget-object v5, p0, Lcom/miui/home/launcher/UninstallDialog;->mDescription:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    move v6, v2

    goto :goto_2

    :cond_2
    const/16 v6, 0x8

    :goto_2
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    const v5, 0x7f1104e5

    const v6, 0x7f1104e1

    const/4 v7, 0x1

    if-le v3, v7, :cond_5

    if-nez v0, :cond_3

    .line 145
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/UninstallDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0f0016

    new-array v7, v7, [Ljava/lang/Object;

    .line 146
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-virtual {v1, v4, v3, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 145
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 148
    :cond_3
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/UninstallDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0f0018

    new-array v7, v7, [Ljava/lang/Object;

    .line 149
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-virtual {v1, v4, v3, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 148
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    :goto_3
    invoke-direct {p0}, Lcom/miui/home/launcher/UninstallDialog;->containRelativeXSpace()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 152
    iget-object p0, p0, Lcom/miui/home/launcher/UninstallDialog;->mDescription:Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_4

    .line 154
    :cond_4
    iget-object p0, p0, Lcom/miui/home/launcher/UninstallDialog;->mDescription:Landroid/widget/TextView;

    invoke-virtual {p0, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_4

    :cond_5
    if-ne v3, v7, :cond_8

    if-nez v0, :cond_6

    .line 159
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialog;->mTitle:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/miui/home/launcher/UninstallDialog;->mContext:Landroid/content/Context;

    const v1, 0x7f110417

    .line 160
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-array v1, v7, [Ljava/lang/Object;

    aput-object v4, v1, v2

    .line 159
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 163
    :cond_6
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialog;->mTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/miui/home/launcher/UninstallDialog;->mContext:Landroid/content/Context;

    const v8, 0x7f1104e2

    .line 164
    invoke-virtual {v3, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v8, v7, [Ljava/lang/Object;

    aput-object v4, v8, v2

    .line 163
    invoke-static {v3, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialog;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    .line 167
    invoke-virtual {v1}, Lcom/miui/home/launcher/ItemIcon;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v0, :cond_8

    .line 168
    invoke-virtual {v1}, Lcom/miui/home/launcher/ItemIcon;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 169
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/launcher/utils/LauncherUtils;->isXSpaceUser(Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 170
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialog;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/home/launcher/UninstallDialog;->mContext:Landroid/content/Context;

    .line 171
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f1104e7

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v4, v3, v2

    .line 170
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object p0, p0, Lcom/miui/home/launcher/UninstallDialog;->mDescription:Landroid/widget/TextView;

    const v0, 0x7f1104e6

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    .line 174
    :cond_7
    iget-object v1, p0, Lcom/miui/home/launcher/UninstallDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/launcher/utils/LauncherUtils;->hasRelativeXSpaceApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 175
    iget-object p0, p0, Lcom/miui/home/launcher/UninstallDialog;->mDescription:Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setText(I)V

    :cond_8
    :goto_4
    return-void
.end method


# virtual methods
.method public bindItem(Lcom/miui/home/launcher/DragObject;)Z
    .locals 4

    .line 111
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    .line 112
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/DragView;->getContent()Landroid/view/View;

    move-result-object v1

    .line 113
    instance-of v2, v1, Lcom/miui/home/launcher/ItemIcon;

    if-eqz v2, :cond_0

    .line 114
    check-cast v1, Lcom/miui/home/launcher/ItemIcon;

    invoke-virtual {v1}, Lcom/miui/home/launcher/ItemIcon;->onlyShowIconWhenDrawChild()V

    :cond_0
    const/4 v1, 0x0

    .line 117
    instance-of v2, v0, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v2, :cond_1

    .line 118
    iget-object v1, p0, Lcom/miui/home/launcher/UninstallDialog;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object v2, p0, Lcom/miui/home/launcher/UninstallDialog;->mIconContainer:Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;

    invoke-virtual {v1, v2, v0}, Lcom/miui/home/launcher/Launcher;->createItemIcon(Landroid/view/ViewGroup;Lcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/ItemIcon;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_2

    .line 121
    iget-object v2, p0, Lcom/miui/home/launcher/UninstallDialog;->mIconContainer:Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;

    iget v3, v0, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iget v0, v0, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    invoke-virtual {v2, v3, v0}, Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;->updateSpanXY(II)V

    .line 122
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/UninstallDialog;->setIcon(Lcom/miui/home/launcher/ItemIcon;)V

    .line 123
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/DragView;->setAnimateTarget(Landroid/view/View;)Z

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public cancelUninstall(Z)V
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialog;->mIconContainer:Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;->getAllScreens()[Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/UninstallDialog;->cancelUninstall([Landroid/view/View;Z)V

    .line 232
    iget-object p0, p0, Lcom/miui/home/launcher/UninstallDialog;->mIconContainer:Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;

    invoke-virtual {p0}, Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;->removeAllScreens()V

    return-void
.end method

.method public checkUninstallApp()I
    .locals 3

    const/4 v0, 0x0

    .line 198
    :goto_0
    iget-object v1, p0, Lcom/miui/home/launcher/UninstallDialog;->mIconContainer:Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;

    invoke-virtual {v1}, Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 199
    iget-object v1, p0, Lcom/miui/home/launcher/UninstallDialog;->mIconContainer:Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;->getScreen(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ItemIcon;

    .line 200
    invoke-virtual {v1}, Lcom/miui/home/launcher/ItemIcon;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ItemInfo;

    iget-object v2, p0, Lcom/miui/home/launcher/UninstallDialog;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v1, v2}, Lcom/miui/home/launcher/uninstall/UninstallController;->isSecondConfirmationDialog(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Launcher;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    :goto_1
    return p0
.end method

.method protected correctFrame(IIII)Landroid/graphics/Rect;
    .locals 0

    .line 65
    new-instance p4, Landroid/graphics/Rect;

    iget p0, p0, Lcom/miui/home/launcher/UninstallDialog;->mCustomHeight:I

    add-int/2addr p0, p2

    invoke-direct {p4, p1, p2, p3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p4
.end method

.method public getAllInfos()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 210
    :goto_0
    iget-object v2, p0, Lcom/miui/home/launcher/UninstallDialog;->mIconContainer:Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;

    invoke-virtual {v2}, Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;->getScreenCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 211
    iget-object v2, p0, Lcom/miui/home/launcher/UninstallDialog;->mIconContainer:Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;->getScreen(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 212
    instance-of v3, v2, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v3, :cond_0

    .line 213
    check-cast v2, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getIconContainer()Landroid/view/ViewGroup;
    .locals 0

    .line 439
    iget-object p0, p0, Lcom/miui/home/launcher/UninstallDialog;->mIconContainer:Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;

    return-object p0
.end method

.method public getUninstallItemCount()I
    .locals 0

    .line 227
    iget-object p0, p0, Lcom/miui/home/launcher/UninstallDialog;->mIconContainer:Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;

    invoke-virtual {p0}, Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;->getScreenCount()I

    move-result p0

    return p0
.end method

.method public onConfirm(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .line 288
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialog;->mIconContainer:Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;->removeOutAllScreens()[Landroid/view/View;

    move-result-object v0

    .line 289
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const/4 v1, 0x0

    .line 290
    aget-object v2, v0, v1

    check-cast v2, Lcom/miui/home/launcher/ItemIcon;

    if-eqz p1, :cond_0

    .line 291
    invoke-virtual {v2}, Lcom/miui/home/launcher/ItemIcon;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    aget-object p1, v0, v1

    .line 292
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/UninstallDialog;->removeItem(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 293
    :cond_1
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/UninstallDialog;->addItemsWhenCancelUninstallWithoutAnim([Landroid/view/View;)V

    goto :goto_0

    .line 295
    :cond_2
    array-length v1, v0

    if-le v1, v2, :cond_3

    .line 296
    iget-object p0, p0, Lcom/miui/home/launcher/UninstallDialog;->mRemoveItemsWorker:Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->remove([Landroid/view/View;Ljava/util/List;)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 70
    invoke-super {p0}, Lcom/miui/launcher/views/LauncherFrameLayout;->onFinishInflate()V

    const v0, 0x7f0a038f

    .line 71
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/UninstallDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/UninstallDialog;->mTitle:Landroid/widget/TextView;

    const v0, 0x7f0a010b

    .line 72
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/UninstallDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/UninstallDialog;->mDescription:Landroid/widget/TextView;

    const v0, 0x7f0a0106

    .line 73
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/UninstallDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;

    iput-object v0, p0, Lcom/miui/home/launcher/UninstallDialog;->mIconContainer:Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;

    .line 74
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialog;->mIconContainer:Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;->setScreenLayoutMode(I)V

    .line 75
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialog;->mIconContainer:Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;->setEnableReverseDrawingMode(Z)V

    .line 76
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialog;->mIconContainer:Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;

    iput-object p0, v0, Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;->mUninstallDialog:Lcom/miui/home/launcher/UninstallDialog;

    const v0, 0x7f0a022e

    .line 77
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/UninstallDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/UninstallDialog;->mMessages:Landroid/view/View;

    const v0, 0x7f0a00ae

    .line 78
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/UninstallDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/UninstallDialog;->mButtons:Landroid/view/View;

    new-array v0, v1, [F

    .line 79
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/UninstallDialog;->mShakeAnim:Landroid/animation/ValueAnimator;

    .line 80
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialog;->mShakeAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/home/launcher/UninstallDialog$1;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/UninstallDialog$1;-><init>(Lcom/miui/home/launcher/UninstallDialog;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 88
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialog;->mShakeAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/home/launcher/UninstallDialog$2;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/UninstallDialog$2;-><init>(Lcom/miui/home/launcher/UninstallDialog;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 95
    invoke-virtual {p0}, Lcom/miui/home/launcher/UninstallDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 96
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->doLauncherHavePaddingTopForStatusBarAndNotch()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0706d9

    goto :goto_0

    :cond_0
    const v1, 0x7f0706d8

    .line 95
    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/ViewFunctions;->setViewPaddingTop(Landroid/view/View;I)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onShow(ZZLjava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    .line 444
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialog;->mIconContainer:Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;->setScaleX(F)V

    .line 445
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialog;->mIconContainer:Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;->setScaleY(F)V

    .line 446
    iget-object p0, p0, Lcom/miui/home/launcher/UninstallDialog;->mIconContainer:Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;->setAlpha(F)V

    goto/16 :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 447
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportCompleteAnimation()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 448
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialog;->mShakeAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 449
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialog;->mIconContainer:Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;

    invoke-virtual {p1}, Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v1, 0x96

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 450
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialog;->mIconContainer:Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;

    invoke-static {p1, v0}, Lcom/miui/home/launcher/DragController;->createViewBitmap(Landroid/view/View;F)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 p2, 0x2

    new-array p2, p2, [I

    .line 452
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialog;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v0

    .line 453
    iget-object v3, p0, Lcom/miui/home/launcher/UninstallDialog;->mIconContainer:Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;

    const/4 v4, 0x0

    invoke-static {v3, v0, p2, v4}, Lcom/miui/home/launcher/common/Utilities;->getLocationInParent(Landroid/view/View;Landroid/view/View;[IZ)F

    .line 454
    new-instance v3, Landroid/graphics/Rect;

    aget v5, p2, v4

    const/4 v6, 0x1

    aget v7, p2, v6

    aget v8, p2, v4

    iget-object v9, p0, Lcom/miui/home/launcher/UninstallDialog;->mIconContainer:Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;

    invoke-virtual {v9}, Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    aget p2, p2, v6

    iget-object v6, p0, Lcom/miui/home/launcher/UninstallDialog;->mIconContainer:Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;

    invoke-virtual {v6}, Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;->getHeight()I

    move-result v6

    add-int/2addr p2, v6

    invoke-direct {v3, v5, v7, v8, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 455
    iget p2, v3, Landroid/graphics/Rect;->bottom:I

    iget v5, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr p2, v5

    iput p2, v3, Landroid/graphics/Rect;->bottom:I

    .line 456
    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 457
    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 458
    invoke-virtual {v0}, Lcom/miui/home/launcher/DragLayer;->getWidth()I

    move-result p2

    iput p2, v3, Landroid/graphics/Rect;->right:I

    .line 459
    new-instance p2, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks;

    invoke-direct {p2, v0, p1, v3}, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks;-><init>(Landroid/view/View;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    .line 460
    invoke-virtual {v0, p2}, Lcom/miui/home/launcher/DragLayer;->attachParasiticDrawingObject(Lcom/miui/home/launcher/common/ParasiticDrawingObject;)V

    .line 461
    invoke-virtual {p2, v1, v2}, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks;->setStartDelay(J)V

    const-wide/16 v0, 0x44c

    .line 462
    invoke-virtual {p2, v0, v1}, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 463
    new-instance p1, Lcom/miui/home/launcher/UninstallDialog$4;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/UninstallDialog$4;-><init>(Lcom/miui/home/launcher/UninstallDialog;)V

    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 472
    invoke-virtual {p2}, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks;->start()V

    .line 473
    invoke-virtual {p0, p3}, Lcom/miui/home/launcher/UninstallDialog;->onConfirm(Ljava/util/List;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public removeDragItem(Lcom/miui/home/launcher/DragObject;Lcom/miui/home/launcher/ItemInfo;Z)V
    .locals 3

    .line 394
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragSource()Lcom/miui/home/launcher/DragSource;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/Folder;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialog;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v1

    iget-wide v1, v1, Lcom/miui/home/launcher/ItemInfo;->container:J

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/Launcher;->getFolderInfoById(J)Lcom/miui/home/launcher/FolderInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 399
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/FolderInfo;->remove(Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 400
    iget-object v1, p0, Lcom/miui/home/launcher/UninstallDialog;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/FolderInfo;->getAdapter(Landroid/content/Context;)Lcom/miui/home/launcher/ShortcutsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutsAdapter;->notifyDataSetChanged()V

    :cond_0
    if-eqz p3, :cond_1

    .line 404
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/UninstallDialog;->removeFromDB(Lcom/miui/home/launcher/ItemInfo;)V

    .line 405
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragSource()Lcom/miui/home/launcher/DragSource;

    move-result-object p1

    instance-of p1, p1, Lcom/miui/home/launcher/Workspace;

    if-eqz p1, :cond_1

    iget p1, p2, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    const/4 p3, 0x1

    if-ne p1, p3, :cond_1

    iget p1, p2, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    if-ne p1, p3, :cond_1

    .line 406
    iget-object p0, p0, Lcom/miui/home/launcher/UninstallDialog;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/Launcher;->fillEmpty(Lcom/miui/home/launcher/ItemInfo;)V

    :cond_1
    return-void
.end method

.method public setContentAlpha(F)V
    .locals 1

    .line 434
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialog;->mMessages:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 435
    iget-object p0, p0, Lcom/miui/home/launcher/UninstallDialog;->mButtons:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public setLauncher(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/miui/home/launcher/UninstallDialog;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-void
.end method

.method public stretctHeightTo(I)V
    .locals 4

    .line 106
    iput p1, p0, Lcom/miui/home/launcher/UninstallDialog;->mCustomHeight:I

    .line 107
    invoke-virtual {p0}, Lcom/miui/home/launcher/UninstallDialog;->getLeft()I

    move-result p1

    invoke-virtual {p0}, Lcom/miui/home/launcher/UninstallDialog;->getTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/UninstallDialog;->getRight()I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/UninstallDialog;->getTop()I

    move-result v2

    iget v3, p0, Lcom/miui/home/launcher/UninstallDialog;->mCustomHeight:I

    add-int/2addr v2, v3

    invoke-super {p0, p1, v0, v1, v2}, Lcom/miui/launcher/views/LauncherFrameLayout;->setFrame(IIII)Z

    return-void
.end method
