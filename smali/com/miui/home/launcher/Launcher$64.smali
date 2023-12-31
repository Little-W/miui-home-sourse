.class Lcom/miui/home/launcher/Launcher$64;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/Launcher;->uninstallCleanButton()V
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

    .line 7928
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$64;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 7931
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$64;->this$0:Lcom/miui/home/launcher/Launcher;

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher;->access$8000(Lcom/miui/home/launcher/Launcher;I)Ljava/util/ArrayList;

    move-result-object v0

    .line 7932
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$64;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->bindGadgetsRemoved(Ljava/util/ArrayList;)V

    return-void
.end method
