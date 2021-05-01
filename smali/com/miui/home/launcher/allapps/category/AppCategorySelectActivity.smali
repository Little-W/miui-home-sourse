.class public Lcom/miui/home/launcher/allapps/category/AppCategorySelectActivity;
.super Lmiui/app/Activity;
.source "AppCategorySelectActivity.java"

# interfaces
.implements Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment$AppCategorySelectListener;


# instance fields
.field private mFragment:Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onDelete$349(Lcom/miui/home/launcher/allapps/category/AppCategorySelectActivity;ILjava/util/Collection;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 81
    invoke-static {}, Lcom/miui/home/launcher/LauncherApplication;->getModel()Lcom/miui/home/launcher/LauncherModel;

    move-result-object p3

    new-instance p4, Lcom/miui/home/launcher/model/CategoryRemoveTask;

    invoke-direct {p4, p1, p2}, Lcom/miui/home/launcher/model/CategoryRemoveTask;-><init>(ILjava/util/Collection;)V

    invoke-virtual {p3, p4}, Lcom/miui/home/launcher/LauncherModel;->enqueueModelUpdateTask(Lcom/miui/home/launcher/LauncherModel$ModelUpdateTask;)V

    const/4 p1, -0x1

    .line 82
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectActivity;->setResult(I)V

    .line 83
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectActivity;->onBack()V

    return-void
.end method

.method public static startActivityForResult(Landroid/app/Fragment;II)V
    .locals 3

    .line 29
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 30
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/miui/home/launcher/allapps/category/AppCategorySelectActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "key_category"

    .line 31
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 32
    invoke-virtual {p0, v1, p2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public onBack()V
    .locals 0

    .line 72
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectActivity;->finish()V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectActivity;->mFragment:Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 67
    :cond_0
    invoke-super {p0}, Lmiui/app/Activity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 37
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->setDayNightThemeIfNeed(Landroid/app/Activity;)V

    .line 38
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v1, 0x7f11000c

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 39
    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d001c

    .line 40
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectActivity;->setContentView(I)V

    .line 41
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Lmiui/app/ActionBar;->hide()V

    .line 45
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "key_category"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v1, :cond_1

    .line 50
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 52
    new-instance v1, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;

    invoke-direct {v1}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;-><init>()V

    .line 53
    invoke-virtual {v1, p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->setAppCategorySelectListener(Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment$AppCategorySelectListener;)V

    .line 54
    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->updateCategory(I)V

    const p1, 0x7f0a003e

    .line 55
    invoke-virtual {v0, p1, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 56
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 57
    iput-object v1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectActivity;->mFragment:Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;

    const/4 p1, 0x0

    .line 59
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectActivity;->setResult(I)V

    return-void

    .line 47
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "must set category info"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onDelete(ILjava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    .line 77
    new-instance v0, Lmiui/app/AlertDialog$Builder;

    const/16 v1, 0x8

    invoke-direct {v0, p0, v1}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f10009b

    .line 78
    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f10009a

    .line 79
    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/allapps/category/-$$Lambda$AppCategorySelectActivity$rHqHM9XZ0wA4KGbUE2xUfevcIyA;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/home/launcher/allapps/category/-$$Lambda$AppCategorySelectActivity$rHqHM9XZ0wA4KGbUE2xUfevcIyA;-><init>(Lcom/miui/home/launcher/allapps/category/AppCategorySelectActivity;ILjava/util/Collection;)V

    const p1, 0x7f1000da

    .line 80
    invoke-virtual {v0, p1, v1}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 p2, 0x1040000

    const/4 v0, 0x0

    .line 85
    invoke-virtual {p1, p2, v0}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object p1

    .line 86
    invoke-virtual {p1}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object p1

    .line 87
    invoke-virtual {p1}, Lmiui/app/AlertDialog;->show()V

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

    .line 92
    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 93
    invoke-static {}, Lcom/miui/home/launcher/LauncherApplication;->getModel()Lcom/miui/home/launcher/LauncherModel;

    move-result-object p2

    new-instance v0, Lcom/miui/home/launcher/model/CategoryNameUpdateTask;

    invoke-direct {v0, p1, p3}, Lcom/miui/home/launcher/model/CategoryNameUpdateTask;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/miui/home/launcher/LauncherModel;->enqueueModelUpdateTask(Lcom/miui/home/launcher/LauncherModel$ModelUpdateTask;)V

    .line 95
    :cond_0
    invoke-interface {p4}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p5}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    .line 96
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/LauncherApplication;->getModel()Lcom/miui/home/launcher/LauncherModel;

    move-result-object p2

    new-instance p3, Lcom/miui/home/launcher/model/CategoryAppsUpdateTask;

    invoke-direct {p3, p1, p4, p5}, Lcom/miui/home/launcher/model/CategoryAppsUpdateTask;-><init>(ILjava/util/Collection;Ljava/util/Collection;)V

    invoke-virtual {p2, p3}, Lcom/miui/home/launcher/LauncherModel;->enqueueModelUpdateTask(Lcom/miui/home/launcher/LauncherModel$ModelUpdateTask;)V

    :cond_2
    const/4 p1, -0x1

    .line 98
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectActivity;->setResult(I)V

    .line 99
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectActivity;->onBack()V

    return-void
.end method
