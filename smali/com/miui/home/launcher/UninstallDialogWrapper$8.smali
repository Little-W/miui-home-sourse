.class Lcom/miui/home/launcher/UninstallDialogWrapper$8;
.super Lcom/miui/home/launcher/common/ConflictsListenerAdapter;
.source "UninstallDialogWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/UninstallDialogWrapper;
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

    .line 251
    iput-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper$8;->this$0:Lcom/miui/home/launcher/UninstallDialogWrapper;

    invoke-direct {p0}, Lcom/miui/home/launcher/common/ConflictsListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onGainLock()V
    .locals 2

    .line 255
    iget-object p0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper$8;->this$0:Lcom/miui/home/launcher/UninstallDialogWrapper;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/UninstallDialogWrapper;->showUninstallDialogAnim(ZLjava/util/List;)V

    return-void
.end method
