.class Lmiui/home/lib/dialog/AlertDialog$1;
.super Ljava/lang/Object;
.source "AlertDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/home/lib/dialog/AlertDialog;->dismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/home/lib/dialog/AlertDialog;


# direct methods
.method constructor <init>(Lmiui/home/lib/dialog/AlertDialog;)V
    .locals 0

    .line 1167
    iput-object p1, p0, Lmiui/home/lib/dialog/AlertDialog$1;->this$0:Lmiui/home/lib/dialog/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1170
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertDialog$1;->this$0:Lmiui/home/lib/dialog/AlertDialog;

    iget-object v0, v0, Lmiui/home/lib/dialog/AlertDialog;->mAlert:Lmiui/home/lib/dialog/AlertController;

    iget-object v1, p0, Lmiui/home/lib/dialog/AlertDialog$1;->this$0:Lmiui/home/lib/dialog/AlertDialog;

    invoke-static {v1}, Lmiui/home/lib/dialog/AlertDialog;->access$000(Lmiui/home/lib/dialog/AlertDialog;)Lmiui/home/lib/dialog/dialoganim/DialogAnimHelper$OnDismiss;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/home/lib/dialog/AlertController;->dismiss(Lmiui/home/lib/dialog/dialoganim/DialogAnimHelper$OnDismiss;)V

    return-void
.end method
