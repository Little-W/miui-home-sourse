.class Lcom/miui/home/launcher/Launcher$75;
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

    .line 7725
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$75;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 7728
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$75;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$2800(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/WorkspaceThumbnailView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->invalidateThumbnails()V

    return-void
.end method
