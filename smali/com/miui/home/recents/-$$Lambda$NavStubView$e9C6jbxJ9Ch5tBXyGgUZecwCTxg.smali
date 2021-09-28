.class public final synthetic Lcom/miui/home/recents/-$$Lambda$NavStubView$e9C6jbxJ9Ch5tBXyGgUZecwCTxg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/NavStubView;

.field private final synthetic f$1:Lcom/miui/home/recents/views/TaskView;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/recents/views/TaskView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$e9C6jbxJ9Ch5tBXyGgUZecwCTxg;->f$0:Lcom/miui/home/recents/NavStubView;

    iput-object p2, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$e9C6jbxJ9Ch5tBXyGgUZecwCTxg;->f$1:Lcom/miui/home/recents/views/TaskView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$e9C6jbxJ9Ch5tBXyGgUZecwCTxg;->f$0:Lcom/miui/home/recents/NavStubView;

    iget-object v1, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$e9C6jbxJ9Ch5tBXyGgUZecwCTxg;->f$1:Lcom/miui/home/recents/views/TaskView;

    invoke-static {v0, v1}, Lcom/miui/home/recents/NavStubView;->lambda$actionMoveQuickSwitchTaskHold$10(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/recents/views/TaskView;)V

    return-void
.end method
