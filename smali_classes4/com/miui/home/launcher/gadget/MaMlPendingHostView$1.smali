.class Lcom/miui/home/launcher/gadget/MaMlPendingHostView$1;
.super Ljava/lang/Object;
.source "MaMlPendingHostView.java"

# interfaces
.implements Lcom/miui/home/launcher/gadget/MaMlUtil$DownloadDialogCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/gadget/MaMlPendingHostView;->showMaMlDownloadWarnDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/gadget/MaMlPendingHostView;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/gadget/MaMlPendingHostView;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/miui/home/launcher/gadget/MaMlPendingHostView$1;->this$0:Lcom/miui/home/launcher/gadget/MaMlPendingHostView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    return-void
.end method

.method public onSure()V
    .locals 1

    .line 140
    iget-object p0, p0, Lcom/miui/home/launcher/gadget/MaMlPendingHostView$1;->this$0:Lcom/miui/home/launcher/gadget/MaMlPendingHostView;

    invoke-static {p0}, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;->access$000(Lcom/miui/home/launcher/gadget/MaMlPendingHostView;)Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;->access$100(Lcom/miui/home/launcher/gadget/MaMlPendingHostView;Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)V

    return-void
.end method
