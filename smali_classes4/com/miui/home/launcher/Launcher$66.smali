.class Lcom/miui/home/launcher/Launcher$66;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/Launcher;->uninstallPowerCleanButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 7949
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$66;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 7952
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$66;->this$0:Lcom/miui/home/launcher/Launcher;

    const/16 v1, 0xe

    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher;->access$8100(Lcom/miui/home/launcher/Launcher;I)Ljava/util/ArrayList;

    move-result-object v0

    .line 7953
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$66;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->bindGadgetsRemoved(Ljava/util/ArrayList;)V

    return-void
.end method
