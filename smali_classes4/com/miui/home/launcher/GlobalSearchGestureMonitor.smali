.class public Lcom/miui/home/launcher/GlobalSearchGestureMonitor;
.super Ljava/lang/Object;
.source "GlobalSearchGestureMonitor.java"


# instance fields
.field protected final DEFAULT_VERTICAL_GESTURE_CONFIRM_DIST:I

.field private mVerticalFlingInvalidateBottomAreaHeight:F


# direct methods
.method public constructor <init>(F)V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 13
    iput v0, p0, Lcom/miui/home/launcher/GlobalSearchGestureMonitor;->mVerticalFlingInvalidateBottomAreaHeight:F

    .line 17
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42480000    # 50.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/GlobalSearchGestureMonitor;->DEFAULT_VERTICAL_GESTURE_CONFIRM_DIST:I

    .line 20
    iput p1, p0, Lcom/miui/home/launcher/GlobalSearchGestureMonitor;->mVerticalFlingInvalidateBottomAreaHeight:F

    return-void
.end method


# virtual methods
.method public onVerticalFling(Lcom/miui/home/launcher/Launcher;IFFI)V
    .locals 1

    .line 24
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    const/16 v0, 0x640

    if-le p2, v0, :cond_0

    int-to-float p2, p5

    iget p5, p0, Lcom/miui/home/launcher/GlobalSearchGestureMonitor;->mVerticalFlingInvalidateBottomAreaHeight:F

    sub-float/2addr p2, p5

    cmpg-float p2, p3, p2

    if-gtz p2, :cond_0

    sub-float/2addr p3, p4

    iget p0, p0, Lcom/miui/home/launcher/GlobalSearchGestureMonitor;->DEFAULT_VERTICAL_GESTURE_CONFIRM_DIST:I

    int-to-float p0, p0

    cmpl-float p0, p3, p0

    if-lez p0, :cond_0

    .line 27
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getSearchEdgeLayout()Lcom/miui/home/launcher/search/SearchEdgeLayout;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->isBottomSearchEnable()Z

    move-result p0

    if-nez p0, :cond_0

    .line 28
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getSearchEdgeLayout()Lcom/miui/home/launcher/search/SearchEdgeLayout;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/search/SearchEdgeLayout;->isBottomGlobalSearchEnable()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 29
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isDrawerMode()Z

    move-result p0

    if-nez p0, :cond_0

    .line 30
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result p0

    if-nez p0, :cond_0

    .line 31
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->isHalfSplitMode()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    .line 32
    invoke-static {p0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackVerticalGesture(Z)V

    .line 33
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getSearchBarContainer()Lcom/miui/home/launcher/SearchBarContainer;

    move-result-object p0

    const-string p1, "home_up"

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/SearchBarContainer;->openSearch(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
