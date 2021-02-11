.class public final synthetic Lcom/miui/home/recents/views/-$$Lambda$SwipeHelperForRecents$7VzYNv6ftrVxndjhlbiQDrV_Bi0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/views/SwipeHelperForRecents;

.field private final synthetic f$1:Landroid/view/View;

.field private final synthetic f$2:Z

.field private final synthetic f$3:F


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/views/SwipeHelperForRecents;Landroid/view/View;ZF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/-$$Lambda$SwipeHelperForRecents$7VzYNv6ftrVxndjhlbiQDrV_Bi0;->f$0:Lcom/miui/home/recents/views/SwipeHelperForRecents;

    iput-object p2, p0, Lcom/miui/home/recents/views/-$$Lambda$SwipeHelperForRecents$7VzYNv6ftrVxndjhlbiQDrV_Bi0;->f$1:Landroid/view/View;

    iput-boolean p3, p0, Lcom/miui/home/recents/views/-$$Lambda$SwipeHelperForRecents$7VzYNv6ftrVxndjhlbiQDrV_Bi0;->f$2:Z

    iput p4, p0, Lcom/miui/home/recents/views/-$$Lambda$SwipeHelperForRecents$7VzYNv6ftrVxndjhlbiQDrV_Bi0;->f$3:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/miui/home/recents/views/-$$Lambda$SwipeHelperForRecents$7VzYNv6ftrVxndjhlbiQDrV_Bi0;->f$0:Lcom/miui/home/recents/views/SwipeHelperForRecents;

    iget-object v1, p0, Lcom/miui/home/recents/views/-$$Lambda$SwipeHelperForRecents$7VzYNv6ftrVxndjhlbiQDrV_Bi0;->f$1:Landroid/view/View;

    iget-boolean v2, p0, Lcom/miui/home/recents/views/-$$Lambda$SwipeHelperForRecents$7VzYNv6ftrVxndjhlbiQDrV_Bi0;->f$2:Z

    iget v3, p0, Lcom/miui/home/recents/views/-$$Lambda$SwipeHelperForRecents$7VzYNv6ftrVxndjhlbiQDrV_Bi0;->f$3:F

    invoke-static {v0, v1, v2, v3}, Lcom/miui/home/recents/views/SwipeHelperForRecents;->lambda$snapChild$0(Lcom/miui/home/recents/views/SwipeHelperForRecents;Landroid/view/View;ZF)V

    return-void
.end method
