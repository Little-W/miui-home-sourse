.class Lmiui/home/lib/dialog/AlertController$1;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Lmiui/home/lib/dialog/AlertDialog$OnDialogShowAnimListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/home/lib/dialog/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/home/lib/dialog/AlertController;


# direct methods
.method constructor <init>(Lmiui/home/lib/dialog/AlertController;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lmiui/home/lib/dialog/AlertController$1;->this$0:Lmiui/home/lib/dialog/AlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShowAnimComplete()V
    .locals 2

    .line 196
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController$1;->this$0:Lmiui/home/lib/dialog/AlertController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/home/lib/dialog/AlertController;->access$002(Lmiui/home/lib/dialog/AlertController;Z)Z

    .line 197
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController$1;->this$0:Lmiui/home/lib/dialog/AlertController;

    invoke-static {v0}, Lmiui/home/lib/dialog/AlertController;->access$100(Lmiui/home/lib/dialog/AlertController;)Lmiui/home/lib/dialog/AlertDialog$OnDialogShowAnimListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController$1;->this$0:Lmiui/home/lib/dialog/AlertController;

    invoke-static {v0}, Lmiui/home/lib/dialog/AlertController;->access$100(Lmiui/home/lib/dialog/AlertController;)Lmiui/home/lib/dialog/AlertDialog$OnDialogShowAnimListener;

    move-result-object v0

    invoke-interface {v0}, Lmiui/home/lib/dialog/AlertDialog$OnDialogShowAnimListener;->onShowAnimComplete()V

    :cond_0
    return-void
.end method

.method public onShowAnimStart()V
    .locals 2

    .line 188
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController$1;->this$0:Lmiui/home/lib/dialog/AlertController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmiui/home/lib/dialog/AlertController;->access$002(Lmiui/home/lib/dialog/AlertController;Z)Z

    .line 189
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController$1;->this$0:Lmiui/home/lib/dialog/AlertController;

    invoke-static {v0}, Lmiui/home/lib/dialog/AlertController;->access$100(Lmiui/home/lib/dialog/AlertController;)Lmiui/home/lib/dialog/AlertDialog$OnDialogShowAnimListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController$1;->this$0:Lmiui/home/lib/dialog/AlertController;

    invoke-static {v0}, Lmiui/home/lib/dialog/AlertController;->access$100(Lmiui/home/lib/dialog/AlertController;)Lmiui/home/lib/dialog/AlertDialog$OnDialogShowAnimListener;

    move-result-object v0

    invoke-interface {v0}, Lmiui/home/lib/dialog/AlertDialog$OnDialogShowAnimListener;->onShowAnimStart()V

    :cond_0
    return-void
.end method
