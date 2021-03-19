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

    .line 322
    iput-object p1, p0, Lcom/miui/maml/ScreenElementRoot$1;->this$0:Lcom/miui/maml/ScreenElementRoot;

    iput-wide p2, p0, Lcom/miui/maml/ScreenElementRoot$1;->val$currentTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 325
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot$1;->this$0:Lcom/miui/maml/ScreenElementRoot;

    iget-wide v1, p0, Lcom/miui/maml/ScreenElementRoot$1;->val$currentTime:J

    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/ScreenElementRoot;->reset(J)V

    return-void
.end method
