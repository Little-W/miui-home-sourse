.class public Lcom/miui/home/recents/settings/GestureLearnAlertDialog;
.super Ljava/lang/Object;
.source "GestureLearnAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/settings/GestureLearnAlertDialog$DismissStatus;
    }
.end annotation


# instance fields
.field private mAlertDialog:Lmiui/home/lib/dialog/AlertDialog;

.field private mClickOnDialog:Z

.field private mClickPosButtonRunnable:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mDialogDismissConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/miui/home/recents/settings/GestureLearnAlertDialog$DismissStatus;",
            ">;"
        }
    .end annotation
.end field

.field private mIntentAction:Ljava/lang/String;

.field private mIsAddNewTaskFlag:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->mIsAddNewTaskFlag:Z

    .line 28
    iput-object p1, p0, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->mContext:Landroid/content/Context;

    .line 29
    new-instance p1, Lmiui/home/lib/dialog/AlertDialog$Builder;

    iget-object v1, p0, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->mContext:Landroid/content/Context;

    invoke-direct {p1, v1}, Lmiui/home/lib/dialog/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->mContext:Landroid/content/Context;

    .line 30
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110352

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lmiui/home/lib/dialog/AlertDialog$Builder;->setCheckBox(ZLjava/lang/CharSequence;)Lmiui/home/lib/dialog/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/miui/home/recents/settings/-$$Lambda$GestureLearnAlertDialog$2bA7-KrLqmIIcoiOA4-uoGyvGcw;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/settings/-$$Lambda$GestureLearnAlertDialog$2bA7-KrLqmIIcoiOA4-uoGyvGcw;-><init>(Lcom/miui/home/recents/settings/GestureLearnAlertDialog;)V

    const v1, 0x7f110353

    .line 31
    invoke-virtual {p1, v1, v0}, Lmiui/home/lib/dialog/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/home/lib/dialog/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/miui/home/recents/settings/-$$Lambda$GestureLearnAlertDialog$7dgelwRCkU7PA4vFbm0S2PIM-gk;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/settings/-$$Lambda$GestureLearnAlertDialog$7dgelwRCkU7PA4vFbm0S2PIM-gk;-><init>(Lcom/miui/home/recents/settings/GestureLearnAlertDialog;)V

    const v1, 0x7f110354

    .line 49
    invoke-virtual {p1, v1, v0}, Lmiui/home/lib/dialog/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/home/lib/dialog/AlertDialog$Builder;

    move-result-object p1

    const/4 v0, 0x1

    .line 51
    invoke-virtual {p1, v0}, Lmiui/home/lib/dialog/AlertDialog$Builder;->setCancelable(Z)Lmiui/home/lib/dialog/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/miui/home/recents/settings/-$$Lambda$GestureLearnAlertDialog$dF4cX6ZekK391-CrDr_z7FiKYoY;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/settings/-$$Lambda$GestureLearnAlertDialog$dF4cX6ZekK391-CrDr_z7FiKYoY;-><init>(Lcom/miui/home/recents/settings/GestureLearnAlertDialog;)V

    .line 52
    invoke-virtual {p1, v0}, Lmiui/home/lib/dialog/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiui/home/lib/dialog/AlertDialog$Builder;

    move-result-object p1

    .line 57
    invoke-virtual {p1}, Lmiui/home/lib/dialog/AlertDialog$Builder;->create()Lmiui/home/lib/dialog/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->mAlertDialog:Lmiui/home/lib/dialog/AlertDialog;

    return-void
.end method


# virtual methods
.method public isShowing()Z
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->mAlertDialog:Lmiui/home/lib/dialog/AlertDialog;

    invoke-virtual {p0}, Lmiui/home/lib/dialog/AlertDialog;->isShowing()Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$new$0$GestureLearnAlertDialog(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p1, 0x1

    .line 32
    iput-boolean p1, p0, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->mClickOnDialog:Z

    .line 33
    iget-object p1, p0, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->mIntentAction:Ljava/lang/String;

    if-nez p1, :cond_0

    return-void

    .line 37
    :cond_0
    :try_start_0
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 38
    sget-boolean p1, Lcom/miui/home/launcher/DeviceConfig;->IS_FOLD_DEVICE:Z

    if-nez p1, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result p1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->mIsAddNewTaskFlag:Z

    if-eqz p1, :cond_2

    :cond_1
    const/high16 p1, 0x10800000

    .line 39
    invoke-virtual {p2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 41
    :cond_2
    iget-object p1, p0, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "GestureLearnAlertDialog"

    const-string v0, "GestureLearnAlertDialog positive button"

    .line 43
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    :goto_0
    iget-object p0, p0, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->mClickPosButtonRunnable:Ljava/lang/Runnable;

    if-eqz p0, :cond_3

    .line 46
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_3
    return-void
.end method

.method public synthetic lambda$new$1$GestureLearnAlertDialog(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x1

    .line 50
    iput-boolean p1, p0, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->mClickOnDialog:Z

    return-void
.end method

.method public synthetic lambda$new$2$GestureLearnAlertDialog(Landroid/content/DialogInterface;)V
    .locals 2

    .line 53
    iget-object p1, p0, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->mDialogDismissConsumer:Ljava/util/function/Consumer;

    if-eqz p1, :cond_0

    .line 54
    new-instance v0, Lcom/miui/home/recents/settings/GestureLearnAlertDialog$DismissStatus;

    iget-boolean v1, p0, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->mClickOnDialog:Z

    iget-object p0, p0, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->mAlertDialog:Lmiui/home/lib/dialog/AlertDialog;

    invoke-virtual {p0}, Lmiui/home/lib/dialog/AlertDialog;->isChecked()Z

    move-result p0

    invoke-direct {v0, v1, p0}, Lcom/miui/home/recents/settings/GestureLearnAlertDialog$DismissStatus;-><init>(ZZ)V

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setClickDialogButtonConsume(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/miui/home/recents/settings/GestureLearnAlertDialog$DismissStatus;",
            ">;)V"
        }
    .end annotation

    .line 93
    iput-object p1, p0, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->mDialogDismissConsumer:Ljava/util/function/Consumer;

    return-void
.end method

.method public setClickPosButtonRunnable(Ljava/lang/Runnable;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->mClickPosButtonRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public setIsAddNewTaskFlag(Z)V
    .locals 0

    .line 61
    iput-boolean p1, p0, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->mIsAddNewTaskFlag:Z

    return-void
.end method

.method public setMessage(I)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->mAlertDialog:Lmiui/home/lib/dialog/AlertDialog;

    iget-object p0, p0, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lmiui/home/lib/dialog/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setPositiveButtonIntentAction(Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->mIntentAction:Ljava/lang/String;

    return-void
.end method

.method public setTitle(I)V
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->mAlertDialog:Lmiui/home/lib/dialog/AlertDialog;

    invoke-virtual {p0, p1}, Lmiui/home/lib/dialog/AlertDialog;->setTitle(I)V

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->mAlertDialog:Lmiui/home/lib/dialog/AlertDialog;

    invoke-virtual {p0}, Lmiui/home/lib/dialog/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/Window;->setType(I)V

    return-void
.end method

.method public show()V
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->mAlertDialog:Lmiui/home/lib/dialog/AlertDialog;

    invoke-virtual {p0}, Lmiui/home/lib/dialog/AlertDialog;->show()V

    return-void
.end method
