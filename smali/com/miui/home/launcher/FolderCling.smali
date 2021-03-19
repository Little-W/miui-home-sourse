.class public Lcom/miui/home/launcher/FolderCling;
.super Lcom/miui/launcher/views/LauncherFrameLayout;
.source "FolderCling.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/miui/home/launcher/DragController$DragListener;
.implements Lcom/miui/home/launcher/DropTarget;
.implements Lcom/miui/home/launcher/OnLongClickAgent$VersionTagGenerator;
.implements Lcom/miui/home/launcher/ShortcutIcon$ShortcutIconContainer;
.implements Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;
.implements Lcom/miui/home/launcher/interfaces/EventBusHandlerHolder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/FolderCling$FolderUpdateLayoutHandler;,
        Lcom/miui/home/launcher/FolderCling$CancelEmptySpaceLongClickHandler;,
        Lcom/miui/home/launcher/FolderCling$LoadingFinishMessageHandler;,
        Lcom/miui/home/launcher/FolderCling$UpdateFolderPaddingHandler;
    }
.end annotation


# instance fields
.field private mCancelEmptySpaceLongClickHandler:Lcom/miui/home/launcher/FolderCling$CancelEmptySpaceLongClickHandler;

.field private mClickConfirmor:Lcom/miui/home/launcher/common/PreciseClickConfirmor;

.field private mCloseConfirm:Ljava/lang/Runnable;

.field private mCloseTimeout:I

