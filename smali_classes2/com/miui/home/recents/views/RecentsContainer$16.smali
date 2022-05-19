.class Lcom/miui/home/recents/views/RecentsContainer$16;
.super Ljava/lang/Object;
.source "RecentsContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/views/RecentsContainer;->killProcess(Lcom/android/systemui/shared/recents/model/Task;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/views/RecentsContainer;

.field final synthetic val$task:Lcom/android/systemui/shared/recents/model/Task;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/views/RecentsContainer;Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 0

    .line 1495
    iput-object p1, p0, Lcom/miui/home/recents/views/RecentsContainer$16;->this$0:Lcom/miui/home/recents/views/RecentsContainer;

    iput-object p2, p0, Lcom/miui/home/recents/views/RecentsContainer$16;->val$task:Lcom/android/systemui/shared/recents/model/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1498
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer$16;->val$task:Lcom/android/systemui/shared/recents/model/Task;

    invoke-static {v0}, Lcom/android/systemui/shared/recents/system/ProcessManagerWrapper;->doSwapUPClean(Lcom/android/systemui/shared/recents/model/Task;)V

    return-void
.end method
