.class Lcom/miui/home/launcher/Launcher$63;
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

    .line 6877
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$63;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 6880
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$63;->this$0:Lcom/miui/home/launcher/Launcher;

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher;->access$8600(Lcom/miui/home/launcher/Launcher;I)Ljava/util/ArrayList;

    move-result-object v0

    .line 6881
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$63;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/Launcher;->bindGadgetsRemoved(Ljava/util/ArrayList;)V

    return-void
.end method