.field private mCoord:[F

.field private mDragController:Lcom/miui/home/launcher/DragController;

.field private mEditModePaddingTop:I

.field private mEditStateChangedMessageHandler:Lcom/miui/home/launcher/common/messages/EditStateChangedMessageHandler;

.field private mFolder:Lcom/miui/home/launcher/Folder;

.field private mFolderInitPaddingBottom:I

.field private mFolderInitSize:I

.field private mFolderUpdateLayoutHandler:Lcom/miui/home/launcher/FolderCling$FolderUpdateLayoutHandler;

.field private mIsRecommendScreenShow:Z

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mLoadingFinishMessageHandler:Lcom/miui/home/launcher/FolderCling$LoadingFinishMessageHandler;

.field private mMaskColor:I

.field private mMaskPaint:Landroid/graphics/Paint;

.field private mNeedUpdateFolderPaddingBottom:Z

.field private mNormalModePaddingTop:I

.field private mOnFinishClose:Ljava/lang/Runnable;

.field private mOnLongClickAgent:Lcom/miui/home/launcher/OnLongClickAgent;

.field private mOpenTime:J

.field private mOpened:Z

.field private mRecommendButtonDescription:Ljava/lang/CharSequence;

.field private mRecommendSlidingButton:Lmiui/widget/SlidingButton;

.field private mRect:Landroid/graphics/Rect;

.field private mReverseDrawingMode:Z

.field private mSmallIconsRecommendScreen:Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;

.field private mUpdateFolderPaddingHandler:Lcom/miui/home/launcher/FolderCling$UpdateFolderPaddingHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/miui/launcher/views/LauncherFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 59
    iput-boolean p2, p0, Lcom/miui/home/launcher/FolderCling;->mOpened:Z

    const/16 v0, 0x1f4

    .line 66
    iput v0, p0, Lcom/miui/home/launcher/FolderCling;->mCloseTimeout:I

    .line 69
    iput-boolean p2, p0, Lcom/miui/home/launcher/FolderCling;->mIsRecommendScreenShow:Z

    .line 74
    new-instance v0, Lcom/miui/home/launcher/OnLongClickAgent;

    invoke-direct {v0, p0, p0}, Lcom/miui/home/launcher/OnLongClickAgent;-><init>(Landroid/view/ViewGroup;Lcom/miui/home/launcher/OnLongClickAgent$VersionTagGenerator;)V

    iput-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mOnLongClickAgent:Lcom/miui/home/launcher/OnLongClickAgent;

    const/4 v0, 0x2

    .line 113
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mCoord:[F

    .line 114
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mRect:Landroid/graphics/Rect;

    .line 142
    iput-boolean p2, p0, Lcom/miui/home/launcher/FolderCling;->mReverseDrawingMode:Z

    .line 204
    new-instance v0, Lcom/miui/home/launcher/FolderCling$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/FolderCling$1;-><init>(Lcom/miui/home/launcher/FolderCling;)V

    iput-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mOnFinishClose:Ljava/lang/Runnable;

    .line 291
    new-instance v0, Lcom/miui/home/launcher/FolderCling$2;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/FolderCling$2;-><init>(Lcom/miui/home/launcher/FolderCling;)V

    iput-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mCloseConfirm:Ljava/lang/Runnable;

    .line 604
    new-instance v0, Lcom/miui/home/launcher/FolderCling$3;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/FolderCling$3;-><init>(Lcom/miui/home/launcher/FolderCling;)V

    iput-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mEditStateChangedMessageHandler:Lcom/miui/home/launcher/common/messages/EditStateChangedMessageHandler;

    .line 633
    new-instance v0, Lcom/miui/home/launcher/FolderCling$UpdateFolderPaddingHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/FolderCling$UpdateFolderPaddingHandler;-><init>(Lcom/miui/home/launcher/FolderCling;Lcom/miui/home/launcher/FolderCling$1;)V

    iput-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mUpdateFolderPaddingHandler:Lcom/miui/home/launcher/FolderCling$UpdateFolderPaddingHandler;

    .line 634
    new-instance v0, Lcom/miui/home/launcher/FolderCling$CancelEmptySpaceLongClickHandler;

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/FolderCling$CancelEmptySpaceLongClickHandler;-><init>(Lcom/miui/home/launcher/FolderCling;Lcom/miui/home/launcher/FolderCling$1;)V

    iput-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mCancelEmptySpaceLongClickHandler:Lcom/miui/home/launcher/FolderCling$CancelEmptySpaceLongClickHandler;

    .line 635
    new-instance v0, Lcom/miui/home/launcher/FolderCling$FolderUpdateLayoutHandler;

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/FolderCling$FolderUpdateLayoutHandler;-><init>(Lcom/miui/home/launcher/FolderCling;Lcom/miui/home/launcher/FolderCling$1;)V

    iput-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mFolderUpdateLayoutHandler:Lcom/miui/home/launcher/FolderCling$FolderUpdateLayoutHandler;

    .line 637
    new-instance v0, Lcom/miui/home/launcher/FolderCling$LoadingFinishMessageHandler;

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/FolderCling$LoadingFinishMessageHandler;-><init>(Lcom/miui/home/launcher/FolderCling;Lcom/miui/home/launcher/FolderCling$1;)V

    iput-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mLoadingFinishMessageHandler:Lcom/miui/home/launcher/FolderCling$LoadingFinishMessageHandler;

    .line 82
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/FolderCling;->setClipChildren(Z)V

    .line 83
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/FolderCling;->setClipToPadding(Z)V

    .line 84
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderCling;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0700c9

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcom/miui/home/launcher/FolderCling;->mEditModePaddingTop:I

    .line 85
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderCling;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0700da

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcom/miui/home/launcher/FolderCling;->mNormalModePaddingTop:I

    .line 86
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderCling;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0700c2

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcom/miui/home/launcher/FolderCling;->mFolderInitPaddingBottom:I

    .line 87
    new-instance p2, Lcom/miui/home/launcher/common/PreciseClickConfirmor;

    invoke-direct {p2, p1}, Lcom/miui/home/launcher/common/PreciseClickConfirmor;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/miui/home/launcher/FolderCling;->mClickConfirmor:Lcom/miui/home/launcher/common/PreciseClickConfirmor;

    .line 88
    iget-object p1, p0, Lcom/miui/home/launcher/FolderCling;->mOnLongClickAgent:Lcom/miui/home/launcher/OnLongClickAgent;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, v0, v1}, Lcom/miui/home/launcher/OnLongClickAgent;->setTimeOut(J)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/FolderCling;)Lcom/miui/home/launcher/Folder;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/FolderCling;)I
    .locals 0

    .line 48
    iget p0, p0, Lcom/miui/home/launcher/FolderCling;->mFolderInitPaddingBottom:I

    return p0
.end method

.method static synthetic access$1000(Lcom/miui/home/launcher/FolderCling;)I
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/miui/home/launcher/FolderCling;->getFolderTitleOffsetAfterFolderTranslate()I

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lcom/miui/home/launcher/FolderCling;Z)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/FolderCling;->updateLayout(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/miui/home/launcher/FolderCling;)Lcom/miui/home/launcher/OnLongClickAgent;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/miui/home/launcher/FolderCling;->mOnLongClickAgent:Lcom/miui/home/launcher/OnLongClickAgent;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/FolderCling;)Ljava/lang/CharSequence;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/miui/home/launcher/FolderCling;->mRecommendButtonDescription:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$202(Lcom/miui/home/launcher/FolderCling;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/miui/home/launcher/FolderCling;->mRecommendButtonDescription:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/FolderCling;)Lmiui/widget/SlidingButton;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/miui/home/launcher/FolderCling;->mRecommendSlidingButton:Lmiui/widget/SlidingButton;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/FolderCling;)Lcom/miui/home/launcher/Launcher;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/miui/home/launcher/FolderCling;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/home/launcher/FolderCling;Z)I
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/FolderCling;->getFolderPaddingBottom(Z)I

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/miui/home/launcher/FolderCling;Z)I
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/FolderCling;->getFolderBackgroundTopPadding(Z)I

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/miui/home/launcher/FolderCling;Z)I
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/FolderCling;->getFolderHeaderPaddingBottom(Z)I

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/miui/home/launcher/FolderCling;)I
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/miui/home/launcher/FolderCling;->getFolderContainerOffsetFromDisableEditToNormalEdit()I

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/miui/home/launcher/FolderCling;Z)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/FolderCling;->startFolderEnterExitEditModeAnimator(Z)V

    return-void
