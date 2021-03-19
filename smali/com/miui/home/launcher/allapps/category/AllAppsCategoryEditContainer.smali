.class public Lcom/miui/home/launcher/allapps/category/AllAppsCategoryEditContainer;
.super Landroid/widget/FrameLayout;
.source "AllAppsCategoryEditContainer.java"

# interfaces
.implements Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment$AppCategorySelectListener;


# instance fields
.field private mFragment:Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;

.field private mLauncher:Lcom/miui/home/launcher/Launcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/view/View;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryEditContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-void
.end method

.method public static synthetic lambda$onDelete$1(Lcom/miui/home/launcher/allapps/category/AllAppsCategoryEditContainer;ILjava/util/Collection;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 60
    invoke-static {}, Lcom/miui/home/launcher/LauncherApplication;->getModel()Lcom/miui/home/launcher/LauncherModel;

    move-result-object p3

    new-instance p4, Lcom/miui/home/launcher/model/CategoryRemoveTask;

    invoke-direct {p4, p1, p2}, Lcom/miui/home/launcher/model/CategoryRemoveTask;-><init>(ILjava/util/Collection;)V

    invoke-virtual {p3, p4}, Lcom/miui/home/launcher/LauncherModel;->enqueueModelUpdateTask(Lcom/miui/home/launcher/LauncherModel$ModelUpdateTask;)V

    .line 61
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryEditContainer;->onBack()V

    return-void
.end method

.method public static synthetic lambda$onFinishInflate$0(Lcom/miui/home/launcher/allapps/category/AllAppsCategoryEditContainer;Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryEditContainer;->getActiveRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryEditContainer;->getActiveRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->requestFocus()Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getActiveRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryEditContainer;->mFragment:Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->getActiveRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentCategoryId()I
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryEditContainer;->mFragment:Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->getCategoryId()I

    move-result v0

    return v0
.end method

.method public onBack()V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryEditContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getAppsView()Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->getCategoryContainer()Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->switchToList()V

    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryEditContainer;->mFragment:Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public onDelete(ILjava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    .line 56
    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryEditContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f10009b

    .line 57
    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f10009a

    .line 58
    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/allapps/category/-$$Lambda$AllAppsCategoryEditContainer$bYCxfDHCCtKtPQ0FOyo_5DAveg0;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/home/launcher/allapps/category/-$$Lambda$AllAppsCategoryEditContainer$bYCxfDHCCtKtPQ0FOyo_5DAveg0;-><init>(Lcom/miui/home/launcher/allapps/category/AllAppsCategoryEditContainer;ILjava/util/Collection;)V

    const p1, 0x7f1000d9

    .line 59
    invoke-virtual {v0, p1, v1}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 p2, 0x1040000

    const/4 v0, 0x0

    .line 63
    invoke-virtual {p1, p2, v0}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object p1

    .line 64
    invoke-virtual {p1}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object p1

    .line 65
    invoke-virtual {p1}, Lmiui/app/AlertDialog;->show()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 35
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 36
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryEditContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0a004e

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryEditContainer;->mFragment:Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;

    .line 37
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryEditContainer;->mFragment:Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->setAppCategorySelectListener(Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment$AppCategorySelectListener;)V

    .line 38
    new-instance v0, Lcom/miui/home/launcher/allapps/category/-$$Lambda$AllAppsCategoryEditContainer$wizbWzB1tgnK42u-fWteLxgoa4U;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/allapps/category/-$$Lambda$AllAppsCategoryEditContainer$wizbWzB1tgnK42u-fWteLxgoa4U;-><init>(Lcom/miui/home/launcher/allapps/category/AllAppsCategoryEditContainer;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryEditContainer;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method public onSave(ILjava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;",
            "Ljava/util/Collection<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    .line 70
    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 71
    invoke-static {}, Lcom/miui/home/launcher/LauncherApplication;->getModel()Lcom/miui/home/launcher/LauncherModel;

    move-result-object p2

    new-instance v0, Lcom/miui/home/launcher/model/CategoryNameUpdateTask;

    invoke-direct {v0, p1, p3}, Lcom/miui/home/launcher/model/CategoryNameUpdateTask;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/miui/home/launcher/LauncherModel;->enqueueModelUpdateTask(Lcom/miui/home/launcher/LauncherModel$ModelUpdateTask;)V

    .line 73
    :cond_0
    invoke-interface {p4}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p5}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    .line 74
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/LauncherApplication;->getModel()Lcom/miui/home/launcher/LauncherModel;

    move-result-object p2

    new-instance p3, Lcom/miui/home/launcher/model/CategoryAppsUpdateTask;

    invoke-direct {p3, p1, p4, p5}, Lcom/miui/home/launcher/model/CategoryAppsUpdateTask;-><init>(ILjava/util/Collection;Ljava/util/Collection;)V

    invoke-virtual {p2, p3}, Lcom/miui/home/launcher/LauncherModel;->enqueueModelUpdateTask(Lcom/miui/home/launcher/LauncherModel$ModelUpdateTask;)V

    .line 76
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryEditContainer;->onBack()V

    return-void
.end method

.method public updateCategory(I)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryEditContainer;->mFragment:Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->updateCategory(I)V

    return-void
.end method
