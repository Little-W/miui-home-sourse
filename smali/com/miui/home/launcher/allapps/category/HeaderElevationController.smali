.class public Lcom/miui/home/launcher/allapps/category/HeaderElevationController;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "HeaderElevationController.java"


# instance fields
.field private mCurrentY:I

.field private mHeader:Landroid/view/View;

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private final mMaxElevation:F

.field private final mOffset:I

.field private final mScrollToElevation:F


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 29
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/miui/home/launcher/allapps/category/HeaderElevationController;->mCurrentY:I

    .line 30
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070057

    .line 31
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/allapps/category/HeaderElevationController;->mMaxElevation:F

    .line 32
    iget v1, p0, Lcom/miui/home/launcher/allapps/category/HeaderElevationController;->mMaxElevation:F

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/allapps/category/HeaderElevationController;->mOffset:I

    const v1, 0x7f070058

    .line 33
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/allapps/category/HeaderElevationController;->mScrollToElevation:F

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/allapps/category/HeaderElevationController;)I
    .locals 0

    .line 20
    iget p0, p0, Lcom/miui/home/launcher/allapps/category/HeaderElevationController;->mOffset:I

    return p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/allapps/category/HeaderElevationController;)Landroid/view/View;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/HeaderElevationController;->mHeader:Landroid/view/View;

    return-object p0
.end method

.method private onScroll(I)V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/HeaderElevationController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/HeaderElevationController;->mHeader:Landroid/view/View;

    if-nez v1, :cond_0

    goto :goto_1

    .line 51
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getAppsView()Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->getCategoryCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 52
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/HeaderElevationController;->mHeader:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setElevation(F)V

    goto :goto_0

    :cond_1
    int-to-float p1, p1

    .line 54
    iget v0, p0, Lcom/miui/home/launcher/allapps/category/HeaderElevationController;->mScrollToElevation:F

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iget v0, p0, Lcom/miui/home/launcher/allapps/category/HeaderElevationController;->mScrollToElevation:F

    div-float/2addr p1, v0

    .line 55
    iget v0, p0, Lcom/miui/home/launcher/allapps/category/HeaderElevationController;->mMaxElevation:F

    mul-float/2addr v0, p1

    .line 56
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/HeaderElevationController;->mHeader:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getElevation()F

    move-result p1

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-eqz p1, :cond_2

    .line 57
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/HeaderElevationController;->mHeader:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setElevation(F)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public final onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 43
    check-cast p1, Lcom/miui/home/launcher/BaseRecyclerView;

    invoke-virtual {p1}, Lcom/miui/home/launcher/BaseRecyclerView;->getCurrentScrollY()I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/allapps/category/HeaderElevationController;->mCurrentY:I

    .line 44
    iget p1, p0, Lcom/miui/home/launcher/allapps/category/HeaderElevationController;->mCurrentY:I

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/allapps/category/HeaderElevationController;->onScroll(I)V

    return-void
.end method

.method public setupView(Lcom/miui/home/launcher/Launcher;Landroid/view/View;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/HeaderElevationController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 64
    iput-object p2, p0, Lcom/miui/home/launcher/allapps/category/HeaderElevationController;->mHeader:Landroid/view/View;

    .line 65
    new-instance p1, Lcom/miui/home/launcher/allapps/category/HeaderElevationController$1;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/allapps/category/HeaderElevationController$1;-><init>(Lcom/miui/home/launcher/allapps/category/HeaderElevationController;)V

    .line 71
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/category/HeaderElevationController;->mHeader:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void
.end method
