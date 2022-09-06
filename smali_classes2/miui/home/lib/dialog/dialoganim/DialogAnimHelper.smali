.class public Lmiui/home/lib/dialog/dialoganim/DialogAnimHelper;
.super Ljava/lang/Object;
.source "DialogAnimHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/home/lib/dialog/dialoganim/DialogAnimHelper$OnDismiss;
    }
.end annotation


# static fields
.field private static sDialogAnim:Lmiui/home/lib/dialog/dialoganim/IDialogAnim;


# direct methods
.method public static cancelAnimator()V
    .locals 1

    .line 36
    sget-object v0, Lmiui/home/lib/dialog/dialoganim/DialogAnimHelper;->sDialogAnim:Lmiui/home/lib/dialog/dialoganim/IDialogAnim;

    if-eqz v0, :cond_0

    .line 37
    invoke-interface {v0}, Lmiui/home/lib/dialog/dialoganim/IDialogAnim;->cancelAnimator()V

    :cond_0
    return-void
.end method

.method public static executeDismissAnim(Landroid/view/View;Landroid/view/View;Lmiui/home/lib/dialog/dialoganim/DialogAnimHelper$OnDismiss;)V
    .locals 1

    .line 42
    sget-object v0, Lmiui/home/lib/dialog/dialoganim/DialogAnimHelper;->sDialogAnim:Lmiui/home/lib/dialog/dialoganim/IDialogAnim;

    if-eqz v0, :cond_0

    .line 43
    invoke-interface {v0, p0, p1, p2}, Lmiui/home/lib/dialog/dialoganim/IDialogAnim;->executeDismissAnim(Landroid/view/View;Landroid/view/View;Lmiui/home/lib/dialog/dialoganim/DialogAnimHelper$OnDismiss;)V

    :cond_0
    return-void
.end method

.method public static executeShowAnim(Landroid/view/View;Landroid/view/View;ZLmiui/home/lib/dialog/AlertDialog$OnDialogShowAnimListener;)V
    .locals 1

    .line 25
    sget-object v0, Lmiui/home/lib/dialog/dialoganim/DialogAnimHelper;->sDialogAnim:Lmiui/home/lib/dialog/dialoganim/IDialogAnim;

    if-eqz v0, :cond_0

    invoke-static {}, Lmiuix/internal/util/DeviceHelper;->isFoldDevice()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 26
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiuix/internal/util/DeviceHelper;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27
    new-instance v0, Lmiui/home/lib/dialog/dialoganim/PadDialogAnim;

    invoke-direct {v0}, Lmiui/home/lib/dialog/dialoganim/PadDialogAnim;-><init>()V

    sput-object v0, Lmiui/home/lib/dialog/dialoganim/DialogAnimHelper;->sDialogAnim:Lmiui/home/lib/dialog/dialoganim/IDialogAnim;

    goto :goto_0

    .line 29
    :cond_1
    new-instance v0, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim;

    invoke-direct {v0}, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim;-><init>()V

    sput-object v0, Lmiui/home/lib/dialog/dialoganim/DialogAnimHelper;->sDialogAnim:Lmiui/home/lib/dialog/dialoganim/IDialogAnim;

    .line 32
    :cond_2
    :goto_0
    sget-object v0, Lmiui/home/lib/dialog/dialoganim/DialogAnimHelper;->sDialogAnim:Lmiui/home/lib/dialog/dialoganim/IDialogAnim;

    invoke-interface {v0, p0, p1, p2, p3}, Lmiui/home/lib/dialog/dialoganim/IDialogAnim;->executeShowAnim(Landroid/view/View;Landroid/view/View;ZLmiui/home/lib/dialog/AlertDialog$OnDialogShowAnimListener;)V

    return-void
.end method
