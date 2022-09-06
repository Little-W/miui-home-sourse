.class public Lcom/miui/home/launcher/TransitionEffectMenuDialog;
.super Lcom/miui/home/launcher/LauncherDialog;
.source "TransitionEffectMenuDialog.java"


# instance fields
.field private mTransitionMenu:Lcom/miui/home/launcher/TransitionEffectThumbnailView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherDialog;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLauncherDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 17
    invoke-virtual {p0}, Lcom/miui/home/launcher/TransitionEffectMenuDialog;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v0, 0x0

    const v1, 0x7f0d0190

    invoke-virtual {p1, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/TransitionEffectThumbnailView;

    iput-object p1, p0, Lcom/miui/home/launcher/TransitionEffectMenuDialog;->mTransitionMenu:Lcom/miui/home/launcher/TransitionEffectThumbnailView;

    .line 18
    new-instance p1, Lmiui/home/lib/dialog/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/miui/home/launcher/TransitionEffectMenuDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f120007

    invoke-direct {p1, v1, v2}, Lmiui/home/lib/dialog/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/miui/home/launcher/TransitionEffectMenuDialog;->mTransitionMenu:Lcom/miui/home/launcher/TransitionEffectThumbnailView;

    .line 19
    invoke-virtual {p1, v1}, Lmiui/home/lib/dialog/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiui/home/lib/dialog/AlertDialog$Builder;

    move-result-object p1

    const v1, 0x7f1102b4

    .line 20
    invoke-virtual {p1, v1, v0}, Lmiui/home/lib/dialog/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/home/lib/dialog/AlertDialog$Builder;

    move-result-object p1

    .line 21
    invoke-virtual {p1}, Lmiui/home/lib/dialog/AlertDialog$Builder;->create()Lmiui/home/lib/dialog/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 33
    invoke-super {p0, p1}, Lcom/miui/home/launcher/LauncherDialog;->onDismiss(Landroid/content/DialogInterface;)V

    .line 34
    iget-object p1, p0, Lcom/miui/home/launcher/TransitionEffectMenuDialog;->mTransitionMenu:Lcom/miui/home/launcher/TransitionEffectThumbnailView;

    if-eqz p1, :cond_0

    .line 35
    invoke-virtual {p1}, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->saveSelectedMode()V

    :cond_0
    return-void
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 0

    .line 26
    iget-object p1, p0, Lcom/miui/home/launcher/TransitionEffectMenuDialog;->mTransitionMenu:Lcom/miui/home/launcher/TransitionEffectThumbnailView;

    if-eqz p1, :cond_0

    .line 27
    invoke-virtual {p1}, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->prepareToShow()V

    :cond_0
    return-void
.end method
