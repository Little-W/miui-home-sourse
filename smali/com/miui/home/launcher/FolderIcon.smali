.class public Lcom/miui/home/launcher/FolderIcon;
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
        Lcom/miui/home/launcher/FolderIcon$CategoryUpdateListener;,
        Lcom/miui/home/launcher/FolderIcon$PreviewIconView;
    }
.end annotation


# static fields
.field private static sTmpCanvas:Landroid/graphics/Canvas;


# instance fields
.field private mAlphaAnimator:Landroid/animation/ValueAnimator;

.field private mDragOpenFolder:Ljava/lang/Runnable;

.field private mDragOverAnimator:Landroid/animation/ValueAnimator;

.field private mFolderBackground:Landroid/graphics/drawable/Drawable;

.field private mFolderCover:Landroid/widget/ImageView;

.field private mIconCache:Lcom/miui/home/launcher/IconCache;

.field private mImageView:Lcom/miui/home/launcher/LauncherIconImageView;

.field private mInfo:Lcom/miui/home/launcher/FolderInfo;

.field private mIsDragingEnter:Z

.field private mIsFastDelete:Z

.field private mIsPreRemoved:Z

.field private mItemIconHeight:I

.field private mItemIconWidth:I

.field private mItemIcons:[Lcom/miui/home/launcher/FolderIcon$PreviewIconView;

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mPendingItemsDelegate:Lcom/miui/home/launcher/PendingSourceDelegate;

.field private mPerformHapticRunnable:Ljava/lang/Runnable;

.field private mPreviewContainer:Landroid/view/View;

.field private mSerialExecutor:Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;

.field private mTmpPos:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 748
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/FolderIcon;->sTmpCanvas:Landroid/graphics/Canvas;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 100
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/ItemIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 83
    iput-boolean p1, p0, Lcom/miui/home/launcher/FolderIcon;->mIsPreRemoved:Z

    .line 84
    iput-boolean p1, p0, Lcom/miui/home/launcher/FolderIcon;->mIsDragingEnter:Z

    .line 85
    iput-boolean p1, p0, Lcom/miui/home/launcher/FolderIcon;->mIsFastDelete:Z

    .line 88
    new-instance p1, Landroid/animation/ValueAnimator;

    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/FolderIcon;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 89
    new-instance p1, Landroid/animation/ValueAnimator;

    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/FolderIcon;->mDragOverAnimator:Landroid/animation/ValueAnimator;

    const/4 p1, 0x2

    .line 92
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/miui/home/launcher/FolderIcon;->mTmpPos:[F

    .line 93
    new-instance p1, Lcom/miui/home/launcher/PendingSourceDelegate;

    invoke-direct {p1}, Lcom/miui/home/launcher/PendingSourceDelegate;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/FolderIcon;->mPendingItemsDelegate:Lcom/miui/home/launcher/PendingSourceDelegate;

    .line 298
    new-instance p1, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;

    const-string p2, "Folder Task"

    invoke-direct {p1, p2}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/home/launcher/FolderIcon;->mSerialExecutor:Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;

    .line 453
    new-instance p1, Lcom/miui/home/launcher/FolderIcon$9;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/FolderIcon$9;-><init>(Lcom/miui/home/launcher/FolderIcon;)V

    iput-object p1, p0, Lcom/miui/home/launcher/FolderIcon;->mDragOpenFolder:Ljava/lang/Runnable;

    .line 484
    new-instance p1, Lcom/miui/home/launcher/-$$Lambda$FolderIcon$BQKSJDunDe4pZbhvpsF73VspGmk;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/-$$Lambda$FolderIcon$BQKSJDunDe4pZbhvpsF73VspGmk;-><init>(Lcom/miui/home/launcher/FolderIcon;)V

    iput-object p1, p0, Lcom/miui/home/launcher/FolderIcon;->mPerformHapticRunnable:Ljava/lang/Runnable;

    .line 101
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Application;->getIconCache()Lcom/miui/home/launcher/IconCache;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/FolderIcon;->mIconCache:Lcom/miui/home/launcher/IconCache;

    .line 103
    sget-object p1, Lcom/miui/home/launcher/FolderIcon;->sLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/FolderIcon;->setLayerPaint(Landroid/graphics/Paint;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/FolderIcon;)Landroid/widget/ImageView;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/miui/home/launcher/FolderIcon;->mFolderCover:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/FolderIcon;)Z
    .locals 0

    .line 65
    iget-boolean p0, p0, Lcom/miui/home/launcher/FolderIcon;->mIsDragingEnter:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/miui/home/launcher/FolderIcon;)Lcom/miui/home/launcher/FolderInfo;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/miui/home/launcher/FolderIcon;)Ljava/lang/Runnable;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/miui/home/launcher/FolderIcon;->mDragOpenFolder:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/miui/home/launcher/FolderIcon;)Landroid/view/View;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/miui/home/launcher/FolderIcon;->mPreviewContainer:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/FolderIcon;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/miui/home/launcher/FolderIcon;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/FolderIcon;)Lcom/miui/home/launcher/IconCache;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/miui/home/launcher/FolderIcon;->mIconCache:Lcom/miui/home/launcher/IconCache;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/FolderIcon;)[Lcom/miui/home/launcher/FolderIcon$PreviewIconView;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/miui/home/launcher/FolderIcon;->mItemIcons:[Lcom/miui/home/launcher/FolderIcon$PreviewIconView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/home/launcher/FolderIcon;)I
    .locals 0

    .line 65
    iget p0, p0, Lcom/miui/home/launcher/FolderIcon;->mItemIconWidth:I

    return p0
.end method

.method static synthetic access$600(Lcom/miui/home/launcher/FolderIcon;)I
    .locals 0

    .line 65
    iget p0, p0, Lcom/miui/home/launcher/FolderIcon;->mItemIconHeight:I

    return p0
.end method

.method static synthetic access$700(Lcom/miui/home/launcher/FolderIcon;)Landroid/content/Context;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/miui/home/launcher/FolderIcon;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$800(Lcom/miui/home/launcher/FolderIcon;Landroid/content/res/Resources;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/FolderIcon;->calculateItemIconSize(Landroid/content/res/Resources;)V

    return-void
.end method

.method static synthetic access$900(Lcom/miui/home/launcher/FolderIcon;)Lcom/miui/home/launcher/Launcher;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object p0
.end method

.method private calculateItemIconSize(Landroid/content/res/Resources;)V
    .locals 3

    const v0, 0x7f070142

    .line 353
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const v1, 0x7f070140

    .line 354
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    .line 355
    invoke-static {}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->getInstance()Lcom/miui/home/launcher/common/LauncherIconSizeProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->getFolderPreviewItemPadding()I

    move-result v1

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v0, v2

    div-float/2addr p1, v2

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 358
    iput v0, p0, Lcom/miui/home/launcher/FolderIcon;->mItemIconWidth:I

    sub-float/2addr p1, v1

    float-to-int p1, p1

    .line 359
    iput p1, p0, Lcom/miui/home/launcher/FolderIcon;->mItemIconHeight:I

    return-void
.end method

.method public static create(ILcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;)Lcom/miui/home/launcher/FolderIcon;
    .locals 2

    .line 221
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/FolderIcon;

    .line 222
    iput-object p1, p0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object p0
.end method

.method private dropIconIntoFolderIcon(Lcom/miui/home/launcher/DragObject;)V
    .locals 7

    .line 431
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->count()I

    move-result v0

    .line 432
    iget v1, p1, Lcom/miui/home/launcher/DragObject;->dropAction:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 433
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v1

    iget v1, v1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iget-object v3, p0, Lcom/miui/home/launcher/FolderIcon;->mItemIcons:[Lcom/miui/home/launcher/FolderIcon$PreviewIconView;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 434
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    iget v0, v0, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 437
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/FolderIcon;->mItemIcons:[Lcom/miui/home/launcher/FolderIcon$PreviewIconView;

    array-length v3, v1

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    aget-object v1, v1, v3

    .line 438
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v3

    .line 439
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3}, Lcom/miui/home/launcher/DragView;->getContent()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v3, v5}, Lcom/miui/home/launcher/DragView;->setTargetScale(F)V

    .line 440
    iget-object v5, p0, Lcom/miui/home/launcher/FolderIcon;->mItemIcons:[Lcom/miui/home/launcher/FolderIcon$PreviewIconView;

    array-length v5, v5

    if-lt v0, v5, :cond_1

    .line 441
    invoke-virtual {v3}, Lcom/miui/home/launcher/DragView;->setFakeTargetMode()V

    .line 442
    invoke-virtual {v3}, Lcom/miui/home/launcher/DragView;->setFadeoutAnimationMode()V

    :cond_1
    const/4 v0, 0x0

    .line 444
    invoke-virtual {v3, v0}, Lcom/miui/home/launcher/DragView;->setPivotX(F)V

    .line 445
    invoke-virtual {v3, v0}, Lcom/miui/home/launcher/DragView;->setPivotY(F)V

    .line 446
    invoke-virtual {v3, v1}, Lcom/miui/home/launcher/DragView;->setAnimateTarget(Landroid/view/View;)Z

    .line 448
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    iget p1, p1, Lcom/miui/home/launcher/DragObject;->dropAction:I

    if-eq p1, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    iget-object p1, p0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 449
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getLauncherMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object p1

    .line 448
    invoke-virtual {v0, v1, v4, p1}, Lcom/miui/home/launcher/FolderInfo;->add(Lcom/miui/home/launcher/ShortcutInfo;ZLcom/miui/home/launcher/allapps/LauncherMode;)V

    .line 450
    iget-object p1, p0, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->notifyDataSetChanged()V

    return-void
.end method

.method public static fromXml(ILcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;Lcom/miui/home/launcher/FolderInfo;)Lcom/miui/home/launcher/FolderIcon;
    .locals 1

    .line 198
    invoke-virtual {p3}, Lcom/miui/home/launcher/FolderInfo;->getBuddyIconView()Lcom/miui/home/launcher/FolderIcon;

    move-result-object v0

    if-nez v0, :cond_0

    .line 200
    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/FolderIcon;->createItemIcon(ILcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/miui/home/launcher/FolderIcon;

    .line 201
    invoke-virtual {p3, v0}, Lcom/miui/home/launcher/FolderInfo;->setBuddyIconView(Lcom/miui/home/launcher/FolderIcon;)V

    .line 204
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderIcon;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/miui/home/launcher/ItemIcon;->createDefaultLayoutParams(Landroid/view/ViewGroup$LayoutParams;Landroid/view/ViewGroup;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 207
    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/FolderIcon;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 210
    :cond_1
    iget-object p0, v0, Lcom/miui/home/launcher/FolderIcon;->mFolderBackground:Landroid/graphics/drawable/Drawable;

    const/4 p2, 0x0

    invoke-virtual {v0, p0, p2}, Lcom/miui/home/launcher/FolderIcon;->setIconImageView(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)V

    .line 211
    invoke-virtual {p3, p1}, Lcom/miui/home/launcher/FolderInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/FolderIcon;->setTitle(Ljava/lang/CharSequence;)V

    .line 212
    invoke-virtual {v0, p3}, Lcom/miui/home/launcher/FolderIcon;->setTag(Ljava/lang/Object;)V

    .line 213
    iput-object p3, v0, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    .line 214
    iput-object p1, v0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 215
    iput-object v0, p3, Lcom/miui/home/launcher/FolderInfo;->icon:Lcom/miui/home/launcher/Folder$FolderCallback;

    .line 216
    invoke-virtual {p3}, Lcom/miui/home/launcher/FolderInfo;->notifyDataSetChanged()V

    return-object v0
.end method

.method private isDropable(Lcom/miui/home/launcher/ItemInfo;)Z
    .locals 3

    .line 382
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

.method private isRemoveSelfAfterDragAnim()Z
    .locals 1

    .line 416
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$getPreviewPosition$1(Lcom/miui/home/launcher/FolderIcon;Landroid/view/View;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    .line 590
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

.method public static synthetic lambda$new$0(Lcom/miui/home/launcher/FolderIcon;)V
    .locals 1

    .line 484
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performEnterOrCreateFolder(Landroid/view/View;)V

    return-void
.end method

.method private removeSelfAfterDragAnim(Lcom/miui/home/launcher/DragObject;Lcom/miui/home/launcher/ItemInfo;)V
    .locals 1

    .line 420
    new-instance v0, Lcom/miui/home/launcher/FolderIcon$8;

    invoke-direct {v0, p0, p2, p1}, Lcom/miui/home/launcher/FolderIcon$8;-><init>(Lcom/miui/home/launcher/FolderIcon;Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/DragObject;)V

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/DragObject;->addDragAnimationListener(Lcom/miui/home/launcher/DragController$DropAnimationListener;)V

    return-void
.end method

.method private resetDragItemIfNeed(Lcom/miui/home/launcher/FolderInfo;)V
    .locals 1

    .line 569
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragController()Lcom/miui/home/launcher/DragController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/DragController;->isFolderDragging(Lcom/miui/home/launcher/FolderInfo;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 570
    iget-object p1, p0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->resetDragItems()V

    :cond_0
    return-void
.end method


# virtual methods
.method public acceptDrop(Lcom/miui/home/launcher/DragObject;)Z
    .locals 0

    .line 378
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/FolderIcon;->isDropable(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result p1

    return p1
.end method

.method public addPendingItem(Lcom/miui/home/launcher/PendingItem;)V
    .locals 1

    .line 514
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mPendingItemsDelegate:Lcom/miui/home/launcher/PendingSourceDelegate;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/PendingSourceDelegate;->addPendingItem(Lcom/miui/home/launcher/PendingItem;)V

    return-void
.end method

.method public bindFolderInfo(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/FolderInfo;)V
    .locals 2

    .line 227
    invoke-virtual {p2, p0}, Lcom/miui/home/launcher/FolderInfo;->setBuddyIconView(Lcom/miui/home/launcher/FolderIcon;)V

    .line 228
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mFolderBackground:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/FolderIcon;->setIconImageView(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)V

    .line 229
    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/FolderInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/FolderIcon;->setTitle(Ljava/lang/CharSequence;)V

    .line 230
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/FolderIcon;->setTag(Ljava/lang/Object;)V

    .line 231
    iput-object p2, p0, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    .line 232
    iput-object p1, p0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 233
    iput-object p0, p2, Lcom/miui/home/launcher/FolderInfo;->icon:Lcom/miui/home/launcher/Folder$FolderCallback;

    .line 234
    invoke-virtual {p2}, Lcom/miui/home/launcher/FolderInfo;->notifyDataSetChanged()V

    return-void
.end method

.method public canBeDeleted()Z
    .locals 1

    .line 531
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

    .line 576
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderIcon;->canBeDeleted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 577
    iget-boolean v0, p0, Lcom/miui/home/launcher/FolderIcon;->mIsFastDelete:Z

    if-eqz v0, :cond_0

    .line 578
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/Launcher;->removeFolder(Lcom/miui/home/launcher/FolderIcon;)V

    goto :goto_0

    .line 580
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderIcon;->deleteSelf()V

    :cond_1
    :goto_0
    return-void
.end method

.method public deleteSelf()V
    .locals 3

    .line 536
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/CellLayout;

    if-eqz v0, :cond_0

    .line 537
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->getOnLongClickAgent()Lcom/miui/home/launcher/OnLongClickAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/OnLongClickAgent;->cancelCustomziedLongPress()V

    .line 539
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/FolderIcon;->resetDragItemIfNeed(Lcom/miui/home/launcher/FolderInfo;)V

    const/4 v0, 0x0

    .line 540
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/FolderIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 541
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object v1, p0, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->closeFolder(Lcom/miui/home/launcher/FolderInfo;)V

    .line 542
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/Launcher;->preRemoveItem(Landroid/view/View;)V

    const/4 v0, 0x1

    .line 543
    iput-boolean v0, p0, Lcom/miui/home/launcher/FolderIcon;->mIsPreRemoved:Z

    .line 544
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v1, 0x2

    .line 545
    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 546
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 547
    new-instance v1, Lcom/miui/home/launcher/FolderIcon$10;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/FolderIcon$10;-><init>(Lcom/miui/home/launcher/FolderIcon;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 554
    new-instance v1, Lcom/miui/home/launcher/FolderIcon$11;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/FolderIcon$11;-><init>(Lcom/miui/home/launcher/FolderIcon;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 565
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

    .line 665
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderIcon;->isDrawingInThumbnailView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mTitleContainer:Lcom/miui/home/launcher/ItemIconTitleContainer;

    if-ne p2, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 669
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

    .line 670
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mPreviewContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    .line 671
    iget-object v1, p0, Lcom/miui/home/launcher/FolderIcon;->mPreviewContainer:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 672
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/ItemIcon;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    .line 673
    iget-object p2, p0, Lcom/miui/home/launcher/FolderIcon;->mPreviewContainer:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 675
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/ItemIcon;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public finishPendingAll()V
    .locals 2

    .line 687
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mPendingItemsDelegate:Lcom/miui/home/launcher/PendingSourceDelegate;

    invoke-virtual {v0}, Lcom/miui/home/launcher/PendingSourceDelegate;->getPendingItems()Ljava/util/HashSet;

    move-result-object v0

    .line 688
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/PendingItem;

    .line 689
    invoke-interface {v1}, Lcom/miui/home/launcher/PendingItem;->finishPending()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getBackAnimPreviewDrawable()Landroid/graphics/drawable/Drawable;
    .locals 8

    .line 752
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherIconImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 753
    iget-object v1, p0, Lcom/miui/home/launcher/FolderIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherIconImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 754
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/common/Utilities;->createBitmapSafely(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 756
    sget-object v2, Lcom/miui/home/launcher/FolderIcon;->sTmpCanvas:Landroid/graphics/Canvas;

    .line 757
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 758
    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 759
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

    .line 760
    iget-object v6, p0, Lcom/miui/home/launcher/FolderIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {v6}, Lcom/miui/home/launcher/LauncherIconImageView;->getHeight()I

    move-result v6

    iget-object v7, p0, Lcom/miui/home/launcher/FolderIcon;->mPreviewContainer:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v6, v5

    .line 761
    invoke-virtual {v2, v4, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 762
    iget-object v4, p0, Lcom/miui/home/launcher/FolderIcon;->mPreviewContainer:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 763
    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 764
    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 765
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

    .line 623
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mFolderCover:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getDefaultLayerType()I
    .locals 2

    .line 181
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

    .line 374
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderIcon;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/home/launcher/FolderIcon;->mTitle:Lcom/miui/home/launcher/TitleTextView;

    invoke-virtual {v1}, Lcom/miui/home/launcher/TitleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f10006e

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

    .line 660
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    return-object v0
.end method

.method public getHitRect(Landroid/graphics/Rect;)V
    .locals 4

    .line 497
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

    .line 777
    new-instance v0, Lcom/miui/home/launcher/FolderIcon$13;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/FolderIcon$13;-><init>(Lcom/miui/home/launcher/FolderIcon;)V

    return-object v0
.end method

.method public getOnDropAnnounce()Lcom/miui/home/launcher/DropTarget$OnDropAnnounce;
    .locals 0

    return-object p0
.end method

.method public getPreviewArray()[Landroid/widget/ImageView;
    .locals 1

    .line 619
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mItemIcons:[Lcom/miui/home/launcher/FolderIcon$PreviewIconView;

    return-object v0
.end method

.method public getPreviewContainerSnapshot()Landroid/graphics/Bitmap;
    .locals 2

    .line 656
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mPreviewContainer:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/miui/home/launcher/DragController;->createViewBitmap(Landroid/view/View;F)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getPreviewCount()I
    .locals 1

    .line 615
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mItemIcons:[Lcom/miui/home/launcher/FolderIcon$PreviewIconView;

    array-length v0, v0

    return v0
.end method

.method public getPreviewIconHeight()F
    .locals 2

    .line 607
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mItemIcons:[Lcom/miui/home/launcher/FolderIcon$PreviewIconView;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 608
    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderIcon$PreviewIconView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    return v0

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method public getPreviewPosition(Landroid/graphics/Rect;)F
    .locals 10

    .line 587
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mTmpPos:[F

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v3, 0x0

    aput v2, v0, v3

    .line 588
    iget-object v4, p0, Lcom/miui/home/launcher/FolderIcon;->mPreviewContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 589
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/home/launcher/FolderIcon;->mTmpPos:[F

    new-instance v9, Lcom/miui/home/launcher/-$$Lambda$FolderIcon$SFHeY-z-jw0n_86ueAtASyNFeYI;

    invoke-direct {v9, p0}, Lcom/miui/home/launcher/-$$Lambda$FolderIcon$SFHeY-z-jw0n_86ueAtASyNFeYI;-><init>(Lcom/miui/home/launcher/FolderIcon;)V

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 588
    invoke-static/range {v4 .. v9}, Lcom/miui/home/launcher/common/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZZLjava/util/function/Predicate;)F

    move-result v0

    .line 591
    iget-object v2, p0, Lcom/miui/home/launcher/FolderIcon;->mTmpPos:[F

    aget v4, v2, v3

    float-to-int v4, v4

    aget v5, v2, v1

    float-to-int v5, v5

    aget v2, v2, v3

    iget-object v3, p0, Lcom/miui/home/launcher/FolderIcon;->mPreviewContainer:Landroid/view/View;

    .line 592
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

    .line 593
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 591
    invoke-virtual {p1, v4, v5, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .line 772
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/FolderIcon;->hasOverlappingRendering(Lcom/miui/home/launcher/Launcher;)Z

    move-result v0

    return v0
.end method

.method protected initNoWordAdapter()Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;
    .locals 1

    .line 825
    new-instance v0, Lcom/miui/home/launcher/FolderIcon$14;

    invoke-direct {v0, p0, p0}, Lcom/miui/home/launcher/FolderIcon$14;-><init>(Lcom/miui/home/launcher/FolderIcon;Lcom/miui/home/launcher/ItemIcon;)V

    return-object v0
.end method

.method public invalidatePreviews()V
    .locals 3

    const/4 v0, 0x0

    .line 283
    :goto_0
    iget-object v1, p0, Lcom/miui/home/launcher/FolderIcon;->mItemIcons:[Lcom/miui/home/launcher/FolderIcon$PreviewIconView;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 284
    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderIcon$PreviewIconView;->invalidate()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public isDropEnabled()Z
    .locals 2

    .line 505
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isPendingItemsEmtpy()Z
    .locals 1

    .line 526
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mPendingItemsDelegate:Lcom/miui/home/launcher/PendingSourceDelegate;

    invoke-virtual {v0}, Lcom/miui/home/launcher/PendingSourceDelegate;->isPendingItemsEmtpy()Z

    move-result v0

    return v0
.end method

.method public isPreRemoved()Z
    .locals 1

    .line 501
    iget-boolean v0, p0, Lcom/miui/home/launcher/FolderIcon;->mIsPreRemoved:Z

    return v0
.end method

.method public loadItemIcons(Z)V
    .locals 7

    .line 302
    iget-object p1, p0, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->count()I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    if-ge v1, p1, :cond_1

    .line 303
    iget-object v3, p0, Lcom/miui/home/launcher/FolderIcon;->mItemIcons:[Lcom/miui/home/launcher/FolderIcon$PreviewIconView;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 304
    iget-object v3, p0, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-object v4, p0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v3, v4}, Lcom/miui/home/launcher/FolderInfo;->getAdapter(Landroid/content/Context;)Lcom/miui/home/launcher/ShortcutsAdapter;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/miui/home/launcher/ShortcutsAdapter;->getItem(I)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v3

    .line 305
    iget v4, v3, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v0

    .line 307
    :goto_1
    new-instance v5, Lcom/miui/home/launcher/FolderIcon$5;

    invoke-direct {v5, p0, v4, v2}, Lcom/miui/home/launcher/FolderIcon$5;-><init>(Lcom/miui/home/launcher/FolderIcon;ZI)V

    new-instance v4, Lcom/miui/home/launcher/FolderIcon$6;

    invoke-direct {v4, p0, v2, v3}, Lcom/miui/home/launcher/FolderIcon$6;-><init>(Lcom/miui/home/launcher/FolderIcon;ILcom/miui/home/launcher/ShortcutInfo;)V

    iget-object v6, p0, Lcom/miui/home/launcher/FolderIcon;->mSerialExecutor:Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;

    invoke-static {v5, v4, v3, v6}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execSerial(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 340
    :cond_1
    new-instance p1, Lcom/miui/home/launcher/FolderIcon$7;

    invoke-direct {p1, p0, v2}, Lcom/miui/home/launcher/FolderIcon$7;-><init>(Lcom/miui/home/launcher/FolderIcon;I)V

    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mSerialExecutor:Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;

    invoke-static {p1, v0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->doUIConsumerSerialized(Ljava/util/function/Consumer;Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;)V

    .line 349
    iget-object p1, p0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/Launcher;->updateFolderMessage(Lcom/miui/home/launcher/FolderInfo;)V

    return-void
.end method

.method public onBackAnimStart()V
    .locals 2

    .line 730
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mPreviewContainer:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onBackAnimStop()V
    .locals 2

    .line 740
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mPreviewContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onClose()V
    .locals 1

    .line 490
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 491
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/FolderIcon;->loadItemIcons(Z)V

    :cond_0
    return-void
.end method

.method public onDragCompleted(Lcom/miui/home/launcher/DropTarget;Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    return-void
.end method

.method public onDragEnter(Lcom/miui/home/launcher/DragObject;)V
    .locals 4

    .line 463
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/FolderIcon;->isDropable(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 464
    iget-object p1, p0, Lcom/miui/home/launcher/FolderIcon;->mDragOverAnimator:Landroid/animation/ValueAnimator;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    const/4 p1, 0x1

    .line 465
    iput-boolean p1, p0, Lcom/miui/home/launcher/FolderIcon;->mIsDragingEnter:Z

    .line 466
    iget-object p1, p0, Lcom/miui/home/launcher/FolderIcon;->mDragOverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 467
    iget-object p1, p0, Lcom/miui/home/launcher/FolderIcon;->mPerformHapticRunnable:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mDragOverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/home/launcher/FolderIcon;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 468
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

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3fa66666    # 1.3f
    .end array-data
.end method

.method public onDragExit(Lcom/miui/home/launcher/DragObject;)V
    .locals 1

    .line 476
    iget-object p1, p0, Lcom/miui/home/launcher/FolderIcon;->mDragOverAnimator:Landroid/animation/ValueAnimator;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    const/4 p1, 0x0

    .line 477
    iput-boolean p1, p0, Lcom/miui/home/launcher/FolderIcon;->mIsDragingEnter:Z

    .line 478
    iget-object p1, p0, Lcom/miui/home/launcher/FolderIcon;->mDragOverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 479
    iget-object p1, p0, Lcom/miui/home/launcher/FolderIcon;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 480
    iget-object p1, p0, Lcom/miui/home/launcher/FolderIcon;->mPerformHapticRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/FolderIcon;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 481
    iget-object p1, p0, Lcom/miui/home/launcher/FolderIcon;->mDragOpenFolder:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/FolderIcon;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void

    nop

    :array_0
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

    .line 398
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragSource()Lcom/miui/home/launcher/DragSource;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Launcher;->insertNewShortcutFromAllApps(Lcom/miui/home/launcher/DragObject;)V

    .line 401
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/FolderIcon;->dropIconIntoFolderIcon(Lcom/miui/home/launcher/DragObject;)V

    .line 402
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->isLastObject()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 403
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/LauncherModel;->updateFolderItems(Landroid/content/Context;Lcom/miui/home/launcher/FolderInfo;)V

    .line 405
    :cond_1
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    .line 406
    invoke-direct {p0}, Lcom/miui/home/launcher/FolderIcon;->isRemoveSelfAfterDragAnim()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 407
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/FolderIcon;->removeSelfAfterDragAnim(Lcom/miui/home/launcher/DragObject;Lcom/miui/home/launcher/ItemInfo;)V

    goto :goto_0

    .line 409
    :cond_2
    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemInfo;->finishPending()V

    .line 411
    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/FolderIcon;->getDropAnnounceForAccessibility(Lcom/miui/home/launcher/DragObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/DragObject;->setOnDropAnnounce(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onDropBack(Lcom/miui/home/launcher/DragObject;)V
    .locals 2

    .line 709
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/FolderIcon;->dropIconIntoFolderIcon(Lcom/miui/home/launcher/DragObject;)V

    .line 710
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 711
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object p1

    new-instance v1, Lcom/miui/home/launcher/FolderIcon$12;

    invoke-direct {v1, p0, v0}, Lcom/miui/home/launcher/FolderIcon$12;-><init>(Lcom/miui/home/launcher/FolderIcon;Lcom/miui/home/launcher/ShortcutInfo;)V

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/DragView;->setOnRemoveCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDropCompleted()V
    .locals 0

    return-void
.end method

.method public onDropStart(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    .line 393
    iget-object p1, p0, Lcom/miui/home/launcher/FolderIcon;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    .line 108
    invoke-super {p0}, Lcom/miui/home/launcher/ItemIcon;->onFinishInflate()V

    const/16 v0, 0x9

    .line 109
    new-array v0, v0, [Lcom/miui/home/launcher/FolderIcon$PreviewIconView;

    const v1, 0x7f0a0156

    .line 110
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/FolderIcon;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/FolderIcon$PreviewIconView;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f0a0157

    .line 111
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/FolderIcon;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/FolderIcon$PreviewIconView;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const v1, 0x7f0a0158

    .line 112
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/FolderIcon;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/FolderIcon$PreviewIconView;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const v1, 0x7f0a0159

    .line 113
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/FolderIcon;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/FolderIcon$PreviewIconView;

    const/4 v3, 0x3

    aput-object v1, v0, v3

    const v1, 0x7f0a015a

    .line 114
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/FolderIcon;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/FolderIcon$PreviewIconView;

    const/4 v3, 0x4

    aput-object v1, v0, v3

    const v1, 0x7f0a015b

    .line 115
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/FolderIcon;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/FolderIcon$PreviewIconView;

    const/4 v3, 0x5

    aput-object v1, v0, v3

    const v1, 0x7f0a015c

    .line 116
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/FolderIcon;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/FolderIcon$PreviewIconView;

    const/4 v4, 0x6

    aput-object v1, v0, v4

    const v1, 0x7f0a015d

    .line 117
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/FolderIcon;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/FolderIcon$PreviewIconView;

    const/4 v4, 0x7

    aput-object v1, v0, v4

    const v1, 0x7f0a015e

    .line 118
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/FolderIcon;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/FolderIcon$PreviewIconView;

    const/16 v4, 0x8

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mItemIcons:[Lcom/miui/home/launcher/FolderIcon$PreviewIconView;

    const v0, 0x7f0a01ce

    .line 121
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/FolderIcon;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mPreviewContainer:Landroid/view/View;

    .line 123
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 125
    iget-object v1, p0, Lcom/miui/home/launcher/FolderIcon;->mIconCache:Lcom/miui/home/launcher/IconCache;

    invoke-virtual {v1}, Lcom/miui/home/launcher/IconCache;->getFolderIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/launcher/FolderIcon;->mFolderBackground:Landroid/graphics/drawable/Drawable;

    .line 127
    iget-object v1, p0, Lcom/miui/home/launcher/FolderIcon;->mDragOverAnimator:Landroid/animation/ValueAnimator;

    const/high16 v4, 0x10e0000

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 128
    iget-object v1, p0, Lcom/miui/home/launcher/FolderIcon;->mDragOverAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/miui/home/launcher/FolderIcon$1;

    invoke-direct {v4, p0}, Lcom/miui/home/launcher/FolderIcon$1;-><init>(Lcom/miui/home/launcher/FolderIcon;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 138
    iget-object v1, p0, Lcom/miui/home/launcher/FolderIcon;->mDragOverAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/miui/home/launcher/FolderIcon$2;

    invoke-direct {v4, p0}, Lcom/miui/home/launcher/FolderIcon$2;-><init>(Lcom/miui/home/launcher/FolderIcon;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 146
    iget-object v1, p0, Lcom/miui/home/launcher/FolderIcon;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 147
    iget-object v1, p0, Lcom/miui/home/launcher/FolderIcon;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 148
    iget-object v1, p0, Lcom/miui/home/launcher/FolderIcon;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/miui/home/launcher/FolderIcon$3;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/FolderIcon$3;-><init>(Lcom/miui/home/launcher/FolderIcon;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 156
    iget-object v1, p0, Lcom/miui/home/launcher/FolderIcon;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/miui/home/launcher/FolderIcon$4;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/FolderIcon$4;-><init>(Lcom/miui/home/launcher/FolderIcon;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 163
    iget-object v1, p0, Lcom/miui/home/launcher/FolderIcon;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 164
    iget-object v1, p0, Lcom/miui/home/launcher/FolderIcon;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    const-string v1, "folder_icon_cover.png"

    .line 165
    invoke-static {v1}, Lmiui/content/res/IconCustomizer;->getRawIconDrawable(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "folder_icon_cover_01.png"

    .line 167
    invoke-static {v1}, Lmiui/content/res/IconCustomizer;->getRawIconDrawable(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    :cond_0
    const v2, 0x7f0a00bc

    .line 169
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/FolderIcon;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/miui/home/launcher/FolderIcon;->mFolderCover:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 171
    iget-object v2, p0, Lcom/miui/home/launcher/FolderIcon;->mFolderCover:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 173
    :cond_1
    iget-object v1, p0, Lcom/miui/home/launcher/FolderIcon;->mFolderCover:Landroid/widget/ImageView;

    const v2, 0x7f08013e

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    const v1, 0x7f0a0143

    .line 175
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/FolderIcon;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/LauncherIconImageView;

    iput-object v1, p0, Lcom/miui/home/launcher/FolderIcon;->mImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    .line 176
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/FolderIcon;->calculateItemIconSize(Landroid/content/res/Resources;)V

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

    .line 814
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->count()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 815
    iget-object v2, p0, Lcom/miui/home/launcher/FolderIcon;->mItemIcons:[Lcom/miui/home/launcher/FolderIcon$PreviewIconView;

    array-length v2, v2

    if-lez v2, :cond_1

    .line 816
    iget-object v2, p0, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-object v3, p0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/FolderInfo;->getAdapter(Landroid/content/Context;)Lcom/miui/home/launcher/ShortcutsAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/ShortcutsAdapter;->getItem(I)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v2

    .line 817
    iget-object v3, v2, Lcom/miui/home/launcher/ShortcutInfo;->mBuddyIconView:Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v3, :cond_0

    .line 818
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

    .line 186
    invoke-super {p0}, Lcom/miui/home/launcher/ItemIcon;->onWallpaperColorChanged()V

    .line 187
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasAppliedLightWallpaper()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mIconCache:Lcom/miui/home/launcher/IconCache;

    invoke-virtual {v0}, Lcom/miui/home/launcher/IconCache;->getFolderIconLight()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mFolderBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mIconCache:Lcom/miui/home/launcher/IconCache;

    invoke-virtual {v0}, Lcom/miui/home/launcher/IconCache;->getFolderIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mFolderBackground:Landroid/graphics/drawable/Drawable;

    .line 192
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mFolderBackground:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/FolderIcon;->setIconImageView(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public removePendingItem(Lcom/miui/home/launcher/PendingItem;)V
    .locals 1

    .line 519
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mPendingItemsDelegate:Lcom/miui/home/launcher/PendingSourceDelegate;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/PendingSourceDelegate;->removePendingItem(Lcom/miui/home/launcher/PendingItem;)V

    .line 520
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderIcon;->checkToDeleteSelf()V

    .line 521
    iget-object p1, p0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->invalidateWorkspacePreview()V

    return-void
.end method

.method public resetBackAnim()V
    .locals 2

    .line 745
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mPreviewContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setDragController(Lcom/miui/home/launcher/DragController;)V
    .locals 0

    return-void
.end method

.method public setEditMode(ZZ)V
    .locals 0

    .line 840
    iget-object p2, p0, Lcom/miui/home/launcher/FolderIcon;->mNoWordAdapter:Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;

    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->onEditModeChange(Z)V

    return-void
.end method

.method public setFastDelete(Z)V
    .locals 0

    .line 694
    iput-boolean p1, p0, Lcom/miui/home/launcher/FolderIcon;->mIsFastDelete:Z

    return-void
.end method

.method public setIsDrawingInThumbnailView(Z)V
    .locals 1

    .line 682
    invoke-super {p0, p1}, Lcom/miui/home/launcher/ItemIcon;->setIsDrawingInThumbnailView(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 683
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

    .line 599
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mPreviewContainer:Landroid/view/View;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isNoWordModel()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x3f19999a    # 0.6f

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 600
    iget-object p1, p0, Lcom/miui/home/launcher/FolderIcon;->mPreviewContainer:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 602
    iget-object p1, p0, Lcom/miui/home/launcher/FolderIcon;->mNoWordAdapter:Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;

    invoke-virtual {p1}, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->invalidateBindElementWhenLauncherInEditMode()V

    return-void
.end method

.method public updateBackAnim(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public updateFolderTilte(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 5

    .line 631
    invoke-static {}, Lcom/miui/home/launcher/common/AppCategoryManager;->getInstance()Lcom/miui/home/launcher/common/AppCategoryManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/FolderIcon;->mContext:Landroid/content/Context;

    .line 632
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/miui/home/launcher/FolderIcon$CategoryUpdateListener;

    iget-object v3, p0, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-direct {v2, v3}, Lcom/miui/home/launcher/FolderIcon$CategoryUpdateListener;-><init>(Lcom/miui/home/launcher/FolderInfo;)V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    .line 633
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {p2}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v3, p2

    .line 631
    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/home/launcher/common/AppCategoryManager;->getAppCategoryId(Landroid/content/Context;Lcom/miui/home/launcher/common/AppCategoryManager$OnCategoryLoadedListener;[Ljava/lang/String;)V

    return-void
.end method

.method public updateNewInstallIndicator(Z)V
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mTitle:Lcom/miui/home/launcher/TitleTextView;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/TitleTextView;->updateNewInstallIndicator(Z)V

    return-void
.end method

.method public updateSizeOnIconSizeChanged()V
    .locals 1

    .line 844
    invoke-super {p0}, Lcom/miui/home/launcher/ItemIcon;->updateSizeOnIconSizeChanged()V

    .line 845
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mPreviewContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 846
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherIconImageView;->requestLayout()V

    .line 847
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mFolderCover:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->requestLayout()V

    return-void
.end method
