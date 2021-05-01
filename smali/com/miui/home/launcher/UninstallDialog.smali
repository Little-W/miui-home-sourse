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

.field private mIsEnableSoundEffect:Z

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mMessages:Landroid/view/View;

.field private mRemoveItemsWorker:Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;

.field private mShakeAnim:Landroid/animation/ValueAnimator;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/miui/launcher/views/LauncherFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/UninstallDialog;->TAG:Ljava/lang/String;

    const/4 p1, 0x0

    .line 48
    iput p1, p0, Lcom/miui/home/launcher/UninstallDialog;->mCustomHeight:I

    const/4 p1, 0x1

    .line 58
    iput-boolean p1, p0, Lcom/miui/home/launcher/UninstallDialog;->mIsEnableSoundEffect:Z

    .line 377
    new-instance p1, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;-><init>(Lcom/miui/home/launcher/UninstallDialog;Lcom/miui/home/launcher/UninstallDialog$1;)V

    iput-object p1, p0, Lcom/miui/home/launcher/UninstallDialog;->mRemoveItemsWorker:Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/UninstallDialog;)Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/miui/home/launcher/UninstallDialog;->mIconContainer:Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/UninstallDialog;Landroid/view/View;)Z
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/UninstallDialog;->removeItem(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lcom/miui/home/launcher/UninstallDialog;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lcom/miui/home/launcher/UninstallDialog;->mIsEnableSoundEffect:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/miui/home/launcher/UninstallDialog;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/miui/home/launcher/UninstallDialog;->setTitle()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/UninstallDialog;)Lcom/miui/home/launcher/Launcher;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/miui/home/launcher/UninstallDialog;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/UninstallDialog;[Landroid/view/View;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/UninstallDialog;->addItemsWhenCancelUninstallWithoutAnim([Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/UninstallDialog;)Landroid/content/Context;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/miui/home/launcher/UninstallDialog;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/home/launcher/UninstallDialog;)Landroid/content/Context;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/miui/home/launcher/UninstallDialog;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/miui/home/launcher/UninstallDialog;)Landroid/content/Context;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/miui/home/launcher/UninstallDialog;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$700(Lcom/miui/home/launcher/UninstallDialog;)Landroid/content/Context;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/miui/home/launcher/UninstallDialog;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$900(Lcom/miui/home/launcher/UninstallDialog;)Landroid/content/Context;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/miui/home/launcher/UninstallDialog;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private addItemsWhenCancelUninstallWithoutAnim([Landroid/view/View;)V
    .locals 5

    .line 278
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 279
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/ItemInfo;

    .line 280
    instance-of v4, v3, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v4, :cond_0

    .line 281
    iget-object v4, p0, Lcom/miui/home/launcher/UninstallDialog;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v4, v3, v1, v1}, Lcom/miui/home/launcher/Launcher;->addItem(Lcom/miui/home/launcher/ItemInfo;ZZ)Landroid/view/View;

    .line 282
    iget-object v4, p0, Lcom/miui/home/launcher/UninstallDialog;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v4}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 283
    move-object v4, v3

    check-cast v4, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v4}, Lcom/miui/home/launcher/ShortcutInfo;->restoreCheckedStatus()V

    .line 286
    :cond_0
    invoke-virtual {v3}, Lcom/miui/home/launcher/ItemInfo;->finishPending()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private cancelUninstall([Landroid/view/View;)V
    .locals 6

    .line 242
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 243
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 245
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p1, v3

    .line 246
    iget-object v5, p0, Lcom/miui/home/launcher/UninstallDialog;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v5, v4}, Lcom/miui/home/launcher/Launcher;->getDragSourceForCancelUninstall(Landroid/view/View;)Lcom/miui/home/launcher/DragSource;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 248
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 250
    :cond_0
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 254
    :cond_1
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 255
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/UninstallDialog;->cancelUninstallWithAnim(Ljava/util/HashMap;)V

    .line 258
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 259
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Landroid/view/View;

    .line 260
    invoke-interface {v1, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/UninstallDialog;->addItemsWhenCancelUninstallWithoutAnim([Landroid/view/View;)V

    :cond_3
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

    .line 265
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v0

    new-array v0, v0, [Landroid/view/View;

    .line 266
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v1

    new-array v1, v1, [Lcom/miui/home/launcher/DragSource;

    .line 267
    iget-object v2, p0, Lcom/miui/home/launcher/UninstallDialog;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getDragController()Lcom/miui/home/launcher/DragController;

    move-result-object v2

    .line 268
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, [Landroid/view/View;

    .line 269
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

    .line 268
    invoke-virtual/range {v3 .. v8}, Lcom/miui/home/launcher/DragController;->autoDrag([Landroid/view/View;[Lcom/miui/home/launcher/DragSource;III)V

    .line 272
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialog;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 273
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getDropTargetBar()Lcom/miui/home/launcher/DropTargetBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/DropTargetBar;->getUninstallDialogWrapper()Lcom/miui/home/launcher/UninstallDialogWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/UninstallDialogWrapper;->getShowUninstallDialogAnimDuration()I

    move-result p1

    .line 272
    invoke-virtual {v2, p1}, Lcom/miui/home/launcher/DragController;->setEachDragViewMinDropAnimationDuration(I)V

    .line 274
    invoke-virtual {v2}, Lcom/miui/home/launcher/DragController;->autoDropBack()V

    return-void
.end method

.method private containRelativeXSpace()Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 189
    :goto_0
    iget-object v2, p0, Lcom/miui/home/launcher/UninstallDialog;->mIconContainer:Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;

    invoke-virtual {v2}, Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;->getScreenCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 190
    iget-object v2, p0, Lcom/miui/home/launcher/UninstallDialog;->mIconContainer:Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;->getScreen(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ItemIcon;

    .line 191
    invoke-virtual {v2}, Lcom/miui/home/launcher/ItemIcon;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v3, :cond_0

    .line 192
    invoke-virtual {v2}, Lcom/miui/home/launcher/ItemIcon;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ShortcutInfo;

    .line 193
    invoke-virtual {v2}, Lcom/miui/home/launcher/ShortcutInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/launcher/utils/LauncherUtils;->isXSpaceUser(Landroid/os/UserHandle;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/miui/home/launcher/UninstallDialog;->mContext:Landroid/content/Context;

    .line 194
    invoke-virtual {v2}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/miui/launcher/utils/LauncherUtils;->hasRelativeXSpaceApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method static synthetic lambda$removeItem$293(Lcom/miui/home/launcher/ItemInfo;)V
    .locals 0

    .line 389
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemInfo;->finishPending()V

    return-void
.end method

.method private removeFromDB(Lcom/miui/home/launcher/ItemInfo;)V
    .locals 3

    .line 415
    instance-of v0, p1, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v0, :cond_0

    .line 416
    move-object v0, p1

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 417
    iget-object v1, p0, Lcom/miui/home/launcher/UninstallDialog;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/Launcher;->removeFromAppsList(Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 418
    iget-object v1, v0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 419
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getIconPackage()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackDeletedShortCut(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialog;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    .line 423
    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string v0, "com.xiaomi.market"

    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    .line 424
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 425
    new-instance p1, Lcom/miui/home/launcher/UninstallDialog$3;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/UninstallDialog$3;-><init>(Lcom/miui/home/launcher/UninstallDialog;)V

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/UninstallDialog;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method private removeItem(Landroid/view/View;)Z
    .locals 2

    .line 381
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/ItemInfo;

    .line 382
    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->isApplicatoin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialog;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getUninstallController()Lcom/miui/home/launcher/uninstall/UninstallController;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/uninstall/UninstallController;->uninstallApp(Lcom/miui/home/launcher/ShortcutInfo;)Z

    move-result v0

    goto :goto_0

    .line 384
    :cond_0
    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->isHybirdApp(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 385
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialog;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getUninstallController()Lcom/miui/home/launcher/uninstall/UninstallController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/uninstall/UninstallController;->deleteItem(Lcom/miui/home/launcher/ItemInfo;)V

    :cond_1
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    .line 388
    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$UninstallDialog$GHNfBH9zJhdfrKWIyAYgmwHxFaY;

    invoke-direct {v1, p1}, Lcom/miui/home/launcher/-$$Lambda$UninstallDialog$GHNfBH9zJhdfrKWIyAYgmwHxFaY;-><init>(Lcom/miui/home/launcher/ItemInfo;)V

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/UninstallDialog;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return v0
.end method

.method private setIcon(Lcom/miui/home/launcher/ItemIcon;)V
    .locals 1

    .line 226
    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemIcon;->onlyShowIconWhenDrawChild()V

    .line 228
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialog;->mIconContainer:Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;->addView(Landroid/view/View;)V

    .line 229
    invoke-direct {p0}, Lcom/miui/home/launcher/UninstallDialog;->setTitle()V

    return-void
.end method

.method private setTitle()V
    .locals 11

    .line 134
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialog;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDropTargetBar()Lcom/miui/home/launcher/DropTargetBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/DropTargetBar;->isUninstallMode()Z

    move-result v0

    .line 135
    iget-object v1, p0, Lcom/miui/home/launcher/UninstallDialog;->mButtons:Landroid/view/View;

    const v2, 0x7f0a0067

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    if-eqz v0, :cond_0

    const v2, 0x7f100274

    goto :goto_0

    :cond_0
    const v2, 0x7f100263

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 136
    iget-object v1, p0, Lcom/miui/home/launcher/UninstallDialog;->mIconContainer:Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;->getScreen(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ItemIcon;

    .line 137
    iget-object v3, p0, Lcom/miui/home/launcher/UninstallDialog;->mIconContainer:Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;

    invoke-virtual {v3}, Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;->getScreenCount()I

    move-result v3

    .line 139
    invoke-virtual {v1}, Lcom/miui/home/launcher/ItemIcon;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v4, :cond_1

    .line 140
    invoke-virtual {v1}, Lcom/miui/home/launcher/ItemIcon;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/home/launcher/ShortcutInfo;

    .line 141
    iget-object v5, p0, Lcom/miui/home/launcher/UninstallDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/miui/home/launcher/ShortcutInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_1

    .line 143
    :cond_1
    invoke-virtual {v1}, Lcom/miui/home/launcher/ItemIcon;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    .line 144
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

    :goto_1
    const v5, 0x7f100279

    const v6, 0x7f10021a

    const v7, 0x7f100275

    const/4 v8, 0x1

    if-le v3, v8, :cond_5

    if-nez v0, :cond_2

    .line 148
    iget-object v1, p0, Lcom/miui/home/launcher/UninstallDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/UninstallDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v9, 0x7f0e0004

    new-array v8, v8, [Ljava/lang/Object;

    .line 149
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v2

    invoke-virtual {v4, v9, v3, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 148
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 151
    :cond_2
    iget-object v1, p0, Lcom/miui/home/launcher/UninstallDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/UninstallDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v9, 0x7f0e0006

    new-array v8, v8, [Ljava/lang/Object;

    .line 152
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v2

    invoke-virtual {v4, v9, v3, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 151
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    if-nez v0, :cond_3

    .line 155
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialog;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3

    .line 156
    :cond_3
    invoke-direct {p0}, Lcom/miui/home/launcher/UninstallDialog;->containRelativeXSpace()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 157
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialog;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3

    .line 159
    :cond_4
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialog;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3

    :cond_5
    if-ne v3, v8, :cond_8

    if-nez v0, :cond_6

    .line 164
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialog;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/home/launcher/UninstallDialog;->mContext:Landroid/content/Context;

    const v3, 0x7f10021b

    .line 165
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v4, v3, v2

    .line 164
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialog;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 169
    :cond_6
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialog;->mTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/miui/home/launcher/UninstallDialog;->mContext:Landroid/content/Context;

    const v6, 0x7f100276

    .line 170
    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v4, v6, v2

    .line 169
    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialog;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(I)V

    .line 173
    invoke-virtual {v1}, Lcom/miui/home/launcher/ItemIcon;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v0, :cond_8

    .line 174
    invoke-virtual {v1}, Lcom/miui/home/launcher/ItemIcon;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 175
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/launcher/utils/LauncherUtils;->isXSpaceUser(Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 176
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialog;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/home/launcher/UninstallDialog;->mContext:Landroid/content/Context;

    .line 177
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f10027b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v4, v3, v2

    .line 176
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialog;->mDescription:Landroid/widget/TextView;

    const v1, 0x7f10027a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 180
    :cond_7
    iget-object v1, p0, Lcom/miui/home/launcher/UninstallDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/launcher/utils/LauncherUtils;->hasRelativeXSpaceApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 181
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialog;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    :cond_8
    :goto_3
    return-void
.end method


# virtual methods
.method public bindItem(Lcom/miui/home/launcher/DragObject;)Z
    .locals 3

    .line 116
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    .line 117
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/DragView;->getContent()Landroid/view/View;

    move-result-object v1

    .line 118
    instance-of v2, v1, Lcom/miui/home/launcher/ItemIcon;

    if-eqz v2, :cond_0

    .line 119
    check-cast v1, Lcom/miui/home/launcher/ItemIcon;

    invoke-virtual {v1}, Lcom/miui/home/launcher/ItemIcon;->onlyShowIconWhenDrawChild()V

    :cond_0
    const/4 v1, 0x0

    .line 122
    instance-of v2, v0, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v2, :cond_1

    .line 123
    iget-object v1, p0, Lcom/miui/home/launcher/UninstallDialog;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object v2, p0, Lcom/miui/home/launcher/UninstallDialog;->mIconContainer:Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;

    invoke-virtual {v1, v2, v0}, Lcom/miui/home/launcher/Launcher;->createItemIcon(Landroid/view/ViewGroup;Lcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/ItemIcon;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_2

    .line 126
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/UninstallDialog;->setIcon(Lcom/miui/home/launcher/ItemIcon;)V

    .line 127
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/DragView;->setAnimateTarget(Landroid/view/View;)Z

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public cancelUninstall()V
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialog;->mIconContainer:Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;->getAllScreens()[Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/UninstallDialog;->cancelUninstall([Landroid/view/View;)V

    .line 238
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialog;->mIconContainer:Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;->removeAllScreens()V

    return-void
.end method

.method public checkUninstallApp()I
    .locals 3

    const/4 v0, 0x0

    .line 204
    :goto_0
    iget-object v1, p0, Lcom/miui/home/launcher/UninstallDialog;->mIconContainer:Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;

    invoke-virtual {v1}, Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 205
    iget-object v1, p0, Lcom/miui/home/launcher/UninstallDialog;->mIconContainer:Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;->getScreen(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ItemIcon;

    .line 206
    invoke-virtual {v1}, Lcom/miui/home/launcher/ItemIcon;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ItemInfo;

    iget-object v2, p0, Lcom/miui/home/launcher/UninstallDialog;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v1, v2}, Lcom/miui/home/launcher/uninstall/UninstallController;->isSecondConfirmationDialog(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Launcher;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_1
    return v0
.end method

.method protected correctFrame(IIII)Landroid/graphics/Rect;
    .locals 1

    .line 69
    new-instance p4, Landroid/graphics/Rect;

    iget v0, p0, Lcom/miui/home/launcher/UninstallDialog;->mCustomHeight:I

    add-int/2addr v0, p2

    invoke-direct {p4, p1, p2, p3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

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

    .line 215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 216
    :goto_0
    iget-object v2, p0, Lcom/miui/home/launcher/UninstallDialog;->mIconContainer:Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;

    invoke-virtual {v2}, Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;->getScreenCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 217
    iget-object v2, p0, Lcom/miui/home/launcher/UninstallDialog;->mIconContainer:Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;->getScreen(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 218
    instance-of v3, v2, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v3, :cond_0

    .line 219
    check-cast v2, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getIconContainer()Landroid/view/ViewGroup;
    .locals 1

    .line 442
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialog;->mIconContainer:Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;

    return-object v0
.end method

.method public getUninstallItemCount()I
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialog;->mIconContainer:Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;->getScreenCount()I

    move-result v0

    return v0
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

    .line 291
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialog;->mIconContainer:Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;->removeOutAllScreens()[Landroid/view/View;

    move-result-object v0

    .line 292
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const/4 v1, 0x0

    .line 293
    aget-object v2, v0, v1

    check-cast v2, Lcom/miui/home/launcher/ItemIcon;

    if-eqz p1, :cond_0

    .line 294
    invoke-virtual {v2}, Lcom/miui/home/launcher/ItemIcon;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    aget-object p1, v0, v1

    .line 295
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/UninstallDialog;->removeItem(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 296
    :cond_1
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/UninstallDialog;->addItemsWhenCancelUninstallWithoutAnim([Landroid/view/View;)V

    goto :goto_0

    .line 298
    :cond_2
    array-length v1, v0

    if-le v1, v2, :cond_3

    .line 299
    iget-object v1, p0, Lcom/miui/home/launcher/UninstallDialog;->mRemoveItemsWorker:Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;

    invoke-virtual {v1, v0, p1}, Lcom/miui/home/launcher/UninstallDialog$RemoveItemsWorker;->remove([Landroid/view/View;Ljava/util/List;)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 74
    invoke-super {p0}, Lcom/miui/launcher/views/LauncherFrameLayout;->onFinishInflate()V

    const v0, 0x7f0a01d4

    .line 75
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/UninstallDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/UninstallDialog;->mTitle:Landroid/widget/TextView;

    const v0, 0x7f0a0093

    .line 76
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/UninstallDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/UninstallDialog;->mDescription:Landroid/widget/TextView;

    const v0, 0x7f0a0091

    .line 77
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/UninstallDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;

    iput-object v0, p0, Lcom/miui/home/launcher/UninstallDialog;->mIconContainer:Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;

    .line 78
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialog;->mIconContainer:Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;->setScreenLayoutMode(I)V

    .line 79
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialog;->mIconContainer:Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;->setEnableReverseDrawingMode(Z)V

    .line 80
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialog;->mIconContainer:Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;

    iput-object p0, v0, Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;->mUninstallDialog:Lcom/miui/home/launcher/UninstallDialog;

    const v0, 0x7f0a012b

    .line 81
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/UninstallDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/UninstallDialog;->mMessages:Landroid/view/View;

    const v0, 0x7f0a006c

    .line 82
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/UninstallDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/UninstallDialog;->mButtons:Landroid/view/View;

    .line 83
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/UninstallDialog;->mShakeAnim:Landroid/animation/ValueAnimator;

    .line 84
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialog;->mShakeAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/home/launcher/UninstallDialog$1;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/UninstallDialog$1;-><init>(Lcom/miui/home/launcher/UninstallDialog;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 92
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialog;->mShakeAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/home/launcher/UninstallDialog$2;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/UninstallDialog$2;-><init>(Lcom/miui/home/launcher/UninstallDialog;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 99
    invoke-virtual {p0}, Lcom/miui/home/launcher/UninstallDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 100
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isShowNotch()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f07026f

    goto :goto_0

    :cond_0
    const v1, 0x7f07026e

    .line 99
    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/ViewFunctions;->setViewPaddingTop(Landroid/view/View;I)V

    .line 103
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->isDeleteSoundEffectEnable(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/launcher/UninstallDialog;->mIsEnableSoundEffect:Z

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/SoundEffectEnableMessage;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 515
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/SoundEffectEnableMessage;->isEnable()Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/home/launcher/UninstallDialog;->mIsEnableSoundEffect:Z

    return-void
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

    .line 447
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialog;->mIconContainer:Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;->setScaleX(F)V

    .line 448
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialog;->mIconContainer:Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;->setScaleY(F)V

    .line 449
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialog;->mIconContainer:Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;->setAlpha(F)V

    goto/16 :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 450
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportCompleteAnimation()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 451
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialog;->mShakeAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 452
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

    .line 453
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialog;->mIconContainer:Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;

    invoke-static {p1, v0}, Lcom/miui/home/launcher/DragController;->createViewBitmap(Landroid/view/View;F)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 p2, 0x2

    .line 454
    new-array p2, p2, [I

    .line 455
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialog;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v0

    .line 456
    iget-object v3, p0, Lcom/miui/home/launcher/UninstallDialog;->mIconContainer:Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, p2, v4}, Lcom/miui/home/launcher/DragLayer;->getLocationInDragLayer(Landroid/view/View;[IZ)F

    .line 457
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

    .line 458
    iget p2, v3, Landroid/graphics/Rect;->bottom:I

    iget v5, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr p2, v5

    iput p2, v3, Landroid/graphics/Rect;->bottom:I

    .line 459
    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 460
    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 461
    invoke-virtual {v0}, Lcom/miui/home/launcher/DragLayer;->getWidth()I

    move-result p2

    iput p2, v3, Landroid/graphics/Rect;->right:I

    .line 462
    new-instance p2, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks;

    invoke-direct {p2, v0, p1, v3}, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks;-><init>(Landroid/view/View;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    .line 463
    invoke-virtual {v0, p2}, Lcom/miui/home/launcher/DragLayer;->attachParasiticDrawingObject(Lcom/miui/home/launcher/common/ParasiticDrawingObject;)V

    .line 464
    invoke-virtual {p2, v1, v2}, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks;->setStartDelay(J)V

    const-wide/16 v0, 0x44c

    .line 465
    invoke-virtual {p2, v0, v1}, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 466
    new-instance p1, Lcom/miui/home/launcher/UninstallDialog$4;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/UninstallDialog$4;-><init>(Lcom/miui/home/launcher/UninstallDialog;)V

    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 475
    invoke-virtual {p2}, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks;->start()V

    .line 476
    invoke-virtual {p0, p3}, Lcom/miui/home/launcher/UninstallDialog;->onConfirm(Ljava/util/List;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public removeDragItem(Lcom/miui/home/launcher/DragObject;Lcom/miui/home/launcher/ItemInfo;Z)V
    .locals 3

    .line 397
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragSource()Lcom/miui/home/launcher/DragSource;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/Folder;

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialog;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v1

    iget-wide v1, v1, Lcom/miui/home/launcher/ItemInfo;->container:J

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/Launcher;->getFolderInfoById(J)Lcom/miui/home/launcher/FolderInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 402
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/FolderInfo;->remove(Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 403
    iget-object v1, p0, Lcom/miui/home/launcher/UninstallDialog;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/FolderInfo;->getAdapter(Landroid/content/Context;)Lcom/miui/home/launcher/ShortcutsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutsAdapter;->notifyDataSetChanged()V

    :cond_0
    if-eqz p3, :cond_1

    .line 407
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/UninstallDialog;->removeFromDB(Lcom/miui/home/launcher/ItemInfo;)V

    .line 408
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragSource()Lcom/miui/home/launcher/DragSource;

    move-result-object p1

    instance-of p1, p1, Lcom/miui/home/launcher/Workspace;

    if-eqz p1, :cond_1

    iget p1, p2, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    const/4 p3, 0x1

    if-ne p1, p3, :cond_1

    iget p1, p2, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    if-ne p1, p3, :cond_1

    .line 409
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialog;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/Launcher;->fillEmpty(Lcom/miui/home/launcher/ItemInfo;)V

    :cond_1
    return-void
.end method

.method public setContentAlpha(F)V
    .locals 1

    .line 437
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialog;->mMessages:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 438
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialog;->mButtons:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public setLauncher(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/miui/home/launcher/UninstallDialog;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-void
.end method

.method public stretctHeightTo(I)V
    .locals 4

    .line 111
    iput p1, p0, Lcom/miui/home/launcher/UninstallDialog;->mCustomHeight:I

    .line 112
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
