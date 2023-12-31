.class public Lcom/miui/home/launcher/allapps/category/fragment/WorkCategoryAppListFragment;
.super Lcom/miui/home/launcher/allapps/category/fragment/CategoryAppListFragment;
.source "WorkCategoryAppListFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/category/fragment/CategoryAppListFragment;-><init>()V

    return-void
.end method

.method private shouldShowWorkFooter()Z
    .locals 0

    .line 39
    sget-boolean p0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_P:Z

    return p0
.end method


# virtual methods
.method protected getItemInfoMatcher(I)Lcom/miui/home/launcher/util/ItemInfoMatcher;
    .locals 0

    .line 19
    sget-object p0, Lcom/miui/home/launcher/allapps/AllAppsStore;->WORK_MATHER:Lcom/miui/home/launcher/util/ItemInfoMatcher;

    return-object p0
.end method

.method protected getLayoutResourceId()I
    .locals 0

    const p0, 0x7f0d0083

    return p0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 29
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/allapps/category/fragment/CategoryAppListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 30
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/category/fragment/WorkCategoryAppListFragment;->mSpringContainer:Lcom/miui/home/launcher/view/SpringRelativeLayout;

    const v0, 0x7f0a03f8

    invoke-virtual {p2, v0}, Lcom/miui/home/launcher/view/SpringRelativeLayout;->addSpringView(I)V

    const p2, 0x7f0a03f9

    .line 31
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    .line 32
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/category/fragment/WorkCategoryAppListFragment;->shouldShowWorkFooter()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 33
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/allapps/WorkFooterContainer;

    .line 34
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/WorkFooterContainer;->refreshViewStatus()V

    :cond_0
    return-void
.end method
