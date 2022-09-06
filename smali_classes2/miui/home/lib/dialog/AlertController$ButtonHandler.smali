.class final Lmiui/home/lib/dialog/AlertController$ButtonHandler;
.super Landroid/os/Handler;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/home/lib/dialog/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ButtonHandler"
.end annotation


# instance fields
.field private final mDialog:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/DialogInterface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/DialogInterface;)V
    .locals 1

    .line 259
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 260
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiui/home/lib/dialog/AlertController$ButtonHandler;->mDialog:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 265
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController$ButtonHandler;->mDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/DialogInterface;

    .line 267
    iget v1, p1, Landroid/os/Message;->what:I

    const v2, -0x626d435d

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_1

    .line 269
    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 272
    :cond_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-interface {v1, v0, p1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_1
    :goto_0
    return-void
.end method
