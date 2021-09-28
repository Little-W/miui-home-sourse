.class Lcom/miui/home/launcher/Launcher$54;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/Launcher;
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

    .line 5583
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$54;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 5586
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$54;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$7600(Lcom/miui/home/launcher/Launcher;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->showStatusBar(Z)V

    return-void
.end method
