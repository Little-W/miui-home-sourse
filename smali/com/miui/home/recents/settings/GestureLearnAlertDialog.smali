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
.field private mAlertDialog:Lmiui/app/AlertDialog;

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


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->mContext:Landroid/content/Context;

    .line 26
    new-instance p1, Lmiui/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->mContext:Landroid/content/Context;

    .line 27
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1001a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lmiui/app/AlertDialog$Builder;->setCheckBox(ZLjava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/miui/home/recents/settings/-$$Lambda$GestureLearnAlertDialog$2bA7-KrLqmIIcoiOA4-uoGyvGcw;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/settings/-$$Lambda$GestureLearnAlertDialog$2bA7-KrLqmIIcoiOA4-uoGyvGcw;-><init>(Lcom/miui/home/recents/settings/GestureLearnAlertDialog;)V

    const v1, 0x7f1001a5

    .line 28
    invoke-virtual {p1, v1, v0}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/miui/home/recents/settings/-$$Lambda$GestureLearnAlertDialog$7dgelwRCkU7PA4vFbm0S2PIM-gk;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/settings/-$$Lambda$GestureLearnAlertDialog$7dgelwRCkU7PA4vFbm0S2PIM-gk;-><init>(Lcom/miui/home/recents/settings/GestureLearnAlertDialog;)V

    const v1, 0x7f1001a6

    .line 43
    invoke-virtual {p1, v1, v0}, Lmiui/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v0, 0x1

    .line 45
    invoke-virtual {p1, v0}, Lmiui/app/AlertDialog$Builder;->setCancelable(Z)Lmiui/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/miui/home/recents/settings/-$$Lambda$GestureLearnAlertDialog$dF4cX6ZekK391-CrDr_z7FiKYoY;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/settings/-$$Lambda$GestureLearnAlertDialog$dF4cX6ZekK391-CrDr_z7FiKYoY;-><init>(Lcom/miui/home/recents/settings/GestureLearnAlertDialog;)V

    .line 46
    invoke-virtual {p1, v0}, Lmiui/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object p1

    .line 51
    invoke-virtual {p1}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->mAlertDialog:Lmiui/app/AlertDialog;

    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/miui/home/recents/settings/GestureLearnAlertDialog;Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p1, 0x1

    .line 29
    iput-boolean p1, p0, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->mClickOnDialog:Z

    .line 30
    iget-object p1, p0, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->mIntentAction:Ljava/lang/String;

    if-nez p1, :cond_0

    return-void

    .line 34
    :cond_0
    :try_start_0
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 35
    iget-object p1, p0, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "GestureLearnAlertDialog"

    const-string v0, "GestureLearnAlertDialog positive button"

    .line 37
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 39
    :goto_0
    iget-object p1, p0, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->mClickPosButtonRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 40
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method public static synthetic lambda$new$1(Lcom/miui/home/recents/settings/GestureLearnAlertDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x1

    .line 44
    iput-boolean p1, p0, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->mClickOnDialog:Z

    return-void
.end method

.method public static synthetic lambda$new$2(Lcom/miui/home/recents/settings/GestureLearnAlertDialog;Landroid/content/DialogInterface;)V
    .locals 3

    .line 47
    iget-object p1, p0, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->mDialogDismissConsumer:Ljava/util/function/Consumer;

    if-eqz p1, :cond_0

    .line 48
    new-instance v0, Lcom/miui/home/recents/settings/GestureLearnAlertDialog$DismissStatus;

    iget-boolean v1, p0, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->mClickOnDialog:Z

    iget-object v2, p0, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->mAlertDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v2}, Lmiui/app/AlertDialog;->isChecked()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/miui/home/recents/settings/GestureLearnAlertDialog$DismissStatus;-><init>(ZZ)V

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
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

    .line 75
    iput-object p1, p0, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->mDialogDismissConsumer:Ljava/util/function/Consumer;

    return-void
.end method

.method public setClickPosButtonRunnable(Ljava/lang/Runnable;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->mClickPosButtonRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public setMessage(I)V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->mAlertDialog:Lmiui/app/AlertDialog;

    iget-object v1, p0, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmiui/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setPositiveButtonIntentAction(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->mIntentAction:Ljava/lang/String;

    return-void
.end method

.method public setTitle(I)V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->mAlertDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v0, p1}, Lmiui/app/AlertDialog;->setTitle(I)V

    return-void
.end method

.method public show()V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->mAlertDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->show()V

    return-void
.end method
