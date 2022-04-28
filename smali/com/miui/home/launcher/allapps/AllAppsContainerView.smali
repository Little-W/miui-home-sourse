.class public Lcom/miui/home/launcher/allapps/AllAppsContainerView;
.super Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;
.source "AllAppsContainerView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public initBranchOnScrollUpEnd(Lcom/miui/home/launcher/LauncherState;Z)V
    .locals 2

    .line 19
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialInit()Lcom/mi/globallauncher/branchInterface/ICommercialInit;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/allapps/AllAppsContainerView$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/home/launcher/allapps/AllAppsContainerView$1;-><init>(Lcom/miui/home/launcher/allapps/AllAppsContainerView;Lcom/miui/home/launcher/LauncherState;Z)V

    invoke-interface {v0, v1}, Lcom/mi/globallauncher/branchInterface/ICommercialInit;->initBranchOnScrollUpEnd(Lcom/mi/globallauncher/branchInterface/BranchInitInterface;)V

    return-void
.end method
