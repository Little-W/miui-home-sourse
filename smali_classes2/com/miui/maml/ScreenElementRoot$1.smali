.class Lcom/miui/maml/ScreenElementRoot$1;
.super Ljava/lang/Object;
.source "ScreenElementRoot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/maml/ScreenElementRoot;->tick(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/maml/ScreenElementRoot;

.field final synthetic val$currentTime:J


# direct methods
.method constructor <init>(Lcom/miui/maml/ScreenElementRoot;J)V
    .locals 0

    .line 352
    iput-object p1, p0, Lcom/miui/maml/ScreenElementRoot$1;->this$0:Lcom/miui/maml/ScreenElementRoot;

    iput-wide p2, p0, Lcom/miui/maml/ScreenElementRoot$1;->val$currentTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 355
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot$1;->this$0:Lcom/miui/maml/ScreenElementRoot;

    iget-wide v1, p0, Lcom/miui/maml/ScreenElementRoot$1;->val$currentTime:J

    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/ScreenElementRoot;->reset(J)V

    .line 356
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot$1;->this$0:Lcom/miui/maml/ScreenElementRoot;

    invoke-static {v0}, Lcom/miui/maml/ScreenElementRoot;->access$000(Lcom/miui/maml/ScreenElementRoot;)Lcom/miui/maml/CommandTriggers;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 358
    :try_start_0
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot$1;->this$0:Lcom/miui/maml/ScreenElementRoot;

    invoke-static {p0}, Lcom/miui/maml/ScreenElementRoot;->access$000(Lcom/miui/maml/ScreenElementRoot;)Lcom/miui/maml/CommandTriggers;

    move-result-object p0

    const-string v0, "init"

    invoke-virtual {p0, v0}, Lcom/miui/maml/CommandTriggers;->onAction(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAction init fail."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ScreenElementRoot"

    invoke-static {v0, p0}, Lcom/miui/maml/util/MamlLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
