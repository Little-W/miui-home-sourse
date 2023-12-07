.class public final synthetic Lcom/miui/home/recents/-$$Lambda$NavStubView$u88FqpWMwk2tyS4Hg8_QSSdcPA0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/NavStubView;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/NavStubView;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$u88FqpWMwk2tyS4Hg8_QSSdcPA0;->f$0:Lcom/miui/home/recents/NavStubView;

    iput-boolean p2, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$u88FqpWMwk2tyS4Hg8_QSSdcPA0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$u88FqpWMwk2tyS4Hg8_QSSdcPA0;->f$0:Lcom/miui/home/recents/NavStubView;

    iget-boolean p0, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$u88FqpWMwk2tyS4Hg8_QSSdcPA0;->f$1:Z

    invoke-virtual {v0, p0}, Lcom/miui/home/recents/NavStubView;->lambda$resetSoscLauncherProperty$28$NavStubView(Z)V

    return-void
.end method
