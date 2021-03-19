.class Lcom/android/systemui/shared/recents/model/TaskStack$1;
.super Ljava/lang/Object;
.source "TaskStack.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/recents/model/TaskStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/systemui/shared/recents/model/Task;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/shared/recents/model/TaskStack;


# direct methods
.method constructor <init>(Lcom/android/systemui/shared/recents/model/TaskStack;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/android/systemui/shared/recents/model/TaskStack$1;->this$0:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;)I
    .locals 2

    .line 220
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task;->isFreeformTask()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/android/systemui/shared/recents/model/Task;->isFreeformTask()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 222
    :cond_0
    invoke-virtual {p2}, Lcom/android/systemui/shared/recents/model/Task;->isFreeformTask()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task;->isFreeformTask()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, -0x1

    return p1

    .line 225
    :cond_1
    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task;->temporarySortIndexInStack:I

    int-to-long v0, p1

    iget p1, p2, Lcom/android/systemui/shared/recents/model/Task;->temporarySortIndexInStack:I

    int-to-long p1, p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 217
    check-cast p1, Lcom/android/systemui/shared/recents/model/Task;

    check-cast p2, Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/shared/recents/model/TaskStack$1;->compare(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;)I

    move-result p1

    return p1
.end method