.end method

.method public static clearOldVersionRecommendStaticMemory()V
    .locals 0

    .line 505
    invoke-static {}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->clearLoadingContents()V

    return-void
.end method

.method private getFolderBackgroundTopPadding(Z)I
    .locals 1

    if-eqz p1, :cond_0

    .line 597
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderCling;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0700c1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private getFolderContainerOffsetFromDisableEditToNormalEdit()I
    .locals 4

    const/4 v0, 0x0

    .line 588
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/FolderCling;->getFolderHeaderPaddingBottom(Z)I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/miui/home/launcher/FolderCling;->getFolderHeaderPaddingBottom(Z)I

    move-result v3

    sub-int/2addr v1, v3

    .line 589
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/FolderCling;->getFolderBackgroundTopPadding(Z)I

    move-result v0

    add-int/2addr v1, v0

    invoke-direct {p0, v2}, Lcom/miui/home/launcher/FolderCling;->getFolderBackgroundTopPadding(Z)I

    move-result v0

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    return v1
.end method

.method private getFolderHeaderPaddingBottom(Z)I
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 601
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderCling;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0700d2

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    :goto_0
    return p1
.end method

.method private getFolderPaddingBottom(Z)I
    .locals 1

    if-eqz p1, :cond_0

    .line 593
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderCling;->getRecommendScreenView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getFolderCellHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    add-int/2addr p1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderCling;->getFolderInitPaddingBottom()I

    move-result p1

    :goto_0
    return p1
.end method

.method private getFolderTitleOffsetAfterFolderTranslate()I
    .locals 2

    const/4 v0, 0x0

    .line 584
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/FolderCling;->getFolderHeaderPaddingBottom(Z)I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/FolderCling;->getFolderHeaderPaddingBottom(Z)I

    move-result v1

    sub-int/2addr v0, v1

    neg-int v0, v0

    return v0
.end method

