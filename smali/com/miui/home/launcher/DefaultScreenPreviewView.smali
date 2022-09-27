.class public Lcom/miui/home/launcher/DefaultScreenPreviewView;
.super Landroid/widget/LinearLayout;
.source "DefaultScreenPreviewView.java"

# interfaces
.implements Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;


# static fields
.field private static mThumbnailHeight:I

.field private static mThumbnailWidth:I


# instance fields
.field private final THUMBNAIL_CLICK_HANDLER:Landroid/view/View$OnClickListener;

.field private mDefaultScreenPreviewActionBar:Lcom/miui/home/launcher/view/LauncherActionBar;

.field private mHomeIconLayoutHeight:I

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mIsShowing:Z

.field private mPreviewContainer:Lcom/miui/home/launcher/view/FixedChildSizeGridView;

.field private mScrollView:Landroid/widget/ScrollView;

.field private mWorkspace:Lcom/miui/home/launcher/Workspace;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 31
    invoke-direct {p0, p1, v0, v1}, Lcom/miui/home/launcher/DefaultScreenPreviewView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/DefaultScreenPreviewView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 21
    iput-boolean p2, p0, Lcom/miui/home/launcher/DefaultScreenPreviewView;->mIsShowing:Z

    .line 117
    new-instance p3, Lcom/miui/home/launcher/DefaultScreenPreviewView$2;

    invoke-direct {p3, p0}, Lcom/miui/home/launcher/DefaultScreenPreviewView$2;-><init>(Lcom/miui/home/launcher/DefaultScreenPreviewView;)V

    iput-object p3, p0, Lcom/miui/home/launcher/DefaultScreenPreviewView;->THUMBNAIL_CLICK_HANDLER:Landroid/view/View$OnClickListener;

    const-string p3, "layout_inflater"

    .line 40
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/miui/home/launcher/DefaultScreenPreviewView;->mInflater:Landroid/view/LayoutInflater;

    .line 41
    invoke-virtual {p0}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f070090

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sput p1, Lcom/miui/home/launcher/DefaultScreenPreviewView;->mThumbnailWidth:I

    .line 42
    invoke-virtual {p0}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f07008f

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sput p1, Lcom/miui/home/launcher/DefaultScreenPreviewView;->mThumbnailHeight:I

    .line 43
    invoke-virtual {p0}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f07008d

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/DefaultScreenPreviewView;->mHomeIconLayoutHeight:I

    .line 44
    invoke-virtual {p0}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->getPaddingStart()I

    move-result p1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->doLauncherHavePaddingTopForStatusBarAndNotch()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/miui/home/launcher/common/Utilities;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p2

    .line 45
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->getPaddingEnd()I

    move-result p3

    invoke-virtual {p0}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->getPaddingBottom()I

    move-result v0

    .line 44
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->setPadding(IIII)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/DefaultScreenPreviewView;)Lcom/miui/home/launcher/Workspace;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/miui/home/launcher/DefaultScreenPreviewView;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/DefaultScreenPreviewView;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->updateBorderLine()V

    return-void
.end method

