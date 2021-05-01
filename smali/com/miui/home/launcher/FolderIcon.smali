.class public Lcom/miui/home/launcher/FolderIcon;
.super Lcom/miui/home/launcher/ItemIcon;
.source "FolderIcon.java"

# interfaces
.implements Lcom/miui/home/launcher/DragSource;
.implements Lcom/miui/home/launcher/DropTarget;
.implements Lcom/miui/home/launcher/DropTarget$OnDropAnnounce;
.implements Lcom/miui/home/launcher/Folder$FolderCallback;
.implements Lcom/miui/home/launcher/PendingSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/FolderIcon$CategoryUpdateListener;
    }
.end annotation


# static fields
.field private static final COLUMN_NUM:I

.field private static final MAX_PREVIEW_ICON_NUM:I

.field private static sTmpCanvas:Landroid/graphics/Canvas;


# instance fields
.field private mAlphaAnimator:Landroid/animation/ValueAnimator;

.field private mDragOpenFolder:Ljava/lang/Runnable;

.field private mDragOverAnimator:Landroid/animation/ValueAnimator;

.field private mFolderBackground:Landroid/graphics/drawable/Drawable;

.field private mFolderCover:Landroid/widget/ImageView;

.field private mIconCache:Lcom/miui/home/launcher/IconCache;

.field private mInfo:Lcom/miui/home/launcher/FolderInfo;

.field private mIsDragingEnter:Z

.field private mIsFastDelete:Z

.field private mIsPreRemoved:Z

.field private mItemIconHeight:I

.field private mItemIconWidth:I

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mPendingItemsDelegate:Lcom/miui/home/launcher/PendingSourceDelegate;

.field private mPerformHapticRunnable:Ljava/lang/Runnable;

.field private mPreviewContainer:Landroid/view/View;

.field private mPreviewIconAdapter:Lcom/miui/home/launcher/FolderPreviewIconAdapter;

.field private mPreviewIconRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mSerialExecutor:Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;

.field private mTmpPos:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 83
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/miui/home/launcher/FolderIcon;->COLUMN_NUM:I

    .line 84
    sget v0, Lcom/miui/home/launcher/FolderIcon;->COLUMN_NUM:I

    mul-int/2addr v0, v0

    sput v0, Lcom/miui/home/launcher/FolderIcon;->MAX_PREVIEW_ICON_NUM:I

    .line 627
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/FolderIcon;->sTmpCanvas:Landroid/graphics/Canvas;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 105
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/ItemIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 88
    iput-boolean p1, p0, Lcom/miui/home/launcher/FolderIcon;->mIsPreRemoved:Z

    .line 89
    iput-boolean p1, p0, Lcom/miui/home/launcher/FolderIcon;->mIsDragingEnter:Z

    .line 90
    iput-boolean p1, p0, Lcom/miui/home/launcher/FolderIcon;->mIsFastDelete:Z

    .line 92
    new-instance p1, Landroid/animation/ValueAnimator;

    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/FolderIcon;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 93
    new-instance p1, Landroid/animation/ValueAnimator;

    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/FolderIcon;->mDragOverAnimator:Landroid/animation/ValueAnimator;

    const/4 p1, 0x2

    .line 96
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/miui/home/launcher/FolderIcon;->mTmpPos:[F

    .line 97
    new-instance p1, Lcom/miui/home/launcher/PendingSourceDelegate;

    invoke-direct {p1}, Lcom/miui/home/launcher/PendingSourceDelegate;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/FolderIcon;->mPendingItemsDelegate:Lcom/miui/home/launcher/PendingSourceDelegate;

    .line 232
    new-instance p1, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;

    invoke-direct {p1}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/FolderIcon;->mSerialExecutor:Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;

    .line 326
    new-instance p1, Lcom/miui/home/launcher/FolderIcon$5;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/FolderIcon$5;-><init>(Lcom/miui/home/launcher/FolderIcon;)V

    iput-object p1, p0, Lcom/miui/home/launcher/FolderIcon;->mDragOpenFolder:Ljava/lang/Runnable;

    .line 365
    new-instance p1, Lcom/miui/home/launcher/-$$Lambda$FolderIcon$z3EmnOzuC3OuKe4-q_Z8U0ZaKu0;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/-$$Lambda$FolderIcon$z3EmnOzuC3OuKe4-q_Z8U0ZaKu0;-><init>(Lcom/miui/home/launcher/FolderIcon;)V

    iput-object p1, p0, Lcom/miui/home/launcher/FolderIcon;->mPerformHapticRunnable:Ljava/lang/Runnable;

    .line 106
    invoke-static {}, Lcom/miui/home/launcher/LauncherApplication;->getIconCache()Lcom/miui/home/launcher/IconCache;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/FolderIcon;->mIconCache:Lcom/miui/home/launcher/IconCache;

    .line 108
    sget-object p1, Lcom/miui/home/launcher/FolderIcon;->sLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/FolderIcon;->setLayerPaint(Landroid/graphics/Paint;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/FolderIcon;)Landroid/widget/ImageView;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/miui/home/launcher/FolderIcon;->mFolderCover:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/FolderIcon;)Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lcom/miui/home/launcher/FolderIcon;->mIsDragingEnter:Z

    return p0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/FolderIcon;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/miui/home/launcher/FolderIcon;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/FolderIcon;)Lcom/miui/home/launcher/Launcher;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/FolderIcon;)Lcom/miui/home/launcher/FolderInfo;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/home/launcher/FolderIcon;)Ljava/lang/Runnable;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/miui/home/launcher/FolderIcon;->mDragOpenFolder:Ljava/lang/Runnable;

    return-object p0
