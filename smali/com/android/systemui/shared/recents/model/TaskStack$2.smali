.class Lcom/android/systemui/shared/recents/model/TaskStack$2;
.super Ljava/lang/Object;
.source "TaskStack.java"

# interfaces
.implements Lcom/android/systemui/shared/recents/model/TaskFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/shared/recents/model/TaskStack;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/shared/recents/model/TaskStack;


# direct methods
.method constructor <init>(Lcom/android/systemui/shared/recents/model/TaskStack;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/android/systemui/shared/recents/model/TaskStack$2;->this$0:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public acceptTask(Landroid/util/SparseArray;Lcom/android/systemui/shared/recents/model/Task;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ">;",
            "Lcom/android/systemui/shared/recents/model/Task;",
            "I)Z"
        }
    .end annotation

    .line 238
    iget-boolean p1, p2, Lcom/android/systemui/shared/recents/model/Task;->isStackTask:Z

    return p1
.end method
