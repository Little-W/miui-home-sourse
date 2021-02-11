.class Lcom/miui/home/launcher/UninstallDialogWrapper$5;
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

    .line 230
    iput-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper$5;->this$0:Lcom/miui/home/launcher/UninstallDialogWrapper;

    invoke-direct {p0}, Lcom/miui/home/launcher/common/ConflictsListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onGainLock()V
    .locals 2

    .line 234
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDialogWrapper$5;->this$0:Lcom/miui/home/launcher/UninstallDialogWrapper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/UninstallDialogWrapper;->showUninstallDialogAnim(Z)V

    return-void
.end method
