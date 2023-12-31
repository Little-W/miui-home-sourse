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

    .line 27
    sget-object v0, Lmiui/home/lib/dialog/dialoganim/DialogAnimHelper;->sDialogAnim:Lmiui/home/lib/dialog/dialoganim/IDialogAnim;

    if-eqz v0, :cond_0

    .line 28
    invoke-interface {v0}, Lmiui/home/lib/dialog/dialoganim/IDialogAnim;->cancelAnimator()V

    :cond_0
    return-void
.end method

.method public static executeDismissAnim(Landroid/view/View;Landroid/view/View;Lmiui/home/lib/dialog/dialoganim/DialogAnimHelper$OnDismiss;)V
    .locals 1

    .line 33
    sget-object v0, Lmiui/home/lib/dialog/dialoganim/DialogAnimHelper;->sDialogAnim:Lmiui/home/lib/dialog/dialoganim/IDialogAnim;

    if-nez v0, :cond_1

    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiuix/internal/util/DeviceHelper;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lmiuix/internal/util/DeviceHelper;->isFoldDevice()Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lmiui/home/lib/dialog/dialoganim/PadDialogAnim;

    invoke-direct {v0}, Lmiui/home/lib/dialog/dialoganim/PadDialogAnim;-><init>()V

    sput-object v0, Lmiui/home/lib/dialog/dialoganim/DialogAnimHelper;->sDialogAnim:Lmiui/home/lib/dialog/dialoganim/IDialogAnim;

    goto :goto_0

    .line 37
    :cond_0
    new-instance v0, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim;

    invoke-direct {v0}, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim;-><init>()V

    sput-object v0, Lmiui/home/lib/dialog/dialoganim/DialogAnimHelper;->sDialogAnim:Lmiui/home/lib/dialog/dialoganim/IDialogAnim;

    .line 40
    :cond_1
    :goto_0
    sget-object v0, Lmiui/home/lib/dialog/dialoganim/DialogAnimHelper;->sDialogAnim:Lmiui/home/lib/dialog/dialoganim/IDialogAnim;

    invoke-interface {v0, p0, p1, p2}, Lmiui/home/lib/dialog/dialoganim/IDialogAnim;->executeDismissAnim(Landroid/view/View;Landroid/view/View;Lmiui/home/lib/dialog/dialoganim/DialogAnimHelper$OnDismiss;)V

    const/4 p0, 0x0

    .line 41
    sput-object p0, Lmiui/home/lib/dialog/dialoganim/DialogAnimHelper;->sDialogAnim:Lmiui/home/lib/dialog/dialoganim/IDialogAnim;

    return-void
.end method

.method public static executeShowAnim(Landroid/view/View;Landroid/view/View;ZLmiui/home/lib/dialog/AlertDialog$OnDialogShowAnimListener;)V
    .locals 1

    .line 16
    sget-object v0, Lmiui/home/lib/dialog/dialoganim/DialogAnimHelper;->sDialogAnim:Lmiui/home/lib/dialog/dialoganim/IDialogAnim;

    if-nez v0, :cond_1

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiuix/internal/util/DeviceHelper;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lmiuix/internal/util/DeviceHelper;->isFoldDevice()Z

    move-result v0

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lmiui/home/lib/dialog/dialoganim/PadDialogAnim;

    invoke-direct {v0}, Lmiui/home/lib/dialog/dialoganim/PadDialogAnim;-><init>()V

    sput-object v0, Lmiui/home/lib/dialog/dialoganim/DialogAnimHelper;->sDialogAnim:Lmiui/home/lib/dialog/dialoganim/IDialogAnim;

    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim;

    invoke-direct {v0}, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim;-><init>()V

    sput-object v0, Lmiui/home/lib/dialog/dialoganim/DialogAnimHelper;->sDialogAnim:Lmiui/home/lib/dialog/dialoganim/IDialogAnim;

    .line 23
    :cond_1
    :goto_0
    sget-object v0, Lmiui/home/lib/dialog/dialoganim/DialogAnimHelper;->sDialogAnim:Lmiui/home/lib/dialog/dialoganim/IDialogAnim;

    invoke-interface {v0, p0, p1, p2, p3}, Lmiui/home/lib/dialog/dialoganim/IDialogAnim;->executeShowAnim(Landroid/view/View;Landroid/view/View;ZLmiui/home/lib/dialog/AlertDialog$OnDialogShowAnimListener;)V

    return-void
.end method