.method private insertConvertView(Lcom/miui/home/launcher/CellScreen;I)Landroid/view/View;
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 79
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    .line 80
    invoke-virtual {v1}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v1

    .line 81
    iget-object v3, p0, Lcom/miui/home/launcher/DefaultScreenPreviewView;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0d0034

    invoke-virtual {v3, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 82
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 83
    iget-object v1, p0, Lcom/miui/home/launcher/DefaultScreenPreviewView;->THUMBNAIL_CLICK_HANDLER:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a0230

    .line 84
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ThumbnailContainer;

    .line 85
    sget v2, Lcom/miui/home/launcher/DefaultScreenPreviewView;->mThumbnailWidth:I

    sget v3, Lcom/miui/home/launcher/DefaultScreenPreviewView;->mThumbnailHeight:I

    invoke-virtual {v1, p1, v2, v3, v0}, Lcom/miui/home/launcher/ThumbnailContainer;->setCellLayoutThumbnail(Lcom/miui/home/launcher/CellScreen;IILandroid/view/View;)V

    .line 86
    invoke-virtual {p0}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    add-int/lit8 v4, p2, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v3, v6

    const v5, 0x7f100112

    invoke-virtual {p1, v5, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/ThumbnailContainer;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 87
    invoke-virtual {p0}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {p1, v5, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 88
    iget-object p1, p0, Lcom/miui/home/launcher/DefaultScreenPreviewView;->mPreviewContainer:Lcom/miui/home/launcher/view/FixedChildSizeGridView;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/view/FixedChildSizeGridView;->addView(Landroid/view/View;)V

    if-nez p2, :cond_1

    .line 90
    new-instance p1, Lcom/miui/home/launcher/DefaultScreenPreviewView$1;

    invoke-direct {p1, p0, v0}, Lcom/miui/home/launcher/DefaultScreenPreviewView$1;-><init>(Lcom/miui/home/launcher/DefaultScreenPreviewView;Landroid/view/View;)V

    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->useViewToPost(Ljava/lang/Runnable;)V

    :cond_1
    return-object v0
.end method

.method private updateBorderLine()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 101
    :goto_0
    iget-object v2, p0, Lcom/miui/home/launcher/DefaultScreenPreviewView;->mPreviewContainer:Lcom/miui/home/launcher/view/FixedChildSizeGridView;

    invoke-virtual {v2}, Lcom/miui/home/launcher/view/FixedChildSizeGridView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 102
    iget-object v2, p0, Lcom/miui/home/launcher/DefaultScreenPreviewView;->mPreviewContainer:Lcom/miui/home/launcher/view/FixedChildSizeGridView;

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/view/FixedChildSizeGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/miui/home/launcher/ThumbnailContainerBorder;

    if-eqz v2, :cond_1

    .line 103
    iget-object v2, p0, Lcom/miui/home/launcher/DefaultScreenPreviewView;->mPreviewContainer:Lcom/miui/home/launcher/view/FixedChildSizeGridView;

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/view/FixedChildSizeGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ThumbnailContainerBorder;

    .line 104
    invoke-virtual {v2}, Lcom/miui/home/launcher/ThumbnailContainerBorder;->getThumbnailContainer()Lcom/miui/home/launcher/ThumbnailContainer;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 106
    iget-object v3, p0, Lcom/miui/home/launcher/DefaultScreenPreviewView;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v3}, Lcom/miui/home/launcher/Workspace;->getDefaultScreenIndex()I

    move-result v3

    if-ne v1, v3, :cond_0

    const/4 v3, 0x1

    .line 107
    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/ThumbnailContainer;->setIsCurrentScreen(Z)V

    goto :goto_1

    .line 109
    :cond_0
    invoke-virtual {v2, v0}, Lcom/miui/home/launcher/ThumbnailContainer;->setIsCurrentScreen(Z)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 114
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/DefaultScreenPreviewView;->mPreviewContainer:Lcom/miui/home/launcher/view/FixedChildSizeGridView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/view/FixedChildSizeGridView;->invalidate()V

    return-void
.end method


# virtual methods
.method public isShowing()Z
    .locals 1

    .line 137
    iget-boolean v0, p0, Lcom/miui/home/launcher/DefaultScreenPreviewView;->mIsShowing:Z

    return v0
.end method

.method public loadPreviewContainer()V
    .locals 2

    const/4 v0, 0x0

    .line 69
    :goto_0
    iget-object v1, p0, Lcom/miui/home/launcher/DefaultScreenPreviewView;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/miui/home/launcher/DefaultScreenPreviewView;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->insertConvertView(Lcom/miui/home/launcher/CellScreen;I)Landroid/view/View;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->updateBorderLine()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .line 50
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a018e

    .line 51
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/view/FixedChildSizeGridView;

    iput-object v0, p0, Lcom/miui/home/launcher/DefaultScreenPreviewView;->mPreviewContainer:Lcom/miui/home/launcher/view/FixedChildSizeGridView;

    .line 52
    iget-object v0, p0, Lcom/miui/home/launcher/DefaultScreenPreviewView;->mPreviewContainer:Lcom/miui/home/launcher/view/FixedChildSizeGridView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/view/FixedChildSizeGridView;->setColumnNum(I)V

    .line 53
    iget-object v0, p0, Lcom/miui/home/launcher/DefaultScreenPreviewView;->mPreviewContainer:Lcom/miui/home/launcher/view/FixedChildSizeGridView;

    sget v1, Lcom/miui/home/launcher/DefaultScreenPreviewView;->mThumbnailWidth:I

    sget v2, Lcom/miui/home/launcher/DefaultScreenPreviewView;->mThumbnailHeight:I

    iget v3, p0, Lcom/miui/home/launcher/DefaultScreenPreviewView;->mHomeIconLayoutHeight:I

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/view/FixedChildSizeGridView;->setChildSize(II)V

    const v0, 0x7f0a00b3

    .line 54
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/view/LauncherActionBar;

    iput-object v0, p0, Lcom/miui/home/launcher/DefaultScreenPreviewView;->mDefaultScreenPreviewActionBar:Lcom/miui/home/launcher/view/LauncherActionBar;

    .line 55
    iget-object v0, p0, Lcom/miui/home/launcher/DefaultScreenPreviewView;->mDefaultScreenPreviewActionBar:Lcom/miui/home/launcher/view/LauncherActionBar;

    const v1, 0x7f100132

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/view/LauncherActionBar;->setTitle(I)V

    const v0, 0x7f0a00b4

    .line 56
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/miui/home/launcher/DefaultScreenPreviewView;->mScrollView:Landroid/widget/ScrollView;

    return-void
.end method

.method public onShow(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 61
    iget-object p1, p0, Lcom/miui/home/launcher/DefaultScreenPreviewView;->mScrollView:Landroid/widget/ScrollView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->setScrollY(I)V

    .line 62
    invoke-virtual {p0}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->loadPreviewContainer()V

    goto :goto_0

    .line 64
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/DefaultScreenPreviewView;->mPreviewContainer:Lcom/miui/home/launcher/view/FixedChildSizeGridView;

    invoke-virtual {p1}, Lcom/miui/home/launcher/view/FixedChildSizeGridView;->removeAllViews()V

    :goto_0
    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/miui/home/launcher/DefaultScreenPreviewView;->mDefaultScreenPreviewActionBar:Lcom/miui/home/launcher/view/LauncherActionBar;

    invoke-virtual {v0}, Lcom/miui/home/launcher/view/LauncherActionBar;->onWallpaperColorChanged()V

    .line 151
    iget-object v0, p0, Lcom/miui/home/launcher/DefaultScreenPreviewView;->mPreviewContainer:Lcom/miui/home/launcher/view/FixedChildSizeGridView;

    invoke-static {v0}, Lcom/miui/home/launcher/WallpaperUtils;->varyViewGroupByWallpaper(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public setIsShowing(Z)V
    .locals 0

    .line 141
    iput-boolean p1, p0, Lcom/miui/home/launcher/DefaultScreenPreviewView;->mIsShowing:Z

    return-void
.end method

.method public setResource(Lcom/miui/home/launcher/Workspace;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/miui/home/launcher/DefaultScreenPreviewView;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    return-void
.end method
