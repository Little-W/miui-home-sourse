.class Lcom/miui/home/launcher/Launcher$77$1;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/Launcher$77;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/home/launcher/Launcher$77;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher$77;)V
    .locals 0

    .line 8298
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$77$1;->this$1:Lcom/miui/home/launcher/Launcher$77;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 8301
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$77$1;->this$1:Lcom/miui/home/launcher/Launcher$77;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$77;->this$0:Lcom/miui/home/launcher/Launcher;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher$77$1;->this$1:Lcom/miui/home/launcher/Launcher$77;

    iget-object v2, v2, Lcom/miui/home/launcher/Launcher$77;->val$info:Lcom/miui/home/launcher/RemoteShortcutInfo;

    invoke-virtual {v2}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher;->access$9200(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;)Z

    return-void
.end method
