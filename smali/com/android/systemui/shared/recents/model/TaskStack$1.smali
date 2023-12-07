.class Lcom/android/systemui/shared/recents/model/TaskStack$1;
.super Ljava/lang/Object;

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

    iput-object p1, p0, Lcom/android/systemui/shared/recents/model/TaskStack$1;->this$0:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;)I
    .locals 2

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task;->isFreeformTask()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Lcom/android/systemui/shared/recents/model/Task;->isFreeformTask()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p2}, Lcom/android/systemui/shared/recents/model/Task;->isFreeformTask()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task;->isFreeformTask()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    iget p0, p1, Lcom/android/systemui/shared/recents/model/Task;->temporarySortIndexInStack:I

    int-to-long p0, p0

    iget p2, p2, Lcom/android/systemui/shared/recents/model/Task;->temporarySortIndexInStack:I

    int-to-long v0, p2

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/systemui/shared/recents/model/Task;

    check-cast p2, Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/shared/recents/model/TaskStack$1;->compare(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;)I

    move-result p0

    return p0
.end method
