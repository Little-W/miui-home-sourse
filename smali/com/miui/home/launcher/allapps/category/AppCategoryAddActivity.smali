.class public Lcom/miui/home/launcher/allapps/category/AppCategoryAddActivity;
.super Lmiui/app/Activity;
.source "AppCategoryAddActivity.java"

# interfaces
.implements Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment$AppCategorySelectListener;


# instance fields
.field private mFragment:Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    return-void
.end method

.method public static startActivityForResult(Landroid/app/Fragment;I)V
    .locals 3

    .line 25
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 26
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/miui/home/launcher/allapps/category/AppCategoryAddActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 27
    invoke-virtual {p0, v1, p1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public onBack()V
    .locals 0

    .line 61
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AppCategoryAddActivity;->finish()V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategoryAddActivity;->mFragment:Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 56
    :cond_0
    invoke-super {p0}, Lmiui/app/Activity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 32
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->setDayNightThemeIfNeed(Landroid/app/Activity;)V

    .line 33
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AppCategoryAddActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v1, 0x7f110009

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 34
    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d001c

    .line 35
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/category/AppCategoryAddActivity;->setContentView(I)V

    .line 36
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AppCategoryAddActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AppCategoryAddActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Lmiui/app/ActionBar;->hide()V

    .line 40
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AppCategoryAddActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    .line 41
    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    .line 42
    new-instance v0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;

    invoke-direct {v0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;-><init>()V

    .line 43
    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->setAppCategorySelectListener(Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment$AppCategorySelectListener;)V

    const v1, 0x7f0a003e

    .line 44
    invoke-virtual {p1, v1, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 45
    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 46
    iput-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategoryAddActivity;->mFragment:Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;

    const/4 p1, 0x0

    .line 48
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/category/AppCategoryAddActivity;->setResult(I)V

    return-void
.end method

.method public onDelete(ILjava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    .line 66
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AppCategoryAddActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f1000a9

    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/allapps/category/AppCategoryAddActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onSave(ILjava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 0
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

    .line 71
    invoke-static {}, Lcom/miui/home/launcher/LauncherApplication;->getModel()Lcom/miui/home/launcher/LauncherModel;

    move-result-object p1

    new-instance p2, Lcom/miui/home/launcher/model/CategoryAddTask;

    invoke-direct {p2, p3, p4}, Lcom/miui/home/launcher/model/CategoryAddTask;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/LauncherModel;->enqueueModelUpdateTask(Lcom/miui/home/launcher/LauncherModel$ModelUpdateTask;)V

    const/4 p1, -0x1

    .line 72
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/category/AppCategoryAddActivity;->setResult(I)V

    .line 73
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AppCategoryAddActivity;->onBack()V

    return-void
.end method
