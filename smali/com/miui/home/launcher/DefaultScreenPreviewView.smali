.class public Lcom/miui/home/launcher/DefaultScreenPreviewView;
.super Landroid/widget/LinearLayout;
.source "DefaultScreenPreviewView.java"

# interfaces
.implements Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;


# instance fields
.field private final THUMBNAIL_CLICK_HANDLER:Landroid/view/View$OnClickListener;

.field private mDefaultScreenPreviewActionBar:Lcom/miui/home/launcher/view/LauncherActionBar;

.field private mHomeIconLayoutHeight:I

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mIsShowing:Z

.field private mPreviewContainer:Lcom/miui/home/launcher/view/FixedChildSizeGridView;

.field private mPreviewPaddingTop:I

.field private mScrollView:Landroid/widget/ScrollView;

.field private mThumbnailHeight:I

.field private mThumbnailWidth:I

.field private mWorkspace:Lcom/miui/home/launcher/Workspace;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 37
    invoke-direct {p0, p1, v0, v1}, Lcom/miui/home/launcher/DefaultScreenPreviewView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/DefaultScreenPreviewView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 27
    iput-boolean p2, p0, Lcom/miui/home/launcher/DefaultScreenPreviewView;->mIsShowing:Z

    .line 28
    iput p2, p0, Lcom/miui/home/launcher/DefaultScreenPreviewView;->mThumbnailHeight:I

    .line 29
    iput p2, p0, Lcom/miui/home/launcher/DefaultScreenPreviewView;->mThumbnailWidth:I

    .line 154
    new-instance p3, Lcom/miui/home/launcher/DefaultScreenPreviewView$2;

    invoke-direct {p3, p0}, Lcom/miui/home/launcher/DefaultScreenPreviewView$2;-><init>(Lcom/miui/home/launcher/DefaultScreenPreviewView;)V

    iput-object p3, p0, Lcom/miui/home/launcher/DefaultScreenPreviewView;->THUMBNAIL_CLICK_HANDLER:Landroid/view/View$OnClickListener;

    const-string p3, "layout_inflater"

    .line 46
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/miui/home/launcher/DefaultScreenPreviewView;->mInflater:Landroid/view/LayoutInflater;

    .line 47
    invoke-virtual {p0}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->getPaddingStart()I

    move-result p1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->doLauncherHavePaddingTopForStatusBarAndNotch()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/miui/home/launcher/common/Utilities;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p2

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->getPaddingEnd()I

    move-result p3

    invoke-virtual {p0}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->getPaddingBottom()I

    move-result v0

    .line 47
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->setPadding(IIII)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/DefaultScreenPreviewView;)Lcom/miui/home/launcher/Workspace;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/miui/home/launcher/DefaultScreenPreviewView;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/DefaultScreenPreviewView;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->updateBorderLine()V

    return-void
.end method

.method private handleContainer(ILcom/miui/home/launcher/anim/BackgroundType;)V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/miui/home/launcher/DefaultScreenPreviewView;->mPreviewContainer:Lcom/miui/home/launcher/view/FixedChildSizeGridView;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/view/FixedChildSizeGridView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/ThumbnailContainerBorder;

    .line 150
    invoke-virtual {p1}, Lcom/miui/home/launcher/ThumbnailContainerBorder;->getThumbnailContainer()Lcom/miui/home/launcher/ThumbnailContainer;

    move-result-object p1

    .line 151
    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/ThumbnailContainer;->setIsCurrentScreen(Lcom/miui/home/launcher/anim/BackgroundType;)V

    return-void
.end method

