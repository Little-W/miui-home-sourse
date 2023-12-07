.class Lcom/miui/home/launcher/ThumbnailContainer$3;
.super Ljava/lang/Object;
.source "ThumbnailContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/ThumbnailContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/ThumbnailContainer;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/ThumbnailContainer;)V
    .locals 0

    .line 289
    iput-object p1, p0, Lcom/miui/home/launcher/ThumbnailContainer$3;->this$0:Lcom/miui/home/launcher/ThumbnailContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 292
    iget-object v0, p0, Lcom/miui/home/launcher/ThumbnailContainer$3;->this$0:Lcom/miui/home/launcher/ThumbnailContainer;

    invoke-static {v0}, Lcom/miui/home/launcher/ThumbnailContainer;->access$000(Lcom/miui/home/launcher/ThumbnailContainer;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    .line 293
    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->isScrolling()Z

    move-result v1

    if-nez v1, :cond_0

    .line 294
    iget-object p0, p0, Lcom/miui/home/launcher/ThumbnailContainer$3;->this$0:Lcom/miui/home/launcher/ThumbnailContainer;

    invoke-static {p0}, Lcom/miui/home/launcher/ThumbnailContainer;->access$100(Lcom/miui/home/launcher/ThumbnailContainer;)Lcom/miui/home/launcher/CellScreen;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/Workspace;->snapToScreen(Lcom/miui/home/launcher/CellScreen;)I

    :cond_0
    return-void
.end method
