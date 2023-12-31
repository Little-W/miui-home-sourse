.class public Lcom/miui/home/launcher/allapps/category/AppCategoryAddActivity;
.super Lmiuix/appcompat/app/AppCompatActivity;
.source "AppCategoryAddActivity.java"

# interfaces
.implements Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment$AppCategorySelectListener;


# instance fields
.field private mFragment:Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method public static startActivityForResult(Landroidx/fragment/app/Fragment;I)V
    .locals 3

    .line 28
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 29
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/miui/home/launcher/allapps/category/AppCategoryAddActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 30
    invoke-virtual {p0, v1, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public onBack()V
    .locals 0

    .line 64
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AppCategoryAddActivity;->finish()V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 55
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->startSettingActivityIfNeed(Landroid/app/Activity;)V

    .line 56
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategoryAddActivity;->mFragment:Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 59
    :cond_0
    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 35
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AppCategoryAddActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v1, 0x7f12014c

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 36
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d001c

    .line 37
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/category/AppCategoryAddActivity;->setContentView(I)V

    .line 38
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AppCategoryAddActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AppCategoryAddActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActionBar;->hide()V

    .line 42
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AppCategoryAddActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 43
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 44
    new-instance v0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;

    invoke-direct {v0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;-><init>()V

    .line 45
    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->setAppCategorySelectListener(Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment$AppCategorySelectListener;)V

    const v1, 0x7f0a0056

    .line 46
    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 47
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 48
    iput-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategoryAddActivity;->mFragment:Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;

    const/4 p1, 0x0

    .line 50
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/category/AppCategoryAddActivity;->setResult(I)V

    return-void
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

    .line 69
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AppCategoryAddActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f1100dd

    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/allapps/category/AppCategoryAddActivity;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x1

    new-array v0, p2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 0

    .line 89
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onMultiWindowModeChanged(Z)V

    .line 90
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->checkMultiWindowState(Landroid/app/Activity;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 81
    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onResume()V

    .line 82
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->loadAllAppsCellCountX(Landroid/content/Context;)V

    .line 83
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategoryAddActivity;->mFragment:Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->refreshSpanCount()V

    .line 84
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->checkMultiWindowState(Landroid/app/Activity;)V

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

    .line 74
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Application;->getModel()Lcom/miui/home/launcher/LauncherModel;

    move-result-object p1

    new-instance p2, Lcom/miui/home/launcher/model/CategoryAddTask;

    invoke-direct {p2, p3, p4}, Lcom/miui/home/launcher/model/CategoryAddTask;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/LauncherModel;->enqueueModelUpdateTask(Lcom/miui/home/launcher/LauncherModel$ModelUpdateTask;)V

    const/4 p1, -0x1

    .line 75
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/category/AppCategoryAddActivity;->setResult(I)V

    .line 76
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AppCategoryAddActivity;->onBack()V

    return-void
.end method
