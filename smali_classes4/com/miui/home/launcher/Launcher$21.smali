.class Lcom/miui/home/launcher/Launcher$21;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/Launcher;->onDestroy()V
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

    .line 3287
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$21;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 3290
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$21;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$3000(Lcom/miui/home/launcher/Launcher;)V

    .line 3291
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$21;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->access$3100(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/NotificationHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/NotificationHelper;->unRegisterListener()V

    return-void
.end method
