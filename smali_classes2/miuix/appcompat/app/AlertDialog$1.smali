.class Lmiuix/appcompat/app/AlertDialog$1;
.super Ljava/lang/Object;
.source "AlertDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/app/AlertDialog;->dismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/appcompat/app/AlertDialog;


# direct methods
.method constructor <init>(Lmiuix/appcompat/app/AlertDialog;)V
    .locals 0

    .line 1023
    iput-object p1, p0, Lmiuix/appcompat/app/AlertDialog$1;->this$0:Lmiuix/appcompat/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1026
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$1;->this$0:Lmiuix/appcompat/app/AlertDialog;

    iget-object v0, v0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    iget-object p0, p0, Lmiuix/appcompat/app/AlertDialog$1;->this$0:Lmiuix/appcompat/app/AlertDialog;

    invoke-static {p0}, Lmiuix/appcompat/app/AlertDialog;->access$000(Lmiuix/appcompat/app/AlertDialog;)Lmiuix/appcompat/widget/DialogAnimHelper$OnDismiss;

    move-result-object p0

    invoke-virtual {v0, p0}, Lmiuix/appcompat/app/AlertController;->dismiss(Lmiuix/appcompat/widget/DialogAnimHelper$OnDismiss;)V

    return-void
.end method
