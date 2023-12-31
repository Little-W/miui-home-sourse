.class public abstract Lcom/miui/home/launcher/FolderIcon;
.super Lcom/miui/home/launcher/ItemIcon;
.source "FolderIcon.java"

# interfaces
.implements Lcom/miui/home/launcher/DragSource;
.implements Lcom/miui/home/launcher/DropTarget;
.implements Lcom/miui/home/launcher/DropTarget$OnDropAnnounce;
.implements Lcom/miui/home/launcher/Folder$FolderCallback;
.implements Lcom/miui/home/launcher/PendingSource;
.implements Lcom/miui/home/launcher/UpdateIconSize;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/FolderIcon$CategoryUpdateListener;
    }
.end annotation


# static fields
.field protected static DEFAULT_DRAG_OVER_ANIM_SCALE:F = 1.2f

.field protected static DRAG_OVER_ANIM_SCALE_SMALLER:F = 1.05f


# instance fields
.field protected mDragOpenFolder:Ljava/lang/Runnable;

.field protected mFolderBackground:Landroid/graphics/drawable/Drawable;

.field protected mIconCache:Lcom/miui/home/launcher/IconCache;

.field protected mInfo:Lcom/miui/home/launcher/FolderInfo;

.field protected mIsDragingEnter:Z

.field protected mIsFastDelete:Z

.field protected mIsPreRemoved:Z

.field protected mLauncher:Lcom/miui/home/launcher/Launcher;

.field protected mPendingItemsDelegate:Lcom/miui/home/launcher/PendingSourceDelegate;

.field protected mPerformHapticRunnable:Ljava/lang/Runnable;

.field protected mSerialExecutor:Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;

