.class public Lcom/miui/home/launcher/LauncherMenuDialog;
.super Lcom/miui/home/launcher/LauncherDialog;
.source "LauncherMenuDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field private mLauncherMenu:Lcom/miui/home/launcher/LauncherMenu;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherDialog;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLauncherDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 19
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherMenuDialog;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v0, 0x0

    const v1, 0x7f0d0065

    invoke-virtual {p1, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/LauncherMenu;

    iput-object p1, p0, Lcom/miui/home/launcher/LauncherMenuDialog;->mLauncherMenu:Lcom/miui/home/launcher/LauncherMenu;

    .line 20
    new-instance p1, Lmiui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherMenuDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x8

    invoke-direct {p1, v1, v2}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherMenuDialog;->mLauncherMenu:Lcom/miui/home/launcher/LauncherMenu;

    .line 21
    invoke-virtual {p1, v1}, Lmiui/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiui/app/AlertDialog$Builder;

    move-result-object p1

    const v1, 0x7f10017d

    .line 22
    invoke-virtual {p1, v1, v0}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object p1

    .line 23
    invoke-virtual {p1}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 39
    invoke-super {p0, p1}, Lcom/miui/home/launcher/LauncherDialog;->onDismiss(Landroid/content/DialogInterface;)V

    .line 40
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/miui/home/launcher/common/messages/LauncherBottomMenuMessage;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/common/messages/LauncherBottomMenuMessage;-><init>(Z)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 41
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->confirmCellsCount(Landroid/content/Context;)V

    return-void
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2

    .line 28
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherMenuDialog;->mLauncherMenu:Lcom/miui/home/launcher/LauncherMenu;

    if-eqz p1, :cond_0

    .line 29
    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherMenu;->onShow()V

    .line 31
    :cond_0
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/miui/home/launcher/common/messages/LauncherBottomMenuMessage;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/common/messages/LauncherBottomMenuMessage;-><init>(Z)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 32
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 33
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->closeFolder()Z

    :cond_1
    return-void
.end method

.method public removeSelfByFragmentManager()V
    .locals 1

    .line 45
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherMenuDialog;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherMenuDialog;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    :cond_0
    return-void
.end method
