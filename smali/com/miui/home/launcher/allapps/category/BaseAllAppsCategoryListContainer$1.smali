.class Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer$1;
.super Ljava/lang/Object;
.source "BaseAllAppsCategoryListContainer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer$1;->this$0:Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 104
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.miui.home.action.ALL_APPS_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "is_drawer_setting"

    const/4 v1, 0x1

    .line 105
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 106
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer$1;->this$0:Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;

    iget-object v0, v0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 107
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object p1

    invoke-interface {p1}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->hideSettingsTip()V

    return-void
.end method
