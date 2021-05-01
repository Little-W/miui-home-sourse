.class public final synthetic Lcom/miui/home/recents/-$$Lambda$NavStubView$ffyilYP03Z58rEamWvCHhiZPdSE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/NavStubView;

.field private final synthetic f$1:Lcom/miui/home/recents/views/TaskView;

.field private final synthetic f$2:F


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/recents/views/TaskView;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$ffyilYP03Z58rEamWvCHhiZPdSE;->f$0:Lcom/miui/home/recents/NavStubView;

    iput-object p2, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$ffyilYP03Z58rEamWvCHhiZPdSE;->f$1:Lcom/miui/home/recents/views/TaskView;

    iput p3, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$ffyilYP03Z58rEamWvCHhiZPdSE;->f$2:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$ffyilYP03Z58rEamWvCHhiZPdSE;->f$0:Lcom/miui/home/recents/NavStubView;

    iget-object v1, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$ffyilYP03Z58rEamWvCHhiZPdSE;->f$1:Lcom/miui/home/recents/views/TaskView;

    iget v2, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$ffyilYP03Z58rEamWvCHhiZPdSE;->f$2:F

    invoke-static {v0, v1, v2}, Lcom/miui/home/recents/NavStubView;->lambda$null$263(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/recents/views/TaskView;F)V

    return-void
.end method