.end method

.method private calculateItemIconSize(Landroid/content/res/Resources;)V
    .locals 4

    const v0, 0x7f0700da

    .line 246
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const v1, 0x7f0700d8

    .line 247
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    .line 248
    invoke-static {}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->getInstance()Lcom/miui/home/launcher/common/LauncherIconSizeProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->getFolderPreviewItemPadding()I

    move-result v1

    .line 249
    sget v2, Lcom/miui/home/launcher/FolderIcon;->COLUMN_NUM:I

    add-int/lit8 v3, v2, -0x1

    mul-int/2addr v3, v1

    div-int/2addr v3, v2

    int-to-float v3, v3

    sub-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/home/launcher/FolderIcon;->mItemIconWidth:I

    add-int/lit8 v0, v2, -0x1

    mul-int/2addr v1, v0

    .line 250
    div-int/2addr v1, v2

    int-to-float v0, v1

    sub-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/miui/home/launcher/FolderIcon;->mItemIconHeight:I

    return-void
.end method

.method private dropIconIntoFolderIcon(Lcom/miui/home/launcher/DragObject;)V
    .locals 7

    .line 301
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->count()I

    move-result v0

    .line 302
    iget v1, p1, Lcom/miui/home/launcher/DragObject;->dropAction:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 303
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v1

    iget v1, v1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    sget v3, Lcom/miui/home/launcher/FolderIcon;->MAX_PREVIEW_ICON_NUM:I

    if-ge v1, v3, :cond_0

    .line 304
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    iget v0, v0, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 307
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/FolderIcon;->mPreviewIconRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    sget v3, Lcom/miui/home/launcher/FolderIcon;->MAX_PREVIEW_ICON_NUM:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 308
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v3

    .line 309
    iget v5, p0, Lcom/miui/home/launcher/FolderIcon;->mItemIconHeight:I

    if-nez v5, :cond_1

    .line 310
    iget-object v5, p0, Lcom/miui/home/launcher/FolderIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/miui/home/launcher/FolderIcon;->calculateItemIconSize(Landroid/content/res/Resources;)V

    .line 312
    :cond_1
    iget v5, p0, Lcom/miui/home/launcher/FolderIcon;->mItemIconWidth:I

    int-to-float v5, v5

    invoke-virtual {v3}, Lcom/miui/home/launcher/DragView;->getContent()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v3, v5}, Lcom/miui/home/launcher/DragView;->setTargetScale(F)V

    .line 313
    sget v5, Lcom/miui/home/launcher/FolderIcon;->MAX_PREVIEW_ICON_NUM:I

    if-lt v0, v5, :cond_2

    .line 314
    invoke-virtual {v3}, Lcom/miui/home/launcher/DragView;->setFakeTargetMode()V

    .line 315
    invoke-virtual {v3}, Lcom/miui/home/launcher/DragView;->setFadeoutAnimationMode()V

    :cond_2
    const/4 v0, 0x0

    .line 317
    invoke-virtual {v3, v0}, Lcom/miui/home/launcher/DragView;->setPivotX(F)V

    .line 318
    invoke-virtual {v3, v0}, Lcom/miui/home/launcher/DragView;->setPivotY(F)V

    .line 319
    invoke-virtual {v3, v1}, Lcom/miui/home/launcher/DragView;->setAnimateTarget(Landroid/view/View;)Z

    .line 321
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    iget p1, p1, Lcom/miui/home/launcher/DragObject;->dropAction:I

    if-eq p1, v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    iget-object p1, p0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 322
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getLauncherMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object p1

    .line 321
    invoke-virtual {v0, v1, v4, p1}, Lcom/miui/home/launcher/FolderInfo;->add(Lcom/miui/home/launcher/ShortcutInfo;ZLcom/miui/home/launcher/allapps/LauncherMode;)V

    .line 323
    iget-object p1, p0, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->notifyDataSetChanged()V

    return-void
