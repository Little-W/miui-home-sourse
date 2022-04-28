.class Lcom/mi/globallauncher/BranchClientImplement$2;
.super Ljava/lang/Object;
.source "BranchClientImplement.java"

# interfaces
.implements Lcom/mi/globallauncher/branchInterface/IBranchGuildCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/globallauncher/BranchClientImplement;->internationalInitMethod(Lcom/miui/home/launcher/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mi/globallauncher/BranchClientImplement;


# direct methods
.method constructor <init>(Lcom/mi/globallauncher/BranchClientImplement;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/mi/globallauncher/BranchClientImplement$2;->this$0:Lcom/mi/globallauncher/BranchClientImplement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public appsViewVisibility()Z
    .locals 1

    .line 212
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getAppsView()Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public closeAllAppsDialog()V
    .locals 2

    .line 233
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object v0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->hideDeepViewDialog(Landroidx/fragment/app/FragmentManager;)V

    .line 234
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->hideAppView()V

    return-void
.end method

.method public getLauncher()Landroid/app/Activity;
    .locals 1

    .line 239
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    return-object v0
.end method

.method public isLightMode()Ljava/lang/Boolean;
    .locals 2

    .line 207
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsColorMode()Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    move-result-object v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsBackgroundAlpha()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public launcherNull()Z
    .locals 1

    .line 197
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public searchBarRequestFocus()V
    .locals 1

    .line 217
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getSearchBar()Lcom/miui/home/launcher/SearchBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBar;->getDrawerLayout()Lcom/miui/home/launcher/SearchBarDrawerLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBarDrawerLayout;->requestFocus()Z

    return-void
.end method

.method public setTextLinkOpenWithWebView(Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/Boolean;)V
    .locals 2

    .line 227
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/mi/globallauncher/view/BranchSearchGuide;->setMiTextLinkOpenWithWebView(Landroid/app/Activity;Landroid/widget/TextView;Z)V

    .line 228
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-static {p1, p2, p3}, Lcom/mi/globallauncher/view/BranchSearchGuide;->setTextLinkOpenWithWebView(Landroid/app/Activity;Landroid/widget/TextView;Z)V

    return-void
.end method

.method public showGuide()Lcom/mi/globallauncher/view/TapTargetView;
    .locals 2

    .line 222
    invoke-static {}, Lcom/mi/globallauncher/DragIconGuide;->getInstance()Lcom/mi/globallauncher/DragIconGuide;

    move-result-object v0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getAppsView()Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mi/globallauncher/DragIconGuide;->showGuide(Lcom/miui/home/launcher/allapps/AllAppsContainerView;)Lcom/mi/globallauncher/view/TapTargetView;

    move-result-object v0

    return-object v0
.end method

.method public updateAllAppsIndicator()V
    .locals 2

    .line 202
    invoke-static {}, Lcom/mi/globallauncher/BranchClientImplement;->getInstance()Lcom/mi/globallauncher/BranchClientImplement;

    move-result-object v0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mi/globallauncher/BranchClientImplement;->updateAllAppsIndicator(Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method