.method private insertConvertView(Lcom/miui/home/launcher/CellScreen;I)Landroid/view/View;
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 98
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v1

    .line 99
    invoke-virtual {v1}, Lcom/miui/home/launcher/CellLayout;->getScreenId()J

    move-result-wide v1

    .line 100
    iget-object v3, p0, Lcom/miui/home/launcher/DefaultScreenPreviewView;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0d004f

    invoke-virtual {v3, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 101
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 102
    iget-object v1, p0, Lcom/miui/home/launcher/DefaultScreenPreviewView;->THUMBNAIL_CLICK_HANDLER:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a0298

    .line 103
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ThumbnailContainer;

    .line 104
    iget v2, p0, Lcom/miui/home/launcher/DefaultScreenPreviewView;->mThumbnailWidth:I

    iget v3, p0, Lcom/miui/home/launcher/DefaultScreenPreviewView;->mThumbnailHeight:I

    invoke-virtual {v1, p1, v2, v3, v0}, Lcom/miui/home/launcher/ThumbnailContainer;->setCellLayoutThumbnail(Lcom/miui/home/launcher/CellScreen;IILandroid/view/View;)V

    const p1, 0x7f0a0136

    .line 105
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 106
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 107
    iget v3, p0, Lcom/miui/home/launcher/DefaultScreenPreviewView;->mThumbnailWidth:I

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 108
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    invoke-virtual {p0}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    add-int/lit8 v4, p2, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v3, v6

    const v5, 0x7f100140

    invoke-virtual {p1, v5, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/ThumbnailContainer;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 110
    invoke-virtual {p0}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {p1, v5, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 111
    iget-object p1, p0, Lcom/miui/home/launcher/DefaultScreenPreviewView;->mPreviewContainer:Lcom/miui/home/launcher/view/FixedChildSizeGridView;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/view/FixedChildSizeGridView;->addView(Landroid/view/View;)V

    if-nez p2, :cond_1

    .line 113
    new-instance p1, Lcom/miui/home/launcher/DefaultScreenPreviewView$1;

    invoke-direct {p1, p0, v0}, Lcom/miui/home/launcher/DefaultScreenPreviewView$1;-><init>(Lcom/miui/home/launcher/DefaultScreenPreviewView;Landroid/view/View;)V

    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->useViewToPost(Ljava/lang/Runnable;)V

    :cond_1
    return-object v0
.end method

.method private updateBorderLine()V
    .locals 4

    .line 124
    iget-object v0, p0, Lcom/miui/home/launcher/DefaultScreenPreviewView;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getFoldDefaultScreenId()I

    move-result v0

    .line 126
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 127
    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/miui/home/launcher/DefaultScreenPreviewView;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_0

    add-int/lit8 v1, v0, -0x1

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    add-int/lit8 v1, v0, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v0, -0x1

    goto :goto_0

    :cond_2
    move v1, v0

    .line 135
    :goto_0
    sget-object v2, Lcom/miui/home/launcher/anim/BackgroundType;->DEFAULT:Lcom/miui/home/launcher/anim/BackgroundType;

    invoke-direct {p0, v0, v2}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->handleContainer(ILcom/miui/home/launcher/anim/BackgroundType;)V

    .line 136
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 137
    sget-object v2, Lcom/miui/home/launcher/anim/BackgroundType;->FOLD_AFFILIATED:Lcom/miui/home/launcher/anim/BackgroundType;

    invoke-direct {p0, v1, v2}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->handleContainer(ILcom/miui/home/launcher/anim/BackgroundType;)V

    :cond_3
    const/4 v2, 0x0

    .line 140
    :goto_1
    iget-object v3, p0, Lcom/miui/home/launcher/DefaultScreenPreviewView;->mPreviewContainer:Lcom/miui/home/launcher/view/FixedChildSizeGridView;

    invoke-virtual {v3}, Lcom/miui/home/launcher/view/FixedChildSizeGridView;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_5

    if-eq v2, v0, :cond_4

    if-eq v2, v1, :cond_4

    .line 142
    sget-object v3, Lcom/miui/home/launcher/anim/BackgroundType;->NORMAL:Lcom/miui/home/launcher/anim/BackgroundType;

    invoke-direct {p0, v2, v3}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->handleContainer(ILcom/miui/home/launcher/anim/BackgroundType;)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 145
    :cond_5
    iget-object v0, p0, Lcom/miui/home/launcher/DefaultScreenPreviewView;->mPreviewContainer:Lcom/miui/home/launcher/view/FixedChildSizeGridView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/view/FixedChildSizeGridView;->invalidate()V

    return-void
.end method


# virtual methods
.method public isShowing()Z
    .locals 1

    .line 181
    iget-boolean v0, p0, Lcom/miui/home/launcher/DefaultScreenPreviewView;->mIsShowing:Z

    return v0
.end method

.method public loadPreviewContainer()V
    .locals 2

    const/4 v0, 0x0

    .line 88
    :goto_0
    iget-object v1, p0, Lcom/miui/home/launcher/DefaultScreenPreviewView;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/miui/home/launcher/DefaultScreenPreviewView;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/Workspace;->getCellScreen(I)Lcom/miui/home/launcher/CellScreen;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->insertConvertView(Lcom/miui/home/launcher/CellScreen;I)Landroid/view/View;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->updateBorderLine()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 53
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 54
    invoke-virtual {p0}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/DefaultScreenPreviewView;->mHomeIconLayoutHeight:I

    const v0, 0x7f0a01cd

    .line 55
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/view/FixedChildSizeGridView;

    iput-object v0, p0, Lcom/miui/home/launcher/DefaultScreenPreviewView;->mPreviewContainer:Lcom/miui/home/launcher/view/FixedChildSizeGridView;

    .line 56
    invoke-virtual {p0}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0703a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/DefaultScreenPreviewView;->mPreviewPaddingTop:I

    const v0, 0x7f0a00c9

    .line 57
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/view/LauncherActionBar;

    iput-object v0, p0, Lcom/miui/home/launcher/DefaultScreenPreviewView;->mDefaultScreenPreviewActionBar:Lcom/miui/home/launcher/view/LauncherActionBar;

    .line 58
    iget-object v0, p0, Lcom/miui/home/launcher/DefaultScreenPreviewView;->mDefaultScreenPreviewActionBar:Lcom/miui/home/launcher/view/LauncherActionBar;

    const v1, 0x7f100160

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/view/LauncherActionBar;->setTitle(I)V

    const v0, 0x7f0a00ca

    .line 59
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/miui/home/launcher/DefaultScreenPreviewView;->mScrollView:Landroid/widget/ScrollView;

    .line 60
    invoke-virtual {p0}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->setPreviewSize()V

    return-void
.end method

.method public onShow(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 80
    iget-object p1, p0, Lcom/miui/home/launcher/DefaultScreenPreviewView;->mScrollView:Landroid/widget/ScrollView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->setScrollY(I)V

    .line 81
    invoke-virtual {p0}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->loadPreviewContainer()V

    goto :goto_0

    .line 83
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/DefaultScreenPreviewView;->mPreviewContainer:Lcom/miui/home/launcher/view/FixedChildSizeGridView;

    invoke-virtual {p1}, Lcom/miui/home/launcher/view/FixedChildSizeGridView;->removeAllViews()V

    :goto_0
    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/miui/home/launcher/DefaultScreenPreviewView;->mDefaultScreenPreviewActionBar:Lcom/miui/home/launcher/view/LauncherActionBar;

    invoke-virtual {v0}, Lcom/miui/home/launcher/view/LauncherActionBar;->onWallpaperColorChanged()V

    .line 195
    iget-object v0, p0, Lcom/miui/home/launcher/DefaultScreenPreviewView;->mPreviewContainer:Lcom/miui/home/launcher/view/FixedChildSizeGridView;

    invoke-static {v0}, Lcom/miui/home/launcher/WallpaperUtils;->varyViewGroupByWallpaper(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public setIsShowing(Z)V
    .locals 0

    .line 185
    iput-boolean p1, p0, Lcom/miui/home/launcher/DefaultScreenPreviewView;->mIsShowing:Z

    return-void
.end method

.method public setPreviewSize()V
    .locals 7

    .line 64
    invoke-virtual {p0}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0703fd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 65
    invoke-virtual {p0}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0703fc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 66
    invoke-virtual {p0}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700a5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 67
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 68
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v3

    mul-int/lit8 v4, v1, 0x2

    sub-int/2addr v3, v4

    sub-int/2addr v3, v0

    mul-int/lit8 v4, v2, 0x2

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/miui/home/launcher/DefaultScreenPreviewView;->mThumbnailWidth:I

    goto :goto_0

    .line 70
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v3

    sub-int/2addr v3, v0

    mul-int/lit8 v4, v2, 0x2

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/miui/home/launcher/DefaultScreenPreviewView;->mThumbnailWidth:I

    .line 72
    :goto_0
    iget v3, p0, Lcom/miui/home/launcher/DefaultScreenPreviewView;->mThumbnailWidth:I

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0700a6

    invoke-static {v4, v5}, Landroidx/core/content/res/ResourcesCompat;->getFloat(Landroid/content/res/Resources;I)F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/miui/home/launcher/DefaultScreenPreviewView;->mThumbnailHeight:I

    .line 73
    iget-object v3, p0, Lcom/miui/home/launcher/DefaultScreenPreviewView;->mPreviewContainer:Lcom/miui/home/launcher/view/FixedChildSizeGridView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f0b0000

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/miui/home/launcher/view/FixedChildSizeGridView;->setColumnNum(I)V

    .line 74
    iget-object v3, p0, Lcom/miui/home/launcher/DefaultScreenPreviewView;->mPreviewContainer:Lcom/miui/home/launcher/view/FixedChildSizeGridView;

    iget v4, p0, Lcom/miui/home/launcher/DefaultScreenPreviewView;->mThumbnailWidth:I

    iget v5, p0, Lcom/miui/home/launcher/DefaultScreenPreviewView;->mThumbnailHeight:I

    iget v6, p0, Lcom/miui/home/launcher/DefaultScreenPreviewView;->mHomeIconLayoutHeight:I

    add-int/2addr v5, v6

    invoke-virtual {v3, v4, v5, v0, v1}, Lcom/miui/home/launcher/view/FixedChildSizeGridView;->setLayoutSize(IIII)V

    .line 75
    iget-object v0, p0, Lcom/miui/home/launcher/DefaultScreenPreviewView;->mScrollView:Landroid/widget/ScrollView;

    iget v1, p0, Lcom/miui/home/launcher/DefaultScreenPreviewView;->mPreviewPaddingTop:I

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/ScrollView;->setPadding(IIII)V

    return-void
.end method

.method public setResource(Lcom/miui/home/launcher/Workspace;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/miui/home/launcher/DefaultScreenPreviewView;->mWorkspace:Lcom/miui/home/launcher/Workspace;

    return-void
.end method
