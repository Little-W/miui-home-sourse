.class Lmiuix/os/AsyncTaskWithProgress$Listeners;
.super Ljava/lang/Object;
.source "AsyncTaskWithProgress.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/os/AsyncTaskWithProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Listeners"
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/os/AsyncTaskWithProgress;


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    const/4 v0, -0x2

    .line 273
    invoke-virtual {p0, p1, v0}, Lmiuix/os/AsyncTaskWithProgress$Listeners;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 260
    iget-object v0, p0, Lmiuix/os/AsyncTaskWithProgress$Listeners;->this$0:Lmiuix/os/AsyncTaskWithProgress;

    invoke-static {v0}, Lmiuix/os/AsyncTaskWithProgress;->access$100(Lmiuix/os/AsyncTaskWithProgress;)Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lmiuix/os/AsyncTaskWithProgress$Listeners;->this$0:Lmiuix/os/AsyncTaskWithProgress;

    invoke-static {v0}, Lmiuix/os/AsyncTaskWithProgress;->access$100(Lmiuix/os/AsyncTaskWithProgress;)Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    if-ne p1, v0, :cond_0

    const/4 p1, -0x2

    if-ne p2, p1, :cond_0

    .line 263
    iget-object p1, p0, Lmiuix/os/AsyncTaskWithProgress$Listeners;->this$0:Lmiuix/os/AsyncTaskWithProgress;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lmiuix/os/AsyncTaskWithProgress;->cancel(Z)Z

    :cond_0
    return-void
.end method
