.class Lcom/miui/home/library/utils/DeferredHandler$IdleRunnable;
.super Ljava/lang/Object;
.source "DeferredHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/library/utils/DeferredHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IdleRunnable"
.end annotation


# instance fields
.field mRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/miui/home/library/utils/DeferredHandler;


# direct methods
.method constructor <init>(Lcom/miui/home/library/utils/DeferredHandler;Ljava/lang/Runnable;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/miui/home/library/utils/DeferredHandler$IdleRunnable;->this$0:Lcom/miui/home/library/utils/DeferredHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p2, p0, Lcom/miui/home/library/utils/DeferredHandler$IdleRunnable;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/miui/home/library/utils/DeferredHandler$IdleRunnable;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
