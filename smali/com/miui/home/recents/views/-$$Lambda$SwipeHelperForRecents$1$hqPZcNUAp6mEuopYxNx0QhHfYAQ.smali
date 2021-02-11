.class public final synthetic Lcom/miui/home/recents/views/-$$Lambda$SwipeHelperForRecents$1$hqPZcNUAp6mEuopYxNx0QhHfYAQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/views/TaskView;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/views/TaskView;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/-$$Lambda$SwipeHelperForRecents$1$hqPZcNUAp6mEuopYxNx0QhHfYAQ;->f$0:Lcom/miui/home/recents/views/TaskView;

    iput-boolean p2, p0, Lcom/miui/home/recents/views/-$$Lambda$SwipeHelperForRecents$1$hqPZcNUAp6mEuopYxNx0QhHfYAQ;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/recents/views/-$$Lambda$SwipeHelperForRecents$1$hqPZcNUAp6mEuopYxNx0QhHfYAQ;->f$0:Lcom/miui/home/recents/views/TaskView;

    iget-boolean v1, p0, Lcom/miui/home/recents/views/-$$Lambda$SwipeHelperForRecents$1$hqPZcNUAp6mEuopYxNx0QhHfYAQ;->f$1:Z

    invoke-static {v0, v1}, Lcom/miui/home/recents/views/SwipeHelperForRecents$1;->lambda$onOutRange$0(Lcom/miui/home/recents/views/TaskView;Z)V

    return-void
.end method
