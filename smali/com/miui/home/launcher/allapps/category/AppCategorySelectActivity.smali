.class public Lcom/miui/home/launcher/allapps/category/AppCategorySelectActivity;
.super Lmiuix/appcompat/app/AppCompatActivity;
.source "AppCategorySelectActivity.java"

# interfaces
.implements Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment$AppCategorySelectListener;


# instance fields
.field private mFragment:Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onDelete$0(Lcom/miui/home/launcher/allapps/category/AppCategorySelectActivity;ILjava/util/Collection;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 82
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object p3

    invoke-virtual {p3}, Lcom/miui/home/launcher/Application;->getModel()Lcom/miui/home/launcher/LauncherModel;

    move-result-object p3

    new-instance p4, Lcom/miui/home/launcher/model/CategoryRemoveTask;

    invoke-direct {p4, p1, p2}, Lcom/miui/home/launcher/model/CategoryRemoveTask;-><init>(ILjava/util/Collection;)V

    invoke-virtual {p3, p4}, Lcom/miui/home/launcher/LauncherModel;->enqueueModelUpdateTask(Lcom/miui/home/launcher/LauncherModel$ModelUpdateTask;)V

    const/4 p1, -0x1

    .line 83
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectActivity;->setResult(I)V

    .line 84
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectActivity;->onBack()V

    return-void
.end method

.method public static startActivityForResult(Landroidx/fragment/app/Fragment;II)V
    .locals 3

    .line 31
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 32
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/miui/home/launcher/allapps/category/AppCategorySelectActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "key_category"

    .line 33
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 34
    invoke-virtual {p0, v1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public onBack()V
    .locals 0

    .line 73
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectActivity;->finish()V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectActivity;->mFragment:Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 68
    :cond_0
    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 39
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v1, 0x7f1101cb

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 40
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d001c

    .line 41
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectActivity;->setContentView(I)V

    .line 42
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActionBar;->hide()V

    .line 46
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "key_category"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v1, :cond_1

    .line 51
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 53
    new-instance v1, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;

    invoke-direct {v1}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;-><init>()V

    .line 54
    invoke-virtual {v1, p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->setAppCategorySelectListener(Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment$AppCategorySelectListener;)V

    .line 55
    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->updateCategory(I)V

    const p1, 0x7f0a0048

    .line 56
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 57
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 58
    iput-object v1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectActivity;->mFragment:Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;

    const/4 p1, 0x0

    .line 60
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectActivity;->setResult(I)V

    return-void

    .line 48
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

    .line 78
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f110005

    invoke-direct {v0, p0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f10009e

    .line 79
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f10009d

    .line 80
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/allapps/category/-$$Lambda$AppCategorySelectActivity$B2g3zYpwq8o4qh3j54XozsR0y9s;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/home/launcher/allapps/category/-$$Lambda$AppCategorySelectActivity$B2g3zYpwq8o4qh3j54XozsR0y9s;-><init>(Lcom/miui/home/launcher/allapps/category/AppCategorySelectActivity;ILjava/util/Collection;)V

    const p1, 0x7f100127

    .line 81
    invoke-virtual {v0, p1, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 p2, 0x1040000

    const/4 v0, 0x0

    .line 86
    invoke-virtual {p1, p2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 87
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    .line 88
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->show()V

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

    .line 93
    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 94
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/home/launcher/Application;->getModel()Lcom/miui/home/launcher/LauncherModel;

    move-result-object p2

    new-instance v0, Lcom/miui/home/launcher/model/CategoryNameUpdateTask;

    invoke-direct {v0, p1, p3}, Lcom/miui/home/launcher/model/CategoryNameUpdateTask;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/miui/home/launcher/LauncherModel;->enqueueModelUpdateTask(Lcom/miui/home/launcher/LauncherModel$ModelUpdateTask;)V

    .line 96
    :cond_0
    invoke-interface {p4}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p5}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    .line 97
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/home/launcher/Application;->getModel()Lcom/miui/home/launcher/LauncherModel;

    move-result-object p2

    new-instance p3, Lcom/miui/home/launcher/model/CategoryAppsUpdateTask;

    invoke-direct {p3, p1, p4, p5}, Lcom/miui/home/launcher/model/CategoryAppsUpdateTask;-><init>(ILjava/util/Collection;Ljava/util/Collection;)V

    invoke-virtual {p2, p3}, Lcom/miui/home/launcher/LauncherModel;->enqueueModelUpdateTask(Lcom/miui/home/launcher/LauncherModel$ModelUpdateTask;)V

    :cond_2
    const/4 p1, -0x1

    .line 99
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectActivity;->setResult(I)V

    .line 100
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectActivity;->onBack()V

    return-void
.end method
