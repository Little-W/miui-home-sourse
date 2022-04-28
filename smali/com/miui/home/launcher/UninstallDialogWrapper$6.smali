.class Lcom/miui/home/launcher/UninstallDialogWrapper$6;
.super Ljava/lang/Object;
.source "UninstallDialogWrapper.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/UninstallDialogWrapper;->confirmUninstall()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/UninstallDialogWrapper;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/UninstallDialogWrapper;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper$6;->this$0:Lcom/miui/home/launcher/UninstallDialogWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Integer;)V
    .locals 1

    .line 170
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 171
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper$6;->this$0:Lcom/miui/home/launcher/UninstallDialogWrapper;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/home/launcher/UninstallDialogWrapper;->access$800(Lcom/miui/home/launcher/UninstallDialogWrapper;Ljava/util/List;)Z

    return-void

    .line 174
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper$6;->this$0:Lcom/miui/home/launcher/UninstallDialogWrapper;

    invoke-static {p1}, Lcom/miui/home/launcher/UninstallDialogWrapper;->access$900(Lcom/miui/home/launcher/UninstallDialogWrapper;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 167
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/UninstallDialogWrapper$6;->accept(Ljava/lang/Integer;)V

    return-void
.end method
