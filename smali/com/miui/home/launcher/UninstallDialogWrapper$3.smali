.class Lcom/miui/home/launcher/UninstallDialogWrapper$3;
.super Ljava/lang/Object;
.source "UninstallDialogWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/UninstallDialogWrapper;->onConfirmUninstall()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/UninstallDialogWrapper;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/UninstallDialogWrapper;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper$3;->this$0:Lcom/miui/home/launcher/UninstallDialogWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper$3;->this$0:Lcom/miui/home/launcher/UninstallDialogWrapper;

    invoke-static {v0}, Lcom/miui/home/launcher/UninstallDialogWrapper;->access$200(Lcom/miui/home/launcher/UninstallDialogWrapper;)Lcom/miui/home/launcher/UninstallDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/UninstallDialog;->onConfirm()V

    return-void
.end method
