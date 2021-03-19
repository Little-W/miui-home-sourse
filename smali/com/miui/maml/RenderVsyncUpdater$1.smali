.class Lcom/miui/maml/RenderVsyncUpdater$1;
.super Ljava/lang/Object;
.source "RenderVsyncUpdater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/RenderVsyncUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/maml/RenderVsyncUpdater;


# direct methods
.method constructor <init>(Lcom/miui/maml/RenderVsyncUpdater;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/miui/maml/RenderVsyncUpdater$1;->this$0:Lcom/miui/maml/RenderVsyncUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/miui/maml/RenderVsyncUpdater$1;->this$0:Lcom/miui/maml/RenderVsyncUpdater;

    invoke-static {v0}, Lcom/miui/maml/RenderVsyncUpdater;->access$100(Lcom/miui/maml/RenderVsyncUpdater;)V

    return-void
.end method
