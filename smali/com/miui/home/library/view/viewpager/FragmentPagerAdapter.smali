.class public abstract Lcom/miui/home/library/view/viewpager/FragmentPagerAdapter;
.super Lcom/miui/home/library/view/viewpager/PagerAdapter;
.source "FragmentPagerAdapter.java"


# instance fields
.field private mCurTransaction:Landroid/app/FragmentTransaction;

.field private mCurrentPrimaryItem:Landroid/app/Fragment;

.field private final mFragmentManager:Landroid/app/FragmentManager;


# direct methods
.method public constructor <init>(Landroid/app/FragmentManager;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Lcom/miui/home/library/view/viewpager/PagerAdapter;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/miui/home/library/view/viewpager/FragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 54
    iput-object v0, p0, Lcom/miui/home/library/view/viewpager/FragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    .line 57
    iput-object p1, p0, Lcom/miui/home/library/view/viewpager/FragmentPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 104
    iget-object p1, p0, Lcom/miui/home/library/view/viewpager/FragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-nez p1, :cond_0

    .line 105
    iget-object p1, p0, Lcom/miui/home/library/view/viewpager/FragmentPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/library/view/viewpager/FragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 109
    :cond_0
    iget-object p1, p0, Lcom/miui/home/library/view/viewpager/FragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    if-ne p1, p3, :cond_1

    const/4 p1, 0x0

    .line 110
    iput-object p1, p0, Lcom/miui/home/library/view/viewpager/FragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    .line 112
    :cond_1
    iget-object p1, p0, Lcom/miui/home/library/view/viewpager/FragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    check-cast p3, Landroid/app/Fragment;

    invoke-virtual {p1, p3}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    return-void
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 0

    .line 134
    iget-object p1, p0, Lcom/miui/home/library/view/viewpager/FragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-eqz p1, :cond_0

    .line 135
    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    const/4 p1, 0x0

    .line 136
    iput-object p1, p0, Lcom/miui/home/library/view/viewpager/FragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    :cond_0
    return-void
.end method

.method public abstract getItem(I)Landroid/app/Fragment;
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 4

    .line 76
    iget-object v0, p0, Lcom/miui/home/library/view/viewpager/FragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/miui/home/library/view/viewpager/FragmentPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/library/view/viewpager/FragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 80
    :cond_0
    invoke-virtual {p0, p2}, Lcom/miui/home/library/view/viewpager/FragmentPagerAdapter;->getItemId(I)J

    move-result-wide v0

    .line 83
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    invoke-virtual {p0, v2, v0, v1}, Lcom/miui/home/library/view/viewpager/FragmentPagerAdapter;->makeFragmentName(IJ)Ljava/lang/String;

    move-result-object v2

    .line 84
    iget-object v3, p0, Lcom/miui/home/library/view/viewpager/FragmentPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v3, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 87
    iget-object p1, p0, Lcom/miui/home/library/view/viewpager/FragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {p1, v2}, Landroid/app/FragmentTransaction;->attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_0

    .line 89
    :cond_1
    invoke-virtual {p0, p2}, Lcom/miui/home/library/view/viewpager/FragmentPagerAdapter;->getItem(I)Landroid/app/Fragment;

    move-result-object v2

    .line 91
    iget-object p2, p0, Lcom/miui/home/library/view/viewpager/FragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v3

    .line 92
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/home/library/view/viewpager/FragmentPagerAdapter;->makeFragmentName(IJ)Ljava/lang/String;

    move-result-object p1

    .line 91
    invoke-virtual {p2, v3, v2, p1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 94
    :goto_0
    iget-object p1, p0, Lcom/miui/home/library/view/viewpager/FragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    if-eq v2, p1, :cond_2

    const/4 p1, 0x0

    .line 95
    invoke-virtual {v2, p1}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    .line 96
    invoke-virtual {v2, p1}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    :cond_2
    return-object v2
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    .line 142
    check-cast p2, Landroid/app/Fragment;

    invoke-virtual {p2}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected makeFragmentName(IJ)Ljava/lang/String;
    .locals 2

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android:switcher:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0

    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 118
    check-cast p3, Landroid/app/Fragment;

    .line 119
    iget-object p1, p0, Lcom/miui/home/library/view/viewpager/FragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    if-eq p3, p1, :cond_2

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 121
    invoke-virtual {p1, p2}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    .line 122
    iget-object p1, p0, Lcom/miui/home/library/view/viewpager/FragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    invoke-virtual {p1, p2}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    :cond_0
    if-eqz p3, :cond_1

    const/4 p1, 0x1

    .line 125
    invoke-virtual {p3, p1}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    .line 126
    invoke-virtual {p3, p1}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    .line 128
    :cond_1
    iput-object p3, p0, Lcom/miui/home/library/view/viewpager/FragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    :cond_2
    return-void
.end method

.method public startUpdate(Landroid/view/ViewGroup;)V
    .locals 2

    .line 67
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    return-void

    .line 68
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ViewPager with adapter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " requires a view id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
