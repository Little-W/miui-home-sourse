.class public Landroidx/legacy/app/FragmentTabHost;
.super Landroid/widget/TabHost;

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/legacy/app/FragmentTabHost$SavedState;,
        Landroidx/legacy/app/FragmentTabHost$TabInfo;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mAttached:Z

.field private mContainerId:I

.field private mContext:Landroid/content/Context;

.field private mFragmentManager:Landroid/app/FragmentManager;

.field private mLastTab:Landroidx/legacy/app/FragmentTabHost$TabInfo;

.field private mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/legacy/app/FragmentTabHost$TabInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private doTabChanged(Ljava/lang/String;Landroid/app/FragmentTransaction;)Landroid/app/FragmentTransaction;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroidx/legacy/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroidx/legacy/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/legacy/app/FragmentTabHost$TabInfo;

    iget-object v3, v2, Landroidx/legacy/app/FragmentTabHost$TabInfo;->tag:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_7

    iget-object p1, p0, Landroidx/legacy/app/FragmentTabHost;->mLastTab:Landroidx/legacy/app/FragmentTabHost$TabInfo;

    if-eq p1, v0, :cond_6

    if-nez p2, :cond_2

    iget-object p1, p0, Landroidx/legacy/app/FragmentTabHost;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    move-object p2, p1

    :cond_2
    iget-object p1, p0, Landroidx/legacy/app/FragmentTabHost;->mLastTab:Landroidx/legacy/app/FragmentTabHost$TabInfo;

    if-eqz p1, :cond_3

    iget-object p1, p1, Landroidx/legacy/app/FragmentTabHost$TabInfo;->fragment:Landroid/app/Fragment;

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroidx/legacy/app/FragmentTabHost;->mLastTab:Landroidx/legacy/app/FragmentTabHost$TabInfo;

    iget-object p1, p1, Landroidx/legacy/app/FragmentTabHost$TabInfo;->fragment:Landroid/app/Fragment;

    invoke-virtual {p2, p1}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :cond_3
    if-eqz v0, :cond_5

    iget-object p1, v0, Landroidx/legacy/app/FragmentTabHost$TabInfo;->fragment:Landroid/app/Fragment;

    if-nez p1, :cond_4

    iget-object p1, p0, Landroidx/legacy/app/FragmentTabHost;->mContext:Landroid/content/Context;

    iget-object v1, v0, Landroidx/legacy/app/FragmentTabHost$TabInfo;->clss:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Landroidx/legacy/app/FragmentTabHost$TabInfo;->args:Landroid/os/Bundle;

    invoke-static {p1, v1, v2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object p1

    iput-object p1, v0, Landroidx/legacy/app/FragmentTabHost$TabInfo;->fragment:Landroid/app/Fragment;

    iget p1, p0, Landroidx/legacy/app/FragmentTabHost;->mContainerId:I

    iget-object v1, v0, Landroidx/legacy/app/FragmentTabHost$TabInfo;->fragment:Landroid/app/Fragment;

    iget-object v2, v0, Landroidx/legacy/app/FragmentTabHost$TabInfo;->tag:Ljava/lang/String;

    invoke-virtual {p2, p1, v1, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto :goto_1

    :cond_4
    iget-object p1, v0, Landroidx/legacy/app/FragmentTabHost$TabInfo;->fragment:Landroid/app/Fragment;

    invoke-virtual {p2, p1}, Landroid/app/FragmentTransaction;->attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :cond_5
    :goto_1
    iput-object v0, p0, Landroidx/legacy/app/FragmentTabHost;->mLastTab:Landroidx/legacy/app/FragmentTabHost$TabInfo;

    :cond_6
    return-object p2

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No tab known for tag "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0}, Landroid/widget/TabHost;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroidx/legacy/app/FragmentTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Landroidx/legacy/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Landroidx/legacy/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/legacy/app/FragmentTabHost$TabInfo;

    iget-object v4, p0, Landroidx/legacy/app/FragmentTabHost;->mFragmentManager:Landroid/app/FragmentManager;

    iget-object v5, v3, Landroidx/legacy/app/FragmentTabHost$TabInfo;->tag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v4

    iput-object v4, v3, Landroidx/legacy/app/FragmentTabHost$TabInfo;->fragment:Landroid/app/Fragment;

    iget-object v4, v3, Landroidx/legacy/app/FragmentTabHost$TabInfo;->fragment:Landroid/app/Fragment;

    if-eqz v4, :cond_2

    iget-object v4, v3, Landroidx/legacy/app/FragmentTabHost$TabInfo;->fragment:Landroid/app/Fragment;

    invoke-virtual {v4}, Landroid/app/Fragment;->isDetached()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, v3, Landroidx/legacy/app/FragmentTabHost$TabInfo;->tag:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iput-object v3, p0, Landroidx/legacy/app/FragmentTabHost;->mLastTab:Landroidx/legacy/app/FragmentTabHost$TabInfo;

    goto :goto_1

    :cond_0
    if-nez v1, :cond_1

    iget-object v1, p0, Landroidx/legacy/app/FragmentTabHost;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    :cond_1
    iget-object v3, v3, Landroidx/legacy/app/FragmentTabHost$TabInfo;->fragment:Landroid/app/Fragment;

    invoke-virtual {v1, v3}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroidx/legacy/app/FragmentTabHost;->mAttached:Z

    invoke-direct {p0, v0, v1}, Landroidx/legacy/app/FragmentTabHost;->doTabChanged(Ljava/lang/String;Landroid/app/FragmentTransaction;)Landroid/app/FragmentTransaction;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    iget-object p0, p0, Landroidx/legacy/app/FragmentTabHost;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {p0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    :cond_4
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0}, Landroid/widget/TabHost;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/legacy/app/FragmentTabHost;->mAttached:Z

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    instance-of v0, p1, Landroidx/legacy/app/FragmentTabHost$SavedState;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/TabHost;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Landroidx/legacy/app/FragmentTabHost$SavedState;

    invoke-virtual {p1}, Landroidx/legacy/app/FragmentTabHost$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/TabHost;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object p1, p1, Landroidx/legacy/app/FragmentTabHost$SavedState;->curTab:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroidx/legacy/app/FragmentTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0}, Landroid/widget/TabHost;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Landroidx/legacy/app/FragmentTabHost$SavedState;

    invoke-direct {v1, v0}, Landroidx/legacy/app/FragmentTabHost$SavedState;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Landroidx/legacy/app/FragmentTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Landroidx/legacy/app/FragmentTabHost$SavedState;->curTab:Ljava/lang/String;

    return-object v1
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Landroidx/legacy/app/FragmentTabHost;->mAttached:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/legacy/app/FragmentTabHost;->doTabChanged(Ljava/lang/String;Landroid/app/FragmentTransaction;)Landroid/app/FragmentTransaction;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    :cond_0
    iget-object p0, p0, Landroidx/legacy/app/FragmentTabHost;->mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Landroid/widget/TabHost$OnTabChangeListener;->onTabChanged(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Landroidx/legacy/app/FragmentTabHost;->mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

    return-void
.end method

.method public setup()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Must call setup() that takes a Context and FragmentManager"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
