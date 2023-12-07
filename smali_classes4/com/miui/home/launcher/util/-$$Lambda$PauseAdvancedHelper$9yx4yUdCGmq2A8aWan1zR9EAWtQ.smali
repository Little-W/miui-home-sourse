.class public final synthetic Lcom/miui/home/launcher/util/-$$Lambda$PauseAdvancedHelper$9yx4yUdCGmq2A8aWan1zR9EAWtQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/miui/home/launcher/util/-$$Lambda$PauseAdvancedHelper$9yx4yUdCGmq2A8aWan1zR9EAWtQ;->f$0:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-boolean p0, p0, Lcom/miui/home/launcher/util/-$$Lambda$PauseAdvancedHelper$9yx4yUdCGmq2A8aWan1zR9EAWtQ;->f$0:Z

    invoke-static {p0}, Lcom/miui/home/launcher/util/PauseAdvancedHelper;->lambda$unSetPauseAdvanced$1(Z)V

    return-void
.end method
