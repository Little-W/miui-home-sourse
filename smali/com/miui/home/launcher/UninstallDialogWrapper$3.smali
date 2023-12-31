.class Lcom/miui/home/launcher/UninstallDialogWrapper$3;
.super Ljava/lang/Object;
.source "UninstallDialogWrapper.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/UninstallDialogWrapper;->showUninstallConfirmAppDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Ljava/util/List<",
        "Lcom/miui/home/launcher/ShortcutInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/UninstallDialogWrapper;

.field final synthetic val$dialog:Lcom/miui/home/launcher/uninstall/SecondConfirmDialog;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/UninstallDialogWrapper;Lcom/miui/home/launcher/uninstall/SecondConfirmDialog;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper$3;->this$0:Lcom/miui/home/launcher/UninstallDialogWrapper;

    iput-object p2, p0, Lcom/miui/home/launcher/UninstallDialogWrapper$3;->val$dialog:Lcom/miui/home/launcher/uninstall/SecondConfirmDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 139
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/UninstallDialogWrapper$3;->accept(Ljava/util/List;)V

    return-void
.end method

.method public accept(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .line 142
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper$3;->this$0:Lcom/miui/home/launcher/UninstallDialogWrapper;

    iget-object p0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper$3;->val$dialog:Lcom/miui/home/launcher/uninstall/SecondConfirmDialog;

    invoke-virtual {p0}, Lcom/miui/home/launcher/uninstall/SecondConfirmDialog;->getCancelShortcutInfos()Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/miui/home/launcher/UninstallDialogWrapper;->access$800(Lcom/miui/home/launcher/UninstallDialogWrapper;Ljava/util/List;)Z

    return-void
.end method
