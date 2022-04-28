.class Lcom/miui/home/launcher/Workspace$10;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Workspace;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Workspace;)V
    .locals 0

    .line 2500
    iput-object p1, p0, Lcom/miui/home/launcher/Workspace$10;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Boolean;)V
    .locals 0

    .line 2503
    iget-object p1, p0, Lcom/miui/home/launcher/Workspace$10;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-static {p1}, Lcom/miui/home/launcher/Workspace;->access$800(Lcom/miui/home/launcher/Workspace;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 2504
    new-instance p1, Lcom/miui/home/launcher/Workspace$10$1;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/Workspace$10$1;-><init>(Lcom/miui/home/launcher/Workspace$10;)V

    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->useLauncherToRunOnUiThread(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2517
    invoke-static {}, Lcom/miui/home/launcher/IconReorganizeMonitor;->onReorganizeFail()V

    :cond_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 2500
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Workspace$10;->accept(Ljava/lang/Boolean;)V

    return-void
.end method