.method private getRecommendDescription(Z)Ljava/lang/String;
    .locals 4

    .line 110
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderCling;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p1, :cond_0

    const p1, 0x7f100058

    goto :goto_0

    :cond_0
    const p1, 0x7f100074

    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/home/launcher/FolderCling;->mRecommendButtonDescription:Ljava/lang/CharSequence;

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$onFinishInflate$0(Lcom/miui/home/launcher/FolderCling;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 99
    iget-object p1, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Folder;->getInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/FolderInfo;->setRecommendAppsSwitchOn(Z)V

    .line 100
    iget-object p1, p0, Lcom/miui/home/launcher/FolderCling;->mRecommendSlidingButton:Lmiui/widget/SlidingButton;

    invoke-direct {p0, p2}, Lcom/miui/home/launcher/FolderCling;->getRecommendDescription(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmiui/widget/SlidingButton;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic lambda$startFolderEnterExitEditModeAnimator$1(Lcom/miui/home/launcher/FolderCling;Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 521
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Folder;->setBackgroundAlpha(F)V

    return-void
.end method

.method private startFolderEnterExitEditModeAnimator(Z)V
    .locals 6

    .line 515
    sget-object v0, Lcom/miui/home/launcher/FolderCling;->SCALE_X:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v2, v1, [F

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/Workspace;->getScreenScaleRatio()F

    move-result v4

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    const/4 v5, 0x0

    aput v4, v2, v5

    invoke-static {v0, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 516
    sget-object v2, Lcom/miui/home/launcher/FolderCling;->SCALE_Y:Landroid/util/Property;

    new-array v4, v1, [F

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/Workspace;->getScreenScaleRatio()F

    move-result v3

    :cond_1
    aput v3, v4, v5

    invoke-static {v2, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    .line 517
    sget-object v2, Lcom/miui/home/launcher/FolderCling;->TRANSLATION_Y:Landroid/util/Property;

    new-array v3, v1, [F

    const/4 v4, 0x0

    aput v4, v3, v5

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 518
    iget-object v3, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v4, v5

    aput-object p1, v4, v1

    const/4 p1, 0x2

    aput-object v2, v4, p1

    invoke-static {v3, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0x172

    .line 519
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 520
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$FolderCling$OomvJ5cuH9lk8XJZko8ac-dVnNE;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/-$$Lambda$FolderCling$OomvJ5cuH9lk8XJZko8ac-dVnNE;-><init>(Lcom/miui/home/launcher/FolderCling;)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 523
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 524
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private updateLayout(Z)V
    .locals 2

    .line 363
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/Workspace;->getScreenScaleRatio()F

    move-result v1

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Folder;->setOpenedScale(F)V

    .line 364
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Folder;->getContent()Lcom/miui/home/launcher/FolderGridView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderGridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p1, :cond_1

    .line 366
    iget-object p1, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Folder;->getContent()Lcom/miui/home/launcher/FolderGridView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderGridView;->calculateHeight()I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_1

    :cond_1
    const/4 p1, -0x2

    .line 368
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 370
    :goto_1
    iget-object p1, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Folder;->updateFolderClingPaddingTop()V

    return-void
.end method


# virtual methods
.method public acceptDrop(Lcom/miui/home/launcher/DragObject;)Z
    .locals 4

    .line 338
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 341
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    iget v0, v0, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 342
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    iget v0, v0, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    if-eq v0, v2, :cond_1

    .line 343
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    iget v0, v0, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/16 v3, 0xe

    if-eq v0, v3, :cond_1

    .line 344
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    iget p1, p1, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/16 v0, 0xb

    if-ne p1, v0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    return v1
.end method

.method public afterDragStart()V
    .locals 1

    .line 464
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Folder;->afterDragStart()V

    return-void
.end method

.method public beforeDragStart(I)V
    .locals 1

    .line 460
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Folder;->beforeDragStart(I)V

    return-void
.end method

.method bind(Lcom/miui/home/launcher/FolderInfo;)V
    .locals 4

    .line 178
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Folder;->bind(Lcom/miui/home/launcher/FolderInfo;)V

    .line 179
    iget-wide v0, p1, Lcom/miui/home/launcher/FolderInfo;->id:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderCling;->getRecommendScreen()Lcom/miui/home/launcher/commercial/recommend/RecommendScreen;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendScreen;->bind(Lcom/miui/home/launcher/FolderInfo;)V

    :cond_0
    return-void
.end method

.method close(Z)V
    .locals 4

    .line 228
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/DragController;->removeDropTarget(Lcom/miui/home/launcher/DropTarget;)V

    .line 229
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/DragController;->removeDragListener(Lcom/miui/home/launcher/DragController$DragListener;)V

    .line 230
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    iget-object v1, p0, Lcom/miui/home/launcher/FolderCling;->mOnFinishClose:Ljava/lang/Runnable;

    invoke-virtual {v0, p1, v1}, Lcom/miui/home/launcher/Folder;->onClose(ZLjava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 231
    iput-boolean p1, p0, Lcom/miui/home/launcher/FolderCling;->mOpened:Z

    const/4 p1, 0x1

    .line 232
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/FolderCling;->updateRecommendScreenVisibility(Z)V

    const/4 p1, -0x1

    .line 233
    iput p1, p0, Lcom/miui/home/launcher/FolderCling;->mFolderInitSize:I

    .line 234
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderCling;->requestFitSystemWindows()V

    .line 235
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/miui/home/launcher/common/messages/FolderStateChangedMessage;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/common/messages/FolderStateChangedMessage;-><init>(I)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 236
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderCling;->getFolderInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/home/launcher/FolderCling;->mOpenTime:J

    sub-long/2addr v0, v2

    invoke-static {p1, v0, v1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackFolderOpenTime(Lcom/miui/home/launcher/FolderInfo;J)V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 118
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderCling;->getFolder()Lcom/miui/home/launcher/Folder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Folder;->getRecommendAppsSwitch()Lcom/miui/home/launcher/NonOverlapLinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/NonOverlapLinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 119
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 121
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderCling;->getFolder()Lcom/miui/home/launcher/Folder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Folder;->getContent()Lcom/miui/home/launcher/FolderGridView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/FolderCling;->mCoord:[F

    const/4 v2, 0x1

    .line 120
    invoke-static {v0, p0, v1, v2, v2}, Lcom/miui/home/launcher/common/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZZ)F

    .line 122
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/miui/home/launcher/FolderCling;->mCoord:[F

    const/4 v3, 0x0

    aget v4, v1, v3

    float-to-int v4, v4

    aget v5, v1, v2

    float-to-int v5, v5

    aget v1, v1, v3

    float-to-int v1, v1

    .line 124
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderCling;->getFolder()Lcom/miui/home/launcher/Folder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/Folder;->getContent()Lcom/miui/home/launcher/FolderGridView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/FolderGridView;->getWidth()I

    move-result v3

    add-int/2addr v1, v3

    iget-object v3, p0, Lcom/miui/home/launcher/FolderCling;->mCoord:[F

    aget v2, v3, v2

    float-to-int v2, v2

    .line 125
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderCling;->getFolder()Lcom/miui/home/launcher/Folder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/Folder;->getContent()Lcom/miui/home/launcher/FolderGridView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/FolderGridView;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    .line 122
    invoke-virtual {v0, v4, v5, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 126
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mRect:Landroid/graphics/Rect;

    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 127
    iget v0, p0, Lcom/miui/home/launcher/FolderCling;->mMaskColor:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderCling;->getFolder()Lcom/miui/home/launcher/Folder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Folder;->getRecommendAppsSwitch()Lcom/miui/home/launcher/NonOverlapLinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/NonOverlapLinearLayout;->getAlpha()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lcom/miui/home/launcher/FolderCling;->mMaskColor:I

    .line 128
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    iget v2, p0, Lcom/miui/home/launcher/FolderCling;->mMaskColor:I

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    iget v3, p0, Lcom/miui/home/launcher/FolderCling;->mMaskColor:I

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    .line 127
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 129
    iget-object v1, p0, Lcom/miui/home/launcher/FolderCling;->mMaskPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 130
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mMaskPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 131
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 132
    invoke-super {p0, p1}, Lcom/miui/launcher/views/LauncherFrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 133
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 134
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 135
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mMaskPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 136
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 138
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/launcher/views/LauncherFrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 662
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/FolderCling;->onFilterTouchEventForSecurity(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 663
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isUninstallDialogShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    .line 664
    invoke-virtual {v0}, Lcom/miui/home/launcher/Folder;->isEditing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mOnLongClickAgent:Lcom/miui/home/launcher/OnLongClickAgent;

    .line 665
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/OnLongClickAgent;->onDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 668
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/launcher/views/LauncherFrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public enableInteractive(Z)V
    .locals 1

    .line 348
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Folder;->enableInteractive(Z)V

    .line 349
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/FolderCling;->setEnabled(Z)V

    return-void
.end method

.method protected getChildDrawingOrder(II)I
    .locals 1

    .line 150
    iget-boolean v0, p0, Lcom/miui/home/launcher/FolderCling;->mReverseDrawingMode:Z

    if-eqz v0, :cond_0

    sub-int/2addr p1, p2

    add-int/lit8 p1, p1, -0x1

    return p1

    :cond_0
    return p2
.end method

.method public getCurrentShowShortcutIcons()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutIcon;",
            ">;"
        }
    .end annotation

    .line 699
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderCling;->getFolder()Lcom/miui/home/launcher/Folder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Folder;->getContent()Lcom/miui/home/launcher/FolderGridView;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawableUtils;->getAllShortcutIconsFromParent(Landroid/view/ViewGroup;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDropTargetDelegate(Lcom/miui/home/launcher/DragObject;)Lcom/miui/home/launcher/DropTarget;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getEventBusHandlers()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x5

    .line 648
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/home/launcher/FolderCling;->mEditStateChangedMessageHandler:Lcom/miui/home/launcher/common/messages/EditStateChangedMessageHandler;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/miui/home/launcher/FolderCling;->mUpdateFolderPaddingHandler:Lcom/miui/home/launcher/FolderCling$UpdateFolderPaddingHandler;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/miui/home/launcher/FolderCling;->mCancelEmptySpaceLongClickHandler:Lcom/miui/home/launcher/FolderCling$CancelEmptySpaceLongClickHandler;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/miui/home/launcher/FolderCling;->mFolderUpdateLayoutHandler:Lcom/miui/home/launcher/FolderCling$FolderUpdateLayoutHandler;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/miui/home/launcher/FolderCling;->mLoadingFinishMessageHandler:Lcom/miui/home/launcher/FolderCling$LoadingFinishMessageHandler;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFolder()Lcom/miui/home/launcher/Folder;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    return-object v0
.end method

.method public getFolderId()J
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/home/launcher/Folder;->getInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Folder;->getInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object v0

    iget-wide v0, v0, Lcom/miui/home/launcher/FolderInfo;->id:J

    return-wide v0

    :cond_1
    :goto_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getFolderInfo()Lcom/miui/home/launcher/FolderInfo;
    .locals 1

    .line 468
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Folder;->getInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object v0

    return-object v0
.end method

.method public getFolderInitPaddingBottom()I
    .locals 1

    .line 479
    iget v0, p0, Lcom/miui/home/launcher/FolderCling;->mFolderInitPaddingBottom:I

    return v0
.end method

.method public getHitView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public getNeedUpdateFolderPaddingBottom()Z
    .locals 1

    .line 392
    iget-boolean v0, p0, Lcom/miui/home/launcher/FolderCling;->mNeedUpdateFolderPaddingBottom:Z

    return v0
.end method

.method public getNormalModePaddingTop()I
    .locals 1

    .line 483
    iget v0, p0, Lcom/miui/home/launcher/FolderCling;->mNormalModePaddingTop:I

    return v0
.end method

.method public getOnDropAnnounce()Lcom/miui/home/launcher/DropTarget$OnDropAnnounce;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRecommendScreen()Lcom/miui/home/launcher/commercial/recommend/RecommendScreen;
    .locals 1

    .line 429
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mSmallIconsRecommendScreen:Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;

    return-object v0
.end method

.method public getRecommendScreenView()Landroid/view/View;
    .locals 1

    .line 433
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderCling;->getRecommendScreen()Lcom/miui/home/launcher/commercial/recommend/RecommendScreen;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/home/launcher/commercial/recommend/RecommendScreen;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getVersionTag()Ljava/lang/Object;
    .locals 1

    .line 510
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderCling;->getWindowAttachCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public isDropEnabled()Z
    .locals 1

    .line 278
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderCling;->isOpened()Z

    move-result v0

    return v0
.end method

.method public isOpened()Z
    .locals 1

    .line 240
    iget-boolean v0, p0, Lcom/miui/home/launcher/FolderCling;->mOpened:Z

    return v0
.end method

.method public isRecommendAppsViewGoingToShow()Z
    .locals 1

    .line 400
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Folder;->getInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    .line 401
    invoke-virtual {v0}, Lcom/miui/home/launcher/Folder;->getInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->canRecommendAppsScreenShow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 402
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    .line 403
    invoke-virtual {v0}, Lcom/miui/home/launcher/Folder;->getInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRecommendScreenShow()Z
    .locals 1

    .line 437
    iget-boolean v0, p0, Lcom/miui/home/launcher/FolderCling;->mIsRecommendScreenShow:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 260
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderCling;->stepClose()Z

    .line 261
    iget-object p1, p0, Lcom/miui/home/launcher/FolderCling;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isFolderOpenedBeforeResume()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/home/launcher/FolderCling;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->hasLaunchedAppsFromFolder()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "click_to_close"

    .line 262
    invoke-static {p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackCloseFolderAfterBackToHome(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onDestory()V
    .locals 2

    .line 685
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    if-eqz v0, :cond_1

    .line 686
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 687
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 690
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderCling;->getFolderInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 692
    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->getRecommendController()Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->onBinded(Z)V

    :cond_1
    return-void
.end method

.method public onDragEnd(Lcom/miui/home/launcher/DragObject;)V
    .locals 1

    .line 381
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 384
    :cond_0
    iget-boolean p1, p0, Lcom/miui/home/launcher/FolderCling;->mOpened:Z

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/miui/home/launcher/FolderCling;->mFolderInitSize:I

    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Folder;->getFolderSize()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 385
    iget-object p1, p0, Lcom/miui/home/launcher/FolderCling;->mCloseConfirm:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/FolderCling;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public onDragEnter(Lcom/miui/home/launcher/DragObject;)V
    .locals 2

    .line 314
    iget-object p1, p0, Lcom/miui/home/launcher/FolderCling;->mCloseConfirm:Ljava/lang/Runnable;

    iget v0, p0, Lcom/miui/home/launcher/FolderCling;->mCloseTimeout:I

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/home/launcher/FolderCling;->postDelayed(Ljava/lang/Runnable;J)Z

    const/16 p1, 0x1f4

    .line 315
    iput p1, p0, Lcom/miui/home/launcher/FolderCling;->mCloseTimeout:I

    return-void
.end method

.method public onDragExit(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    .line 326
    iget-object p1, p0, Lcom/miui/home/launcher/FolderCling;->mCloseConfirm:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/FolderCling;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/16 p1, 0x1f4

    .line 327
    iput p1, p0, Lcom/miui/home/launcher/FolderCling;->mCloseTimeout:I

    return-void
.end method

.method public onDragOver(Lcom/miui/home/launcher/DragObject;)V
    .locals 1

    const/16 v0, 0x1f4

    .line 320
    iput v0, p0, Lcom/miui/home/launcher/FolderCling;->mCloseTimeout:I

    .line 321
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->invalidateDragView()V

    return-void
.end method

.method public onDragStart([Lcom/miui/home/launcher/DragSource;Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    return-void
.end method

.method public onDrop(Lcom/miui/home/launcher/DragObject;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onDropCompleted()V
    .locals 0

    return-void
.end method

.method public onDropStart(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    return-void
.end method

.method public onFilterTouchEventForSecurity(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 704
    iget-boolean v0, p0, Lcom/miui/home/launcher/FolderCling;->mOpened:Z

    if-eqz v0, :cond_0

    .line 705
    invoke-super {p0, p1}, Lcom/miui/launcher/views/LauncherFrameLayout;->onFilterTouchEventForSecurity(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 93
    invoke-super {p0}, Lcom/miui/launcher/views/LauncherFrameLayout;->onFinishInflate()V

    const/4 v0, 0x1

    .line 94
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/FolderCling;->setChildrenDrawingOrderEnabled(Z)V

    const v0, 0x7f0a00c8

    .line 95
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/FolderCling;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/Folder;

    iput-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    const v0, 0x7f0a0158

    .line 96
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/FolderCling;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;

    iput-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mSmallIconsRecommendScreen:Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;

    const v0, 0x7f0a01b1

    .line 97
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/FolderCling;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/SlidingButton;

    iput-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mRecommendSlidingButton:Lmiui/widget/SlidingButton;

    .line 98
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mRecommendSlidingButton:Lmiui/widget/SlidingButton;

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$FolderCling$JwRMpGcH2TPcR51-IdlBRYJEfR0;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/-$$Lambda$FolderCling$JwRMpGcH2TPcR51-IdlBRYJEfR0;-><init>(Lcom/miui/home/launcher/FolderCling;)V

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setOnPerformCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 102
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mMaskPaint:Landroid/graphics/Paint;

    .line 103
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderCling;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600ab

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/FolderCling;->mMaskColor:I

    .line 104
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mMaskPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/home/launcher/FolderCling;->mMaskColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 105
    invoke-virtual {p0, p0}, Lcom/miui/home/launcher/FolderCling;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/Folder;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onFolderOpenAnimationFinish()V
    .locals 1

    const/4 v0, 0x0

    .line 500
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/FolderCling;->updateRecommendScreenVisibility(Z)V

    .line 501
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderCling;->isRecommendAppsViewGoingToShow()Z

    move-result v0

    invoke-static {v0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackFolderOpenWithRecommend(Z)V

    return-void
.end method

.method public onRecommendScreenVisibilityChanged(Z)V
    .locals 3

    .line 491
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderCling;->getNeedUpdateFolderPaddingBottom()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 492
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/common/messages/FolderStateChangedMessage;

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    invoke-direct {v1, v2}, Lcom/miui/home/launcher/common/messages/FolderStateChangedMessage;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 496
    :cond_1
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/FolderCling;->setRecommendScreenShow(Z)V

    return-void
.end method

.method public onRequestMarketDetail(Landroid/content/Intent;)V
    .locals 1

    .line 472
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderCling;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "appId"

    .line 473
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 474
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderCling;->getRecommendScreen()Lcom/miui/home/launcher/commercial/recommend/RecommendScreen;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendScreen;->snapToAppView(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onScreenOrientationChanged()V
    .locals 2

    .line 453
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderCling;->getRecommendScreen()Lcom/miui/home/launcher/commercial/recommend/RecommendScreen;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/home/launcher/commercial/recommend/RecommendScreen;->onScreenOrientationChanged()V

    .line 454
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderCling;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700c9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/FolderCling;->mEditModePaddingTop:I

    .line 455
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderCling;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700da

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/FolderCling;->mNormalModePaddingTop:I

    .line 456
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderCling;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/FolderCling;->mFolderInitPaddingBottom:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 245
    invoke-super {p0, p1}, Lcom/miui/launcher/views/LauncherFrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 246
    iget-object v1, p0, Lcom/miui/home/launcher/FolderCling;->mClickConfirmor:Lcom/miui/home/launcher/common/PreciseClickConfirmor;

    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/common/PreciseClickConfirmor;->onTouchEvent(Landroid/view/MotionEvent;)V

    return v0
.end method

.method public onUserDenyRecommendConnectNetWork()V
    .locals 2

    const/4 v0, 0x0

    .line 679
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/FolderCling;->setRecommendButtonChecked(Z)V

    .line 680
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderCling;->getFolderInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/FolderInfo;->setRecommendAppsSwitchOn(Z)V

    const/4 v0, 0x1

    .line 681
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/FolderCling;->updateRecommendScreenVisibility(Z)V

    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 1

    .line 446
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Folder;->onWallpaperColorChanged()V

    .line 447
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mSmallIconsRecommendScreen:Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;

    if-eqz v0, :cond_0

    .line 448
    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->onWallpaperColorChanged()V

    :cond_0
    return-void
.end method

.method open()V
    .locals 3

    .line 185
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderCling;->getFolder()Lcom/miui/home/launcher/Folder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Folder;->getInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/FolderCling;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/FolderInfo;->initRecommendSwitchState(Lcom/miui/home/launcher/Launcher;)V

    const/4 v0, 0x1

    .line 186
    iput-boolean v0, p0, Lcom/miui/home/launcher/FolderCling;->mOpened:Z

    .line 187
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/FolderCling;->updateLayout(Z)V

    .line 188
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Folder;->getInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->getRecommendController()Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->setNeedHideBecauseReturnEmptyData(Z)V

    .line 189
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v2, Lcom/miui/home/launcher/common/messages/FolderStateChangedMessage;

    invoke-direct {v2, v1}, Lcom/miui/home/launcher/common/messages/FolderStateChangedMessage;-><init>(I)V

    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 190
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/FolderCling;->setVisibility(I)V

    .line 191
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v0, v1, p0}, Lcom/miui/home/launcher/DragController;->addDropTarget(ILcom/miui/home/launcher/DropTarget;)V

    .line 192
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Folder;->getInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->getRecommendController()Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->isRecommendSwitchOn()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/FolderCling;->setRecommendButtonChecked(Z)V

    .line 193
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Folder;->onOpen()V

    .line 194
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Folder;->getFolderSize()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/FolderCling;->mFolderInitSize:I

    .line 195
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderCling;->requestFitSystemWindows()V

    .line 196
    invoke-static {}, Lcom/miui/home/launcher/hybrid/HybridController;->clearTrackedSet()V

    .line 197
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/home/launcher/FolderCling;->mOpenTime:J

    return-void
.end method

.method public performClick()Z
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mClickConfirmor:Lcom/miui/home/launcher/common/PreciseClickConfirmor;

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/PreciseClickConfirmor;->confirmClick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    invoke-super {p0}, Lcom/miui/launcher/views/LauncherFrameLayout;->performClick()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public prepareAutoOpening()V
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/DragController;->addDragListener(Lcom/miui/home/launcher/DragController$DragListener;)V

    const/16 v0, 0x7d0

    .line 309
    iput v0, p0, Lcom/miui/home/launcher/FolderCling;->mCloseTimeout:I

    return-void
.end method

.method public scrollToLast()V
    .locals 1

    .line 487
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderCling;->getFolder()Lcom/miui/home/launcher/Folder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Folder;->getContent()Lcom/miui/home/launcher/FolderGridView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderGridView;->scrollToLast()V

    return-void
.end method

.method public setContentAlpha(F)V
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Folder;->setContentAlpha(F)V

    .line 354
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderCling;->getRecommendScreen()Lcom/miui/home/launcher/commercial/recommend/RecommendScreen;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendScreen;->onFolderAlphaChange(F)V

    return-void
.end method

.method public setDragController(Lcom/miui/home/launcher/DragController;)V
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Folder;->setDragController(Lcom/miui/home/launcher/DragController;)V

    .line 174
    iput-object p1, p0, Lcom/miui/home/launcher/FolderCling;->mDragController:Lcom/miui/home/launcher/DragController;

    return-void
.end method

.method public setDrawChildrenReverse(Z)V
    .locals 0

    .line 145
    iput-boolean p1, p0, Lcom/miui/home/launcher/FolderCling;->mReverseDrawingMode:Z

    return-void
.end method

.method setLauncher(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 157
    iput-object p1, p0, Lcom/miui/home/launcher/FolderCling;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 158
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Folder;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method

.method public setNeedUpdateFolderPaddingBottom(Z)V
    .locals 0

    .line 396
    iput-boolean p1, p0, Lcom/miui/home/launcher/FolderCling;->mNeedUpdateFolderPaddingBottom:Z

    return-void
.end method

.method public setRecommendButtonChecked(Z)V
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mRecommendSlidingButton:Lmiui/widget/SlidingButton;

    invoke-virtual {v0, p1}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    return-void
.end method

.method public setRecommendScreenShow(Z)V
    .locals 0

    .line 441
    iput-boolean p1, p0, Lcom/miui/home/launcher/FolderCling;->mIsRecommendScreenShow:Z

    return-void
.end method

.method public stepClose()Z
    .locals 3

    const/4 v0, 0x1

    .line 215
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/FolderCling;->updateRecommendScreenVisibility(Z)V

    .line 216
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderCling;->isOpened()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 217
    iget-object v1, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Folder;->isEditing()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Folder;->isEditAnimatorShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 221
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/FolderCling;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->closeFolder()Z

    return v0

    .line 218
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    invoke-virtual {v1, v2, v0}, Lcom/miui/home/launcher/Folder;->showEditPanel(ZZ)V

    return v0

    :cond_2
    return v2
.end method

.method public updateRecommendScreenVisibility(Z)V
    .locals 2

    .line 407
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/FolderCling;->setNeedUpdateFolderPaddingBottom(Z)V

    .line 408
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderCling;->isRecommendAppsViewGoingToShow()Z

    move-result p1

    .line 409
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderCling;->isRecommendScreenShow()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 410
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderCling;->getRecommendScreen()Lcom/miui/home/launcher/commercial/recommend/RecommendScreen;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendScreen;->showOrHideRecommendScreen(Z)V

    .line 414
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderCling;->isRecommendScreenShow()Z

    move-result p1

    if-nez p1, :cond_1

    .line 415
    iget-object p1, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Folder;->getInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Folder;->getInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->getRecommendController()Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 416
    iget-object p1, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Folder;->getInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->getRecommendController()Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    move-result-object p1

    .line 417
    invoke-static {}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->getLoadingContents()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 418
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 419
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;->getBuddyIconView()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "FolderCling"

    const-string v1, "updateRecommendScreenVisibility==>find not release res, just release"

    .line 420
    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    invoke-virtual {p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->clearIconResInContents()V

    :cond_1
    return-void
.end method
