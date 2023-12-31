.class Lcom/miui/home/launcher/Launcher$79;
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

    .line 9036
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$79;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 9039
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$79;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->access$3200(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/WorkspaceThumbnailView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->invalidateThumbnails()V

    return-void
.end method