.end method

.method public static fromXml(ILcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;Lcom/miui/home/launcher/FolderInfo;)Lcom/miui/home/launcher/FolderIcon;
    .locals 1

    .line 196
    invoke-virtual {p3}, Lcom/miui/home/launcher/FolderInfo;->getBuddyIconView()Lcom/miui/home/launcher/FolderIcon;

    move-result-object v0

    if-nez v0, :cond_0

    .line 198
    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/FolderIcon;->createItemIcon(ILcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/miui/home/launcher/FolderIcon;

    .line 199
    invoke-virtual {p3, v0}, Lcom/miui/home/launcher/FolderInfo;->setBuddyIconView(Lcom/miui/home/launcher/FolderIcon;)V

    .line 202
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderIcon;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/miui/home/launcher/ItemIcon;->createDefaultLayoutParams(Landroid/view/ViewGroup$LayoutParams;Landroid/view/ViewGroup;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 205
    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/FolderIcon;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    :cond_1
    iget-object p0, v0, Lcom/miui/home/launcher/FolderIcon;->mFolderBackground:Landroid/graphics/drawable/Drawable;

    const/4 p2, 0x0

    invoke-virtual {v0, p0, p2}, Lcom/miui/home/launcher/FolderIcon;->setIconImageView(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)V

    .line 209
    invoke-virtual {p3, p1}, Lcom/miui/home/launcher/FolderInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/FolderIcon;->setTitle(Ljava/lang/CharSequence;)V

    .line 210
    invoke-virtual {v0, p3}, Lcom/miui/home/launcher/FolderIcon;->setTag(Ljava/lang/Object;)V

    .line 211
    iput-object p3, v0, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    .line 212
    iput-object p1, v0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 213
    iput-object v0, p3, Lcom/miui/home/launcher/FolderInfo;->icon:Lcom/miui/home/launcher/Folder$FolderCallback;

    .line 214
    invoke-virtual {p3}, Lcom/miui/home/launcher/FolderInfo;->notifyDataSetChanged()V

    return-object v0
.end method

.method private isDropable(Lcom/miui/home/launcher/ItemInfo;)Z
    .locals 3

    .line 273
    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/16 v2, 0xe

    if-eq v0, v2, :cond_0

    iget p1, p1, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/16 v0, 0xb

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-boolean p1, p1, Lcom/miui/home/launcher/FolderInfo;->opened:Z

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static synthetic lambda$getPreviewPosition$165(Lcom/miui/home/launcher/FolderIcon;Landroid/view/View;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    .line 471
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getScreenContent()Landroid/widget/FrameLayout;

    move-result-object v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public static synthetic lambda$new$164(Lcom/miui/home/launcher/FolderIcon;)V
    .locals 1

    .line 365
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performEnterOrCreateFolder(Landroid/view/View;)V

    return-void
.end method

.method private resetDragItemIfNeed(Lcom/miui/home/launcher/FolderInfo;)V
    .locals 1

    .line 450
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragController()Lcom/miui/home/launcher/DragController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/DragController;->isFolderDragging(Lcom/miui/home/launcher/FolderInfo;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 451
    iget-object p1, p0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->resetDragItems()V

    :cond_0
    return-void
.end method


# virtual methods
.method public acceptDrop(Lcom/miui/home/launcher/DragObject;)Z
    .locals 0

    .line 269
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/FolderIcon;->isDropable(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result p1

    return p1
.end method

.method public addPendingItem(Lcom/miui/home/launcher/PendingItem;)V
    .locals 1

    .line 395
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mPendingItemsDelegate:Lcom/miui/home/launcher/PendingSourceDelegate;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/PendingSourceDelegate;->addPendingItem(Lcom/miui/home/launcher/PendingItem;)V

    return-void
.end method

.method public canBeDeleted()Z
    .locals 1

    .line 412
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderIcon;->isPendingItemsEmtpy()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->count()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public checkToDeleteSelf()V
    .locals 1

    .line 457
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderIcon;->canBeDeleted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 458
    iget-boolean v0, p0, Lcom/miui/home/launcher/FolderIcon;->mIsFastDelete:Z

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/Launcher;->removeFolder(Lcom/miui/home/launcher/FolderIcon;)V

    goto :goto_0

    .line 461
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderIcon;->deleteSelf()V

    :cond_1
    :goto_0
    return-void
.end method

.method public deleteSelf()V
    .locals 3

    .line 417
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/CellLayout;

    if-eqz v0, :cond_0

    .line 418
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->getOnLongClickAgent()Lcom/miui/home/launcher/OnLongClickAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/OnLongClickAgent;->cancelCustomziedLongPress()V

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/FolderIcon;->resetDragItemIfNeed(Lcom/miui/home/launcher/FolderInfo;)V

    const/4 v0, 0x0

    .line 421
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/FolderIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 422
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object v1, p0, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->closeFolder(Lcom/miui/home/launcher/FolderInfo;)V

    .line 423
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/Launcher;->preRemoveItem(Landroid/view/View;)V

    const/4 v0, 0x1

    .line 424
    iput-boolean v0, p0, Lcom/miui/home/launcher/FolderIcon;->mIsPreRemoved:Z

    .line 425
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v1, 0x2

    .line 426
    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 427
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 428
    new-instance v1, Lcom/miui/home/launcher/FolderIcon$6;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/FolderIcon$6;-><init>(Lcom/miui/home/launcher/FolderIcon;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 435
    new-instance v1, Lcom/miui/home/launcher/FolderIcon$7;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/FolderIcon$7;-><init>(Lcom/miui/home/launcher/FolderIcon;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 446
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 3

    .line 540
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderIcon;->isDrawingInThumbnailView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mTitleContainer:Lcom/miui/home/launcher/ItemIconTitleContainer;

    if-ne p2, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 544
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderIcon;->isDrawingInThumbnailView()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mIconContainer:Landroid/widget/FrameLayout;

    if-ne p2, v0, :cond_1

    .line 545
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mPreviewContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    .line 546
    iget-object v1, p0, Lcom/miui/home/launcher/FolderIcon;->mPreviewContainer:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 547
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/ItemIcon;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    .line 548
    iget-object p2, p0, Lcom/miui/home/launcher/FolderIcon;->mPreviewContainer:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 550
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/ItemIcon;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public finishPendingAll()V
    .locals 2

    .line 562
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mPendingItemsDelegate:Lcom/miui/home/launcher/PendingSourceDelegate;

    invoke-virtual {v0}, Lcom/miui/home/launcher/PendingSourceDelegate;->getPendingItems()Ljava/util/HashSet;

    move-result-object v0

    .line 563
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/PendingItem;

    .line 564
    invoke-interface {v1}, Lcom/miui/home/launcher/PendingItem;->finishPending()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getBackAnimPreviewDrawable()Landroid/graphics/drawable/Drawable;
    .locals 8

    .line 631
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherIconImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 632
    iget-object v1, p0, Lcom/miui/home/launcher/FolderIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherIconImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 633
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/common/Utilities;->createBitmapSafely(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 635
    sget-object v2, Lcom/miui/home/launcher/FolderIcon;->sTmpCanvas:Landroid/graphics/Canvas;

    .line 636
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 637
    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 638
    iget-object v4, p0, Lcom/miui/home/launcher/FolderIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {v4}, Lcom/miui/home/launcher/LauncherIconImageView;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/miui/home/launcher/FolderIcon;->mPreviewContainer:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    .line 639
    iget-object v6, p0, Lcom/miui/home/launcher/FolderIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {v6}, Lcom/miui/home/launcher/LauncherIconImageView;->getHeight()I

    move-result v6

    iget-object v7, p0, Lcom/miui/home/launcher/FolderIcon;->mPreviewContainer:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v6, v5

    .line 640
    invoke-virtual {v2, v4, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 641
    iget-object v4, p0, Lcom/miui/home/launcher/FolderIcon;->mPreviewContainer:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 642
    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 643
    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 644
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v1

    :cond_0
    return-object v1
.end method

.method public getContainerId()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getCover()Landroid/widget/ImageView;
    .locals 1

    .line 498
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mFolderCover:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getDefaultLayerType()I
    .locals 2

    .line 179
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-le v0, v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public getDropAnnounceForAccessibility(Lcom/miui/home/launcher/DragObject;)Ljava/lang/String;
    .locals 3

    .line 265
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderIcon;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/home/launcher/FolderIcon;->mTitle:Lcom/miui/home/launcher/TitleTextView;

    invoke-virtual {v1}, Lcom/miui/home/launcher/TitleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f100065

    invoke-virtual {p1, v1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDropTargetDelegate(Lcom/miui/home/launcher/DragObject;)Lcom/miui/home/launcher/DropTarget;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getFolderInfo()Lcom/miui/home/launcher/FolderInfo;
    .locals 1

    .line 535
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    return-object v0
.end method

.method public getHitRect(Landroid/graphics/Rect;)V
    .locals 4

    .line 378
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

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public getHitView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public getMirrorDragListener()Lcom/miui/home/library/mirror/MirrorDragListener;
    .locals 1

    .line 656
    new-instance v0, Lcom/miui/home/launcher/FolderIcon$9;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/FolderIcon$9;-><init>(Lcom/miui/home/launcher/FolderIcon;)V

    return-object v0
.end method

.method public getOnDropAnnounce()Lcom/miui/home/launcher/DropTarget$OnDropAnnounce;
    .locals 0

    return-object p0
.end method

.method public getPreviewContainerSnapshot()Landroid/graphics/Bitmap;
    .locals 2

    .line 531
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mPreviewContainer:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/miui/home/launcher/DragController;->createViewBitmap(Landroid/view/View;F)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getPreviewCount()I
    .locals 1

    .line 494
    sget v0, Lcom/miui/home/launcher/FolderIcon;->MAX_PREVIEW_ICON_NUM:I

    return v0
.end method

.method public getPreviewIconHeight()F
    .locals 2

    .line 486
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mPreviewIconRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mPreviewIconRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    return v0

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method public getPreviewPosition(Landroid/graphics/Rect;)F
    .locals 10

    .line 468
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mTmpPos:[F

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v3, 0x0

    aput v2, v0, v3

    .line 469
    iget-object v4, p0, Lcom/miui/home/launcher/FolderIcon;->mPreviewContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 470
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/home/launcher/FolderIcon;->mTmpPos:[F

    new-instance v9, Lcom/miui/home/launcher/-$$Lambda$FolderIcon$V0Zkd-0RCnCA2mV5PUtIQ777I7I;

    invoke-direct {v9, p0}, Lcom/miui/home/launcher/-$$Lambda$FolderIcon$V0Zkd-0RCnCA2mV5PUtIQ777I7I;-><init>(Lcom/miui/home/launcher/FolderIcon;)V

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 469
    invoke-static/range {v4 .. v9}, Lcom/miui/home/launcher/common/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZZLjava/util/function/Predicate;)F

    move-result v0

    .line 472
    iget-object v2, p0, Lcom/miui/home/launcher/FolderIcon;->mTmpPos:[F

    aget v4, v2, v3

    float-to-int v4, v4

    aget v5, v2, v1

    float-to-int v5, v5

    aget v2, v2, v3

    iget-object v3, p0, Lcom/miui/home/launcher/FolderIcon;->mPreviewContainer:Landroid/view/View;

    .line 473
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object v3, p0, Lcom/miui/home/launcher/FolderIcon;->mTmpPos:[F

    aget v1, v3, v1

    iget-object v3, p0, Lcom/miui/home/launcher/FolderIcon;->mPreviewContainer:Landroid/view/View;

    .line 474
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 472
    invoke-virtual {p1, v4, v5, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .line 651
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/FolderIcon;->hasOverlappingRendering(Lcom/miui/home/launcher/Launcher;)Z

    move-result v0

    return v0
.end method

.method public invalidatePreviews()V
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mPreviewIconAdapter:Lcom/miui/home/launcher/FolderPreviewIconAdapter;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderPreviewIconAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public isDropEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isPendingItemsEmtpy()Z
    .locals 1

    .line 407
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mPendingItemsDelegate:Lcom/miui/home/launcher/PendingSourceDelegate;

    invoke-virtual {v0}, Lcom/miui/home/launcher/PendingSourceDelegate;->isPendingItemsEmtpy()Z

    move-result v0

    return v0
.end method

.method public isPreRemoved()Z
    .locals 1

    .line 382
    iget-boolean v0, p0, Lcom/miui/home/launcher/FolderIcon;->mIsPreRemoved:Z

    return v0
.end method

.method public loadItemIcons(Z)V
    .locals 4

    .line 235
    iget-object p1, p0, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->count()I

    move-result p1

    .line 236
    sget v0, Lcom/miui/home/launcher/FolderIcon;->MAX_PREVIEW_ICON_NUM:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 239
    iget-object v2, p0, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-object v3, p0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/FolderInfo;->getAdapter(Landroid/content/Context;)Lcom/miui/home/launcher/ShortcutsAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/ShortcutsAdapter;->getItem(I)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 241
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/FolderIcon;->mPreviewIconAdapter:Lcom/miui/home/launcher/FolderPreviewIconAdapter;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/FolderPreviewIconAdapter;->refresh(Ljava/util/ArrayList;)V

    .line 242
    iget-object p1, p0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/Launcher;->updateFolderMessage(Lcom/miui/home/launcher/FolderInfo;)V

    return-void
.end method

.method public onBackAnimStart()V
    .locals 2

    .line 609
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mPreviewContainer:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onBackAnimStop()V
    .locals 2

    .line 619
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mPreviewContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onClose()V
    .locals 1

    .line 371
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 372
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/FolderIcon;->loadItemIcons(Z)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 709
    invoke-super {p0}, Lcom/miui/home/launcher/ItemIcon;->onDetachedFromWindow()V

    .line 710
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mPreviewIconAdapter:Lcom/miui/home/launcher/FolderPreviewIconAdapter;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderPreviewIconAdapter;->dispose()V

    return-void
.end method

.method public onDragCompleted(Lcom/miui/home/launcher/DropTarget;Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    return-void
.end method

.method public onDragEnter(Lcom/miui/home/launcher/DragObject;)V
    .locals 4

    .line 336
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/FolderIcon;->isDropable(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 337
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderIcon;->isDockViewMode()Z

    move-result p1

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    .line 338
    iget-object p1, p0, Lcom/miui/home/launcher/FolderIcon;->mDragOverAnimator:Landroid/animation/ValueAnimator;

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto :goto_0

    .line 340
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/FolderIcon;->mDragOverAnimator:Landroid/animation/ValueAnimator;

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    :goto_0
    const/4 p1, 0x1

    .line 342
    iput-boolean p1, p0, Lcom/miui/home/launcher/FolderIcon;->mIsDragingEnter:Z

    .line 343
    iget-object p1, p0, Lcom/miui/home/launcher/FolderIcon;->mDragOverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 344
    iget-object p1, p0, Lcom/miui/home/launcher/FolderIcon;->mPerformHapticRunnable:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mDragOverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/home/launcher/FolderIcon;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 345
    iget-object p1, p0, Lcom/miui/home/launcher/FolderIcon;->mDragOpenFolder:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v0

    mul-long/2addr v0, v2

    iget-object v2, p0, Lcom/miui/home/launcher/FolderIcon;->mDragOverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/home/launcher/FolderIcon;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f8f5c29    # 1.12f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3fa66666    # 1.3f
    .end array-data
.end method

.method public onDragExit(Lcom/miui/home/launcher/DragObject;)V
    .locals 1

    .line 353
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderIcon;->isDockViewMode()Z

    move-result p1

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    .line 354
    iget-object p1, p0, Lcom/miui/home/launcher/FolderIcon;->mDragOverAnimator:Landroid/animation/ValueAnimator;

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto :goto_0

    .line 356
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/FolderIcon;->mDragOverAnimator:Landroid/animation/ValueAnimator;

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    :goto_0
    const/4 p1, 0x0

    .line 358
    iput-boolean p1, p0, Lcom/miui/home/launcher/FolderIcon;->mIsDragingEnter:Z

    .line 359
    iget-object p1, p0, Lcom/miui/home/launcher/FolderIcon;->mDragOverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 360
    iget-object p1, p0, Lcom/miui/home/launcher/FolderIcon;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 361
    iget-object p1, p0, Lcom/miui/home/launcher/FolderIcon;->mPerformHapticRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/FolderIcon;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 362
    iget-object p1, p0, Lcom/miui/home/launcher/FolderIcon;->mDragOpenFolder:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/FolderIcon;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void

    :array_0
    .array-data 4
        0x3f8f5c29    # 1.12f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3fa66666    # 1.3f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onDragOver(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    return-void
.end method

.method public onDrop(Lcom/miui/home/launcher/DragObject;)Z
    .locals 2

    .line 287
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragSource()Lcom/miui/home/launcher/DragSource;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Launcher;->insertNewShortcutFromAllApps(Lcom/miui/home/launcher/DragObject;)V

    .line 290
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/FolderIcon;->dropIconIntoFolderIcon(Lcom/miui/home/launcher/DragObject;)V

    .line 291
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->isLastObject()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 292
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/LauncherModel;->updateFolderItems(Landroid/content/Context;Lcom/miui/home/launcher/FolderInfo;)V

    .line 294
    :cond_1
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemInfo;->finishPending()V

    .line 295
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/FolderIcon;->getDropAnnounceForAccessibility(Lcom/miui/home/launcher/DragObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/DragObject;->setOnDropAnnounce(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onDropBack(Lcom/miui/home/launcher/DragObject;)V
    .locals 3

    .line 584
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/FolderIcon;->dropIconIntoFolderIcon(Lcom/miui/home/launcher/DragObject;)V

    .line 585
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 586
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v1

    new-instance v2, Lcom/miui/home/launcher/FolderIcon$8;

    invoke-direct {v2, p0, p1, v0}, Lcom/miui/home/launcher/FolderIcon$8;-><init>(Lcom/miui/home/launcher/FolderIcon;Lcom/miui/home/launcher/DragObject;Lcom/miui/home/launcher/ShortcutInfo;)V

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/DragView;->setOnRemoveCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDropCompleted()V
    .locals 0

    return-void
.end method

.method public onDropStart(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    .line 282
    iget-object p1, p0, Lcom/miui/home/launcher/FolderIcon;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    .line 113
    invoke-super {p0}, Lcom/miui/home/launcher/ItemIcon;->onFinishInflate()V

    const v0, 0x7f0a0148

    .line 115
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/FolderIcon;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mPreviewContainer:Landroid/view/View;

    .line 117
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 119
    iget-object v1, p0, Lcom/miui/home/launcher/FolderIcon;->mIconCache:Lcom/miui/home/launcher/IconCache;

    invoke-virtual {v1}, Lcom/miui/home/launcher/IconCache;->getFolderIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/launcher/FolderIcon;->mFolderBackground:Landroid/graphics/drawable/Drawable;

    .line 121
    iget-object v1, p0, Lcom/miui/home/launcher/FolderIcon;->mDragOverAnimator:Landroid/animation/ValueAnimator;

    const/high16 v2, 0x10e0000

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 122
    iget-object v1, p0, Lcom/miui/home/launcher/FolderIcon;->mDragOverAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/miui/home/launcher/FolderIcon$1;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/FolderIcon$1;-><init>(Lcom/miui/home/launcher/FolderIcon;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 132
    iget-object v1, p0, Lcom/miui/home/launcher/FolderIcon;->mDragOverAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/miui/home/launcher/FolderIcon$2;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/FolderIcon$2;-><init>(Lcom/miui/home/launcher/FolderIcon;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 140
    iget-object v1, p0, Lcom/miui/home/launcher/FolderIcon;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, 0x5

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 141
    iget-object v1, p0, Lcom/miui/home/launcher/FolderIcon;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 142
    iget-object v1, p0, Lcom/miui/home/launcher/FolderIcon;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/miui/home/launcher/FolderIcon$3;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/FolderIcon$3;-><init>(Lcom/miui/home/launcher/FolderIcon;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 150
    iget-object v1, p0, Lcom/miui/home/launcher/FolderIcon;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/miui/home/launcher/FolderIcon$4;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/FolderIcon$4;-><init>(Lcom/miui/home/launcher/FolderIcon;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 157
    iget-object v1, p0, Lcom/miui/home/launcher/FolderIcon;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 158
    iget-object v1, p0, Lcom/miui/home/launcher/FolderIcon;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    const-string v1, "folder_icon_cover.png"

    .line 159
    invoke-static {v1}, Lmiui/content/res/IconCustomizer;->getRawIconDrawable(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "folder_icon_cover_01.png"

    .line 161
    invoke-static {v1}, Lmiui/content/res/IconCustomizer;->getRawIconDrawable(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    :cond_0
    const v3, 0x7f0a0087

    .line 163
    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/FolderIcon;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/miui/home/launcher/FolderIcon;->mFolderCover:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 165
    iget-object v3, p0, Lcom/miui/home/launcher/FolderIcon;->mFolderCover:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 167
    :cond_1
    iget-object v1, p0, Lcom/miui/home/launcher/FolderIcon;->mFolderCover:Landroid/widget/ImageView;

    const v3, 0x7f0800cf

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 169
    :goto_0
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/FolderIcon;->calculateItemIconSize(Landroid/content/res/Resources;)V

    const v0, 0x7f0a00ce

    .line 170
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/FolderIcon;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mPreviewIconRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 171
    new-instance v0, Lcom/miui/home/launcher/FolderPreviewIconAdapter;

    iget-object v1, p0, Lcom/miui/home/launcher/FolderIcon;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/miui/home/launcher/FolderIcon;->mItemIconWidth:I

    iget v4, p0, Lcom/miui/home/launcher/FolderIcon;->mItemIconHeight:I

    invoke-direct {v0, v1, v3, v4}, Lcom/miui/home/launcher/FolderPreviewIconAdapter;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mPreviewIconAdapter:Lcom/miui/home/launcher/FolderPreviewIconAdapter;

    .line 172
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mPreviewIconRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v3, p0, Lcom/miui/home/launcher/FolderIcon;->mContext:Landroid/content/Context;

    sget v4, Lcom/miui/home/launcher/FolderIcon;->COLUMN_NUM:I

    invoke-direct {v1, v3, v4}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 173
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mPreviewIconRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/miui/home/launcher/FolderIcon;->mPreviewIconAdapter:Lcom/miui/home/launcher/FolderPreviewIconAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 174
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mPreviewIconRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onIconRemoved()V
    .locals 4

    .line 698
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->count()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 699
    sget v2, Lcom/miui/home/launcher/FolderIcon;->MAX_PREVIEW_ICON_NUM:I

    if-lez v2, :cond_1

    .line 700
    iget-object v2, p0, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-object v3, p0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/FolderInfo;->getAdapter(Landroid/content/Context;)Lcom/miui/home/launcher/ShortcutsAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/ShortcutsAdapter;->getItem(I)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v2

    .line 701
    iget-object v3, v2, Lcom/miui/home/launcher/ShortcutInfo;->mBuddyIconView:Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v3, :cond_0

    .line 702
    iget-object v2, v2, Lcom/miui/home/launcher/ShortcutInfo;->mBuddyIconView:Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {v2}, Lcom/miui/home/launcher/ShortcutIcon;->onIconRemoved()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onOpen()V
    .locals 0

    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 2

    .line 184
    invoke-super {p0}, Lcom/miui/home/launcher/ItemIcon;->onWallpaperColorChanged()V

    .line 185
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasAppliedLightWallpaper()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mIconCache:Lcom/miui/home/launcher/IconCache;

    invoke-virtual {v0}, Lcom/miui/home/launcher/IconCache;->getFolderIconLight()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mFolderBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mIconCache:Lcom/miui/home/launcher/IconCache;

    invoke-virtual {v0}, Lcom/miui/home/launcher/IconCache;->getFolderIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mFolderBackground:Landroid/graphics/drawable/Drawable;

    .line 190
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mFolderBackground:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/FolderIcon;->setIconImageView(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public removePendingItem(Lcom/miui/home/launcher/PendingItem;)V
    .locals 1

    .line 400
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mPendingItemsDelegate:Lcom/miui/home/launcher/PendingSourceDelegate;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/PendingSourceDelegate;->removePendingItem(Lcom/miui/home/launcher/PendingItem;)V

    .line 401
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderIcon;->checkToDeleteSelf()V

    .line 402
    iget-object p1, p0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->invalidateWorkspacePreview()V

    return-void
.end method

.method requestPreviewLayout()V
    .locals 1

    .line 691
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mPreviewIconAdapter:Lcom/miui/home/launcher/FolderPreviewIconAdapter;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderPreviewIconAdapter;->notifyDataSetChanged()V

    .line 692
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mPreviewContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public resetBackAnim()V
    .locals 2

    .line 624
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mPreviewContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setDragController(Lcom/miui/home/launcher/DragController;)V
    .locals 0

    return-void
.end method

.method public setFastDelete(Z)V
    .locals 0

    .line 569
    iput-boolean p1, p0, Lcom/miui/home/launcher/FolderIcon;->mIsFastDelete:Z

    return-void
.end method

.method public setIsDrawingInThumbnailView(Z)V
    .locals 1

    .line 557
    invoke-super {p0, p1}, Lcom/miui/home/launcher/ItemIcon;->setIsDrawingInThumbnailView(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 558
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderIcon;->getDefaultLayerType()I

    move-result p1

    :goto_0
    sget-object v0, Lcom/miui/home/launcher/FolderIcon;->sLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/FolderIcon;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public showPreview(Z)V
    .locals 1

    .line 480
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mPreviewContainer:Landroid/view/View;

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 481
    iget-object p1, p0, Lcom/miui/home/launcher/FolderIcon;->mPreviewContainer:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public updateBackAnim(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public updateFolderTilte(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 5

    .line 506
    invoke-static {}, Lcom/miui/home/launcher/common/AppCategoryManager;->getInstance()Lcom/miui/home/launcher/common/AppCategoryManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/FolderIcon;->mContext:Landroid/content/Context;

    .line 507
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/miui/home/launcher/FolderIcon$CategoryUpdateListener;

    iget-object v3, p0, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-direct {v2, v3}, Lcom/miui/home/launcher/FolderIcon$CategoryUpdateListener;-><init>(Lcom/miui/home/launcher/FolderInfo;)V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    .line 508
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {p2}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v3, p2

    .line 506
    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/home/launcher/common/AppCategoryManager;->getAppCategoryId(Landroid/content/Context;Lcom/miui/home/launcher/common/AppCategoryManager$OnCategoryLoadedListener;[Ljava/lang/String;)V

    return-void
.end method

.method public updateNewInstallIndicator(Z)V
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mTitle:Lcom/miui/home/launcher/TitleTextView;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/TitleTextView;->updateNewInstallIndicator(Z)V

    return-void
.end method