.field protected mTmpPos:[F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/ItemIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    new-instance p1, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;

    const-string p2, "Folder Task"

    invoke-direct {p1, p2}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/home/launcher/FolderIcon;->mSerialExecutor:Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;

    const/4 p1, 0x0

    .line 81
    iput-boolean p1, p0, Lcom/miui/home/launcher/FolderIcon;->mIsPreRemoved:Z

    .line 82
    iput-boolean p1, p0, Lcom/miui/home/launcher/FolderIcon;->mIsDragingEnter:Z

    .line 83
    iput-boolean p1, p0, Lcom/miui/home/launcher/FolderIcon;->mIsFastDelete:Z

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 85
    iput-object p1, p0, Lcom/miui/home/launcher/FolderIcon;->mTmpPos:[F

    .line 86
    new-instance p1, Lcom/miui/home/launcher/PendingSourceDelegate;

    invoke-direct {p1}, Lcom/miui/home/launcher/PendingSourceDelegate;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/FolderIcon;->mPendingItemsDelegate:Lcom/miui/home/launcher/PendingSourceDelegate;

    .line 204
    new-instance p1, Lcom/miui/home/launcher/FolderIcon$2;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/FolderIcon$2;-><init>(Lcom/miui/home/launcher/FolderIcon;)V

    iput-object p1, p0, Lcom/miui/home/launcher/FolderIcon;->mDragOpenFolder:Ljava/lang/Runnable;

    .line 227
    new-instance p1, Lcom/miui/home/launcher/-$$Lambda$FolderIcon$BQKSJDunDe4pZbhvpsF73VspGmk;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/-$$Lambda$FolderIcon$BQKSJDunDe4pZbhvpsF73VspGmk;-><init>(Lcom/miui/home/launcher/FolderIcon;)V

    iput-object p1, p0, Lcom/miui/home/launcher/FolderIcon;->mPerformHapticRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static create(ILcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;)Lcom/miui/home/launcher/FolderIcon;
    .locals 2

    .line 95
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/FolderIcon;

    .line 96
    iput-object p1, p0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 97
    invoke-direct {p0, p0}, Lcom/miui/home/launcher/FolderIcon;->updateBackground(Lcom/miui/home/launcher/FolderIcon;)V

    return-object p0
.end method

.method public static fromXml(ILcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;Lcom/miui/home/launcher/FolderInfo;)Lcom/miui/home/launcher/FolderIcon;
    .locals 2

    .line 497
    invoke-virtual {p3}, Lcom/miui/home/launcher/FolderInfo;->getBuddyIconView()Lcom/miui/home/launcher/FolderIcon;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 498
    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eq v1, p2, :cond_1

    .line 499
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/FolderIcon;->createItemIcon(ILcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/miui/home/launcher/FolderIcon;

    .line 500
    invoke-virtual {p3, v0}, Lcom/miui/home/launcher/FolderInfo;->setBuddyIconView(Lcom/miui/home/launcher/FolderIcon;)V

    .line 503
    :cond_1
    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderIcon;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/miui/home/launcher/ItemIcon;->createDefaultLayoutParams(Landroid/view/ViewGroup$LayoutParams;Landroid/view/ViewGroup;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 506
    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/FolderIcon;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 508
    :cond_2
    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderIcon;->getFolderBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 509
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isBlurSupported()Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, 0x0

    .line 511
    invoke-virtual {p0, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_3
    const/4 p2, 0x0

    .line 513
    invoke-virtual {v0, p0, p2}, Lcom/miui/home/launcher/FolderIcon;->setIconImageView(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)V

    .line 514
    invoke-virtual {p3, p1}, Lcom/miui/home/launcher/FolderInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/FolderIcon;->setTitle(Ljava/lang/CharSequence;)V

    .line 515
    invoke-virtual {v0, p3}, Lcom/miui/home/launcher/FolderIcon;->setTag(Ljava/lang/Object;)V

    .line 516
    iput-object p3, v0, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    .line 517
    iput-object p1, v0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 518
    iput-object v0, p3, Lcom/miui/home/launcher/FolderInfo;->icon:Lcom/miui/home/launcher/Folder$FolderCallback;

    .line 519
    invoke-virtual {p3}, Lcom/miui/home/launcher/FolderInfo;->notifyDataSetChanged()V

    return-object v0
.end method

.method public static fromXml(Lcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;Lcom/miui/home/launcher/FolderInfo;)Lcom/miui/home/launcher/FolderIcon;
    .locals 1

    const/4 v0, 0x0

    .line 479
    invoke-static {p0, p1, p2, v0}, Lcom/miui/home/launcher/FolderIcon;->fromXml(Lcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;Lcom/miui/home/launcher/FolderInfo;Z)Lcom/miui/home/launcher/FolderIcon;

    move-result-object p0

    return-object p0
.end method

.method public static fromXml(Lcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;Lcom/miui/home/launcher/FolderInfo;Z)Lcom/miui/home/launcher/FolderIcon;
    .locals 2

    .line 484
    iget v0, p2, Lcom/miui/home/launcher/FolderInfo;->itemType:I

    const/16 v1, 0x16

    if-ne v0, v1, :cond_0

    const p3, 0x7f0d007b

    goto :goto_0

    .line 486
    :cond_0
    iget v0, p2, Lcom/miui/home/launcher/FolderInfo;->itemType:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_1

    const p3, 0x7f0d007a

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    const p3, 0x7f0d0078

    goto :goto_0

    :cond_2
    const p3, 0x7f0d0077

    .line 491
    :goto_0
    invoke-static {p3, p0, p1, p2}, Lcom/miui/home/launcher/FolderIcon;->fromXml(ILcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;Lcom/miui/home/launcher/FolderInfo;)Lcom/miui/home/launcher/FolderIcon;

    move-result-object p0

    return-object p0
.end method

.method private isRemoveSelfAfterDragAnim()Z
    .locals 1

    .line 188
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$updateBackground$2(Lcom/miui/home/launcher/FolderIcon;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 526
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderIcon;->getFolderBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 528
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getIconCache()Lcom/miui/home/launcher/IconCache;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/FolderIcon;->getFolderIcon(Lcom/miui/home/launcher/IconCache;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method static synthetic lambda$updateBackground$3(Lcom/miui/home/launcher/FolderIcon;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 533
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isBlurSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 535
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 537
    :cond_0
    iput-object p1, p0, Lcom/miui/home/launcher/FolderIcon;->mFolderBackground:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    .line 538
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/FolderIcon;->setIconImageView(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private updateBackground(Lcom/miui/home/launcher/FolderIcon;)V
    .locals 1

    .line 525
    new-instance p0, Lcom/miui/home/launcher/-$$Lambda$FolderIcon$vTfcXpPUY9bRzl24Gaykuqr9td0;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/-$$Lambda$FolderIcon$vTfcXpPUY9bRzl24Gaykuqr9td0;-><init>(Lcom/miui/home/launcher/FolderIcon;)V

    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$FolderIcon$AJT9hZZWUQEf1tO0XIfDHvlZ87A;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/-$$Lambda$FolderIcon$AJT9hZZWUQEf1tO0XIfDHvlZ87A;-><init>(Lcom/miui/home/launcher/FolderIcon;)V

    invoke-virtual {p1, p0, v0}, Lcom/miui/home/launcher/FolderIcon;->getIconAsync(Ljava/util/function/Supplier;Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public acceptDrop(Lcom/miui/home/launcher/DragObject;)Z
    .locals 0

    .line 153
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/FolderIcon;->isDropable(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result p0

    return p0
.end method

.method public addPendingItem(Lcom/miui/home/launcher/PendingItem;)V
    .locals 0

    .line 266
    iget-object p0, p0, Lcom/miui/home/launcher/FolderIcon;->mPendingItemsDelegate:Lcom/miui/home/launcher/PendingSourceDelegate;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/PendingSourceDelegate;->addPendingItem(Lcom/miui/home/launcher/PendingItem;)V

    return-void
.end method

.method public bindFolderInfo(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/FolderInfo;)V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mFolderBackground:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/FolderIcon;->setIconImageView(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)V

    .line 103
    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/FolderInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/FolderIcon;->setTitle(Ljava/lang/CharSequence;)V

    .line 104
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/FolderIcon;->setTag(Ljava/lang/Object;)V

    .line 105
    iput-object p2, p0, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    .line 106
    iput-object p1, p0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 107
    invoke-virtual {p0, p2, p0}, Lcom/miui/home/launcher/FolderIcon;->rebindInfo(Lcom/miui/home/launcher/ItemInfo;Landroid/view/ViewGroup;)V

    .line 108
    invoke-virtual {p2}, Lcom/miui/home/launcher/FolderInfo;->notifyDataSetChanged()V

    return-void
.end method

.method public canBeDeleted()Z
    .locals 1

    .line 283
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderIcon;->isPendingItemsEmtpy()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderInfo;->count()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public checkToDeleteSelf()V
    .locals 1

    .line 320
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderIcon;->canBeDeleted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 321
    iget-boolean v0, p0, Lcom/miui/home/launcher/FolderIcon;->mIsFastDelete:Z

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/Launcher;->removeFolder(Lcom/miui/home/launcher/FolderIcon;)V

    goto :goto_0

    .line 324
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderIcon;->deleteSelf()V

    :cond_1
    :goto_0
    return-void
.end method

.method public deleteSelf()V
    .locals 3

    .line 288
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/CellLayout;

    if-eqz v0, :cond_0

    .line 289
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->getOnLongClickAgent()Lcom/miui/home/launcher/OnLongClickAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/OnLongClickAgent;->cancelCustomziedLongPress()V

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/FolderIcon;->resetDragItemIfNeed(Lcom/miui/home/launcher/FolderInfo;)V

    const/4 v0, 0x0

    .line 292
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/FolderIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object v1, p0, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->closeFolder(Lcom/miui/home/launcher/FolderInfo;)V

    .line 294
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/Launcher;->preRemoveItem(Landroid/view/View;)V

    const/4 v0, 0x1

    .line 295
    iput-boolean v0, p0, Lcom/miui/home/launcher/FolderIcon;->mIsPreRemoved:Z

    .line 296
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 297
    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 298
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 299
    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$FolderIcon$6SX8MLVcKVSqLarRAkb57EsBSdU;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/-$$Lambda$FolderIcon$6SX8MLVcKVSqLarRAkb57EsBSdU;-><init>(Lcom/miui/home/launcher/FolderIcon;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 303
    new-instance v1, Lcom/miui/home/launcher/FolderIcon$3;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/FolderIcon$3;-><init>(Lcom/miui/home/launcher/FolderIcon;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 309
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method protected dropIconIntoFolderIcon(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    return-void
.end method

.method public finishPendingAll()V
    .locals 1

    .line 382
    iget-object p0, p0, Lcom/miui/home/launcher/FolderIcon;->mPendingItemsDelegate:Lcom/miui/home/launcher/PendingSourceDelegate;

    invoke-virtual {p0}, Lcom/miui/home/launcher/PendingSourceDelegate;->getPendingItems()Ljava/util/HashSet;

    move-result-object p0

    .line 383
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/PendingItem;

    .line 384
    invoke-interface {v0}, Lcom/miui/home/launcher/PendingItem;->finishPending()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public folmeDown()V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isFolderAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->folderAnimSkipToEnd()V

    .line 139
    :cond_0
    invoke-super {p0}, Lcom/miui/home/launcher/ItemIcon;->folmeDown()V

    return-void
.end method

.method public getContainerId()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDefaultLayerType()I
    .locals 1

    .line 91
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-le p0, v0, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method protected getDragEnterAnimatorValues()[F
    .locals 2

    const/4 p0, 0x2

    new-array p0, p0, [F

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, p0, v0

    .line 217
    sget v0, Lcom/miui/home/launcher/FolderIcon;->DEFAULT_DRAG_OVER_ANIM_SCALE:F

    const/4 v1, 0x1

    aput v0, p0, v1

    return-object p0
.end method

.method protected getDragExitAnimatorValues()[F
    .locals 2

    const/4 p0, 0x2

    new-array p0, p0, [F

    .line 224
    sget v0, Lcom/miui/home/launcher/FolderIcon;->DEFAULT_DRAG_OVER_ANIM_SCALE:F

    const/4 v1, 0x0

    aput v0, p0, v1

    const/4 v0, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, p0, v0

    return-object p0
.end method

.method public getDropAnnounceForAccessibility(Lcom/miui/home/launcher/DragObject;)Ljava/lang/String;
    .locals 2

    .line 149
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderIcon;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderIcon;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const p0, 0x7f110070

    invoke-virtual {p1, p0, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDropTargetDelegate(Lcom/miui/home/launcher/DragObject;)Lcom/miui/home/launcher/DropTarget;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getFolderBackground()Landroid/graphics/drawable/Drawable;
.end method

.method protected getFolderBgGridFourIcon(Lcom/miui/home/launcher/IconCache;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 575
    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/IconCache;->getFolderBgGridFourIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method protected getFolderBgGridFourLight(Lcom/miui/home/launcher/IconCache;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 579
    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/IconCache;->getFolderBgGridFourLight(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method protected getFolderIcon(Lcom/miui/home/launcher/IconCache;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 564
    invoke-virtual {p1}, Lcom/miui/home/launcher/IconCache;->getFolderIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method protected getFolderIconLight(Lcom/miui/home/launcher/IconCache;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 571
    invoke-virtual {p1}, Lcom/miui/home/launcher/IconCache;->getFolderIconLight()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getFolderInfo()Lcom/miui/home/launcher/FolderInfo;
    .locals 0

    .line 372
    iget-object p0, p0, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    return-object p0
.end method

.method protected getFolderPreviewAlpha(Z)F
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 348
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/FolderIcon;->mNoWordAdapter:Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;

    invoke-virtual {p0}, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->isCanChangeAlphaWhenEditModeChange()Z

    move-result p0

    if-eqz p0, :cond_1

    const p0, 0x3f19999a    # 0.6f

    goto :goto_0

    :cond_1
    const/high16 p0, 0x3f800000    # 1.0f

    :goto_0
    return p0
.end method

.method public getHitRect(Landroid/graphics/Rect;)V
    .locals 4

    .line 249
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderIcon;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/miui/home/launcher/FolderIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherIconImageView;->getLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderIcon;->getTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderIcon;->getLeft()I

    move-result v2

    iget-object v3, p0, Lcom/miui/home/launcher/FolderIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {v3}, Lcom/miui/home/launcher/LauncherIconImageView;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/miui/home/launcher/FolderIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {v3}, Lcom/miui/home/launcher/LauncherIconImageView;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderIcon;->getBottom()I

    move-result p0

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public getHitView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method protected getIconAsync(Ljava/util/function/Supplier;Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .line 568
    invoke-static {p1, p2}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Supplier;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public getMirrorDragListener()Lcom/miui/home/library/mirror/MirrorDragListener;
    .locals 1

    .line 434
    new-instance v0, Lcom/miui/home/launcher/FolderIcon$5;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/FolderIcon$5;-><init>(Lcom/miui/home/launcher/FolderIcon;)V

    return-object v0
.end method

.method public getOnDropAnnounce()Lcom/miui/home/launcher/DropTarget$OnDropAnnounce;
    .locals 0

    return-object p0
.end method

.method public abstract getPreviewArray()[Landroid/widget/ImageView;
.end method

.method public getSpanX()I
    .locals 0

    .line 600
    iget-object p0, p0, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget p0, p0, Lcom/miui/home/launcher/FolderInfo;->spanX:I

    return p0
.end method

.method public getSpanY()I
    .locals 0

    .line 604
    iget-object p0, p0, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget p0, p0, Lcom/miui/home/launcher/FolderInfo;->spanY:I

    return p0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .line 429
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/FolderIcon;->hasOverlappingRendering(Lcom/miui/home/launcher/Launcher;)Z

    move-result p0

    return p0
.end method

.method public invalidatePreviews()V
    .locals 0

    return-void
.end method

.method public isDropEnabled()Z
    .locals 1

    .line 257
    iget-object p0, p0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v0, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method protected isDropable(Lcom/miui/home/launcher/ItemInfo;)Z
    .locals 3

    .line 157
    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->isInHotseatRecommend()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/16 v2, 0x12

    if-eq v0, v2, :cond_0

    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/16 v2, 0xe

    if-eq v0, v2, :cond_0

    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/16 v2, 0xb

    if-ne v0, v2, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-boolean p0, p0, Lcom/miui/home/launcher/FolderInfo;->opened:Z

    if-nez p0, :cond_1

    iget p0, p1, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    if-ne p0, v1, :cond_1

    iget p0, p1, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isPendingItemsEmtpy()Z
    .locals 0

    .line 278
    iget-object p0, p0, Lcom/miui/home/launcher/FolderIcon;->mPendingItemsDelegate:Lcom/miui/home/launcher/PendingSourceDelegate;

    invoke-virtual {p0}, Lcom/miui/home/launcher/PendingSourceDelegate;->isPendingItemsEmtpy()Z

    move-result p0

    return p0
.end method

.method public isPreRemoved()Z
    .locals 0

    .line 253
    iget-boolean p0, p0, Lcom/miui/home/launcher/FolderIcon;->mIsPreRemoved:Z

    return p0
.end method

.method public synthetic lambda$deleteSelf$1$FolderIcon(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 300
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    .line 301
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/FolderIcon;->setAlpha(F)V

    return-void
.end method

.method public synthetic lambda$new$0$FolderIcon()V
    .locals 1

    .line 227
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performEnterOrCreateFolder(Landroid/view/View;)V

    return-void
.end method

.method public onClose()V
    .locals 6

    .line 233
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderIcon;->getPreviewArray()[Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 234
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 235
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 236
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    if-lt v4, v5, :cond_0

    instance-of v4, v3, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

    if-eqz v4, :cond_0

    .line 237
    check-cast v3, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

    invoke-virtual {v3}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->getForegroundLayers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

    .line 238
    invoke-virtual {v4}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->resetBackAnim()V

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 243
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/FolderIcon;->loadItemIcons(Z)V

    :cond_2
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 619
    invoke-super {p0}, Lcom/miui/home/launcher/ItemIcon;->onDetachedFromWindow()V

    .line 620
    iget-object p0, p0, Lcom/miui/home/launcher/FolderIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-static {p0}, Lcom/miui/home/launcher/common/BlurUtilities;->clearAllBlur(Landroid/view/View;)V

    return-void
.end method

.method public onDragCompleted(Lcom/miui/home/launcher/DropTarget;Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    return-void
.end method

.method public onDragOver(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    return-void
.end method

.method public onDrop(Lcom/miui/home/launcher/DragObject;)Z
    .locals 2

    .line 170
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragSource()Lcom/miui/home/launcher/DragSource;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Launcher;->insertNewShortcutFromAllApps(Lcom/miui/home/launcher/DragObject;)V

    .line 173
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/FolderIcon;->dropIconIntoFolderIcon(Lcom/miui/home/launcher/DragObject;)V

    .line 174
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->isLastObject()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/LauncherModel;->updateFolderItems(Landroid/content/Context;Lcom/miui/home/launcher/FolderInfo;)V

    .line 177
    :cond_1
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    .line 178
    invoke-direct {p0}, Lcom/miui/home/launcher/FolderIcon;->isRemoveSelfAfterDragAnim()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 179
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/FolderIcon;->removeSelfAfterDragAnim(Lcom/miui/home/launcher/DragObject;Lcom/miui/home/launcher/ItemInfo;)V

    goto :goto_0

    .line 181
    :cond_2
    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemInfo;->finishPending()V

    .line 183
    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/FolderIcon;->getDropAnnounceForAccessibility(Lcom/miui/home/launcher/DragObject;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/DragObject;->setOnDropAnnounce(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onDropBack(Lcom/miui/home/launcher/DragObject;)V
    .locals 3

    .line 404
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/FolderIcon;->dropIconIntoFolderIcon(Lcom/miui/home/launcher/DragObject;)V

    .line 405
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 406
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v1

    new-instance v2, Lcom/miui/home/launcher/FolderIcon$4;

    invoke-direct {v2, p0, p1, v0}, Lcom/miui/home/launcher/FolderIcon$4;-><init>(Lcom/miui/home/launcher/FolderIcon;Lcom/miui/home/launcher/DragObject;Lcom/miui/home/launcher/ShortcutInfo;)V

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/DragView;->setOnRemoveCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDropCompleted()V
    .locals 0

    return-void
.end method

.method public onIconRemoved()V
    .locals 0

    .line 470
    invoke-super {p0}, Lcom/miui/home/launcher/ItemIcon;->onIconRemoved()V

    return-void
.end method

.method protected onIconRemoved(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 0

    .line 558
    iget-object p0, p1, Lcom/miui/home/launcher/ShortcutInfo;->mBuddyIconView:Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz p0, :cond_0

    .line 559
    iget-object p0, p1, Lcom/miui/home/launcher/ShortcutInfo;->mBuddyIconView:Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->onIconRemoved()V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .line 609
    invoke-super/range {p0 .. p5}, Lcom/miui/home/launcher/ItemIcon;->onLayout(ZIIII)V

    .line 610
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isBlurSupported()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 611
    instance-of p1, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;

    .line 612
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderIcon;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iget-object p0, p0, Lcom/miui/home/launcher/FolderIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-static {p2, p1, p0}, Lcom/miui/home/launcher/common/BlurUtilities;->getFolderIconBlurRoundRectRadius(Landroid/content/Context;Ljava/lang/Boolean;Landroid/widget/ImageView;)I

    move-result v1

    const v2, -0xeb6c00

    const/16 v3, 0x6a

    const v4, -0xd10e00

    const/16 v5, 0x6a

    invoke-static/range {v0 .. v5}, Lcom/miui/home/launcher/common/BlurUtilities;->setFolderIconBlur(Landroid/view/View;IIIII)V

    :cond_0
    return-void
.end method

.method public onOpen()V
    .locals 0

    return-void
.end method

.method public rebindInfo(Lcom/miui/home/launcher/ItemInfo;Landroid/view/ViewGroup;)V
    .locals 0

    .line 113
    check-cast p1, Lcom/miui/home/launcher/FolderInfo;

    .line 114
    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->getMessageText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/FolderIcon;->setMessageImmediately(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/FolderInfo;->setBuddyIconView(Lcom/miui/home/launcher/FolderIcon;)V

    .line 116
    iput-object p0, p1, Lcom/miui/home/launcher/FolderInfo;->icon:Lcom/miui/home/launcher/Folder$FolderCallback;

    .line 117
    iget-object p0, p1, Lcom/miui/home/launcher/FolderInfo;->icon:Lcom/miui/home/launcher/Folder$FolderCallback;

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/miui/home/launcher/Folder$FolderCallback;->showPreview(Z)V

    return-void
.end method

.method public removePendingItem(Lcom/miui/home/launcher/PendingItem;)V
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mPendingItemsDelegate:Lcom/miui/home/launcher/PendingSourceDelegate;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/PendingSourceDelegate;->removePendingItem(Lcom/miui/home/launcher/PendingItem;)V

    .line 272
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderIcon;->checkToDeleteSelf()V

    .line 273
    iget-object p0, p0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->invalidateWorkspacePreview()V

    return-void
.end method

.method protected removeSelfAfterDragAnim(Lcom/miui/home/launcher/DragObject;Lcom/miui/home/launcher/ItemInfo;)V
    .locals 1

    .line 192
    new-instance v0, Lcom/miui/home/launcher/FolderIcon$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/miui/home/launcher/FolderIcon$1;-><init>(Lcom/miui/home/launcher/FolderIcon;Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/DragObject;)V

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/DragObject;->addDragAnimationListener(Lcom/miui/home/launcher/DragController$DropAnimationListener;)V

    return-void
.end method

.method protected resetDragItemIfNeed(Lcom/miui/home/launcher/FolderInfo;)V
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragController()Lcom/miui/home/launcher/DragController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/DragController;->isFolderDragging(Lcom/miui/home/launcher/FolderInfo;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 314
    iget-object p0, p0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->resetDragItems()V

    :cond_0
    return-void
.end method

.method public setDragController(Lcom/miui/home/launcher/DragController;)V
    .locals 0

    return-void
.end method

.method public setEditMode(ZZ)V
    .locals 0

    .line 475
    iget-object p0, p0, Lcom/miui/home/launcher/FolderIcon;->mNoWordAdapter:Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->onEditModeChange(Z)V

    return-void
.end method

.method public setFastDelete(Z)V
    .locals 0

    .line 389
    iput-boolean p1, p0, Lcom/miui/home/launcher/FolderIcon;->mIsFastDelete:Z

    return-void
.end method

.method public setIsDrawingInThumbnailView(Z)V
    .locals 1

    .line 377
    invoke-super {p0, p1}, Lcom/miui/home/launcher/ItemIcon;->setIsDrawingInThumbnailView(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 378
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderIcon;->getDefaultLayerType()I

    move-result p1

    :goto_0
    sget-object v0, Lcom/miui/home/launcher/FolderIcon;->sLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/FolderIcon;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public updateFolderTilte(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 4

    .line 334
    invoke-static {}, Lcom/miui/home/launcher/common/AppCategoryManager;->getInstance()Lcom/miui/home/launcher/common/AppCategoryManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/FolderIcon;->mContext:Landroid/content/Context;

    .line 335
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/miui/home/launcher/FolderIcon$CategoryUpdateListener;

    iget-object p0, p0, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/FolderIcon$CategoryUpdateListener;-><init>(Lcom/miui/home/launcher/FolderInfo;)V

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/String;

    .line 336
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, p0, v3

    invoke-virtual {p2}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, p0, p2

    .line 334
    invoke-virtual {v0, v1, v2, p0}, Lcom/miui/home/launcher/common/AppCategoryManager;->getAppCategoryId(Landroid/content/Context;Lcom/miui/home/launcher/common/AppCategoryManager$OnCategoryLoadedListener;[Ljava/lang/String;)V

    return-void
.end method

.method public updateNewInstallIndicator(Z)V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mTitleView:Lcom/miui/home/launcher/TitleTextView;

    if-eqz v0, :cond_0

    .line 125
    iget-object p0, p0, Lcom/miui/home/launcher/FolderIcon;->mTitleView:Lcom/miui/home/launcher/TitleTextView;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/TitleTextView;->updateNewInstallIndicator(Z)V

    :cond_0
    return-void
.end method
