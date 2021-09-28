.class public final synthetic Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$mC9zZmMqwvdPQngA2fYLVIJdPe0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/BaseRecentsImpl;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/BaseRecentsImpl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$mC9zZmMqwvdPQngA2fYLVIJdPe0;->f$0:Lcom/miui/home/recents/BaseRecentsImpl;

    iput p2, p0, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$mC9zZmMqwvdPQngA2fYLVIJdPe0;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$mC9zZmMqwvdPQngA2fYLVIJdPe0;->f$0:Lcom/miui/home/recents/BaseRecentsImpl;

    iget v1, p0, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$mC9zZmMqwvdPQngA2fYLVIJdPe0;->f$1:I

    invoke-static {v0, v1}, Lcom/miui/home/recents/BaseRecentsImpl;->lambda$onSystemUiFlagsChanged$12(Lcom/miui/home/recents/BaseRecentsImpl;I)V

    return-void
.end method
