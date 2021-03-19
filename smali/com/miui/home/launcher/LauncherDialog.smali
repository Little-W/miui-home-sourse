.class public abstract Lcom/miui/home/launcher/LauncherDialog;
.super Landroid/app/DialogFragment;
.source "LauncherDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field private mDialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static changeDialogStyle(Landroid/app/Dialog;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 54
    :cond_0
    sget v0, Lmiui/R$id;->customPanel:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 56
    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/ViewFunctions;->setViewPaddingLeft(Landroid/view/View;I)V

    .line 57
    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/ViewFunctions;->setViewPaddingRight(Landroid/view/View;I)V

    .line 59
    :cond_1
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 60
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-virtual {p0, v0, v1}, Landroid/view/Window;->setLayout(II)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 20
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherDialog;->mDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 21
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/LauncherDialog;->onCreateLauncherDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/LauncherDialog;->mDialog:Landroid/app/Dialog;

    .line 22
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1, p0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 23
    sget-boolean p1, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz p1, :cond_1

    .line 24
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 26
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x50

    .line 27
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 28
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/home/launcher/LauncherDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result p1

    if-nez p1, :cond_1

    .line 33
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 35
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherDialog;->mDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method public abstract onCreateLauncherDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end method

.method public onDarkModeChanged()V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/miui/home/launcher/LauncherDialog;->mDialog:Landroid/app/Dialog;

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 42
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 43
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherDialog;->changeDialogStyle(Landroid/app/Dialog;)V

    return-void
.end method
