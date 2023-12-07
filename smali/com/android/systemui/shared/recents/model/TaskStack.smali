.class public Lcom/android/systemui/shared/recents/model/TaskStack;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/shared/recents/model/TaskStack$TaskStackCallbacks;
    }
.end annotation


# static fields
.field public static final ChangeGetFrontMostTest:Z = true

.field public static final FREEFORM_WORKSPACE_STACK_ID:I = 0x2

.field public static final FULLSCREEN_WORKSPACE_STACK_ID:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TaskStack"


# instance fields
.field private FREEFORM_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ">;"
        }
    .end annotation
.end field

.field mCb:Lcom/android/systemui/shared/recents/model/TaskStack$TaskStackCallbacks;

.field mRawTaskList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ">;"
        }
    .end annotation
.end field

.field mStackTaskList:Lcom/android/systemui/shared/recents/model/FilteredTaskList;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/shared/recents/model/TaskStack$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/recents/model/TaskStack$1;-><init>(Lcom/android/systemui/shared/recents/model/TaskStack;)V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->FREEFORM_COMPARATOR:Ljava/util/Comparator;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mRawTaskList:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/shared/recents/model/FilteredTaskList;

    invoke-direct {v0}, Lcom/android/systemui/shared/recents/model/FilteredTaskList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/shared/recents/model/FilteredTaskList;

    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/shared/recents/model/FilteredTaskList;

    new-instance v1, Lcom/android/systemui/shared/recents/model/TaskStack$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/shared/recents/model/TaskStack$2;-><init>(Lcom/android/systemui/shared/recents/model/TaskStack;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->setFilter(Lcom/android/systemui/shared/recents/model/TaskFilter;)Z

    return-void
.end method

.method private createTaskKeyMapFromList(Ljava/util/List;)Landroid/util/ArrayMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ">;)",
            "Landroid/util/ArrayMap<",
            "Lcom/android/systemui/shared/recents/model/Task$TaskKey;",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ">;"
        }
    .end annotation

    new-instance p0, Landroid/util/ArrayMap;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/util/ArrayMap;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/recents/model/Task;

    iget-object v3, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {p0, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public computeAllTasksList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/shared/recents/model/FilteredTaskList;

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->getTasks()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "TaskStack"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, " numStackTasks="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/shared/recents/model/FilteredTaskList;

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->size()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/shared/recents/model/FilteredTaskList;

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->getTasks()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v2, v0, p2}, Lcom/android/systemui/shared/recents/model/Task;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public findTaskWithId(I)Lcom/android/systemui/shared/recents/model/Task;
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/TaskStack;->computeAllTasksList()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Lcom/android/systemui/shared/recents/model/Task;->isSameTaskFromId(I)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getFreeformTaskCount()I
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/shared/recents/model/FilteredTaskList;

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->getTasks()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/model/Task;->isFreeformTask()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public getFreeformTasks()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/shared/recents/model/FilteredTaskList;

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->getTasks()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/model/Task;->isFreeformTask()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getLaunchTarget()Lcom/android/systemui/shared/recents/model/Task;
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/shared/recents/model/FilteredTaskList;

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->getTasks()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/recents/model/Task;

    iget-boolean v3, v2, Lcom/android/systemui/shared/recents/model/Task;->isLaunchTarget:Z

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getStackFirstTask(Z)Lcom/android/systemui/shared/recents/model/Task;
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/shared/recents/model/FilteredTaskList;

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->getTasks()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-gt v0, v2, :cond_3

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/model/Task;->isFreeformTask()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v2

    :cond_3
    return-object v1
.end method

.method public getStackFrontMostTask(Z)Lcom/android/systemui/shared/recents/model/Task;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/model/TaskStack;->getStackFirstTask(Z)Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p0

    return-object p0
.end method

.method public getStackTaskCount()I
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/shared/recents/model/FilteredTaskList;

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->getTasks()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/model/Task;->isFreeformTask()Z

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public getStackTasks()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/shared/recents/model/FilteredTaskList;

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->getTasks()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getTaskCount()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/shared/recents/model/FilteredTaskList;

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->size()I

    move-result p0

    return p0
.end method

.method public getTaskKeys()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/shared/recents/model/Task$TaskKey;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/TaskStack;->computeAllTasksList()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/shared/recents/model/Task;

    iget-object v3, v3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public indexOfStackTask(Lcom/android/systemui/shared/recents/model/Task;)I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/shared/recents/model/FilteredTaskList;

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->indexOf(Lcom/android/systemui/shared/recents/model/Task;)I

    move-result p0

    return p0
.end method

.method public moveTaskToStack(Lcom/android/systemui/shared/recents/model/Task;I)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/shared/recents/model/FilteredTaskList;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->getTasks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task;->isFreeformTask()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x2

    if-ne p2, v2, :cond_0

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/shared/recents/model/FilteredTaskList;

    invoke-virtual {p0, p1, v1, p2}, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->moveTaskToStack(Lcom/android/systemui/shared/recents/model/Task;II)V

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task;->isFreeformTask()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    if-ne p2, v2, :cond_3

    const/4 v3, 0x0

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v4}, Lcom/android/systemui/shared/recents/model/Task;->isFreeformTask()Z

    move-result v4

    if-nez v4, :cond_1

    add-int/lit8 v3, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/shared/recents/model/FilteredTaskList;

    invoke-virtual {p0, p1, v3, p2}, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->moveTaskToStack(Lcom/android/systemui/shared/recents/model/Task;II)V

    :cond_3
    :goto_2
    return-void
.end method

.method public removeAllTasks()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/shared/recents/model/FilteredTaskList;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->getTasks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/model/Task;->isProtected()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/shared/recents/model/FilteredTaskList;

    invoke-virtual {p0, v3, v2}, Lcom/android/systemui/shared/recents/model/TaskStack;->removeTaskImpl(Lcom/android/systemui/shared/recents/model/FilteredTaskList;Lcom/android/systemui/shared/recents/model/Task;)V

    iget-object v3, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mRawTaskList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mCb:Lcom/android/systemui/shared/recents/model/TaskStack$TaskStackCallbacks;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0}, Lcom/android/systemui/shared/recents/model/TaskStack$TaskStackCallbacks;->onStackTasksRemoved(Lcom/android/systemui/shared/recents/model/TaskStack;)V

    :cond_2
    return-void
.end method

.method public removeTask(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/utilities/AnimationProps;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/shared/recents/model/FilteredTaskList;

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->contains(Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/shared/recents/model/FilteredTaskList;

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/shared/recents/model/TaskStack;->removeTaskImpl(Lcom/android/systemui/shared/recents/model/FilteredTaskList;Lcom/android/systemui/shared/recents/model/Task;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/shared/recents/model/TaskStack;->getStackFrontMostTask(Z)Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mCb:Lcom/android/systemui/shared/recents/model/TaskStack$TaskStackCallbacks;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-interface {v1, p1, v0, p2, v2}, Lcom/android/systemui/shared/recents/model/TaskStack$TaskStackCallbacks;->onStackTaskRemoved(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/utilities/AnimationProps;Z)V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mRawTaskList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method removeTaskImpl(Lcom/android/systemui/shared/recents/model/FilteredTaskList;Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 0

    invoke-virtual {p1, p2}, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->remove(Lcom/android/systemui/shared/recents/model/Task;)Z

    return-void
.end method

.method public setCallbacks(Lcom/android/systemui/shared/recents/model/TaskStack$TaskStackCallbacks;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mCb:Lcom/android/systemui/shared/recents/model/TaskStack$TaskStackCallbacks;

    return-void
.end method

.method public setTasks(Landroid/content/Context;Ljava/util/List;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ">;Z)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mRawTaskList:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/android/systemui/shared/recents/model/TaskStack;->createTaskKeyMapFromList(Ljava/util/List;)Landroid/util/ArrayMap;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/android/systemui/shared/recents/model/TaskStack;->createTaskKeyMapFromList(Ljava/util/List;)Landroid/util/ArrayMap;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mCb:Lcom/android/systemui/shared/recents/model/TaskStack$TaskStackCallbacks;

    const/4 v5, 0x0

    if-nez v4, :cond_0

    move p3, v5

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mRawTaskList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_0
    if-ltz v4, :cond_2

    iget-object v6, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mRawTaskList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/shared/recents/model/Task;

    iget-object v7, v6, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v0, v7}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    move v4, v5

    :goto_1
    if-ge v4, v0, :cond_5

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/shared/recents/model/Task;

    iget-object v7, v6, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {p1, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/shared/recents/model/Task;

    if-nez v7, :cond_3

    if-eqz p3, :cond_3

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    if-eqz v7, :cond_4

    invoke-virtual {v7, v6}, Lcom/android/systemui/shared/recents/model/Task;->copyFrom(Lcom/android/systemui/shared/recents/model/Task;)V

    move-object v6, v7

    :cond_4
    :goto_2
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_3
    if-ltz p1, :cond_6

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/shared/recents/model/Task;

    iput p1, p2, Lcom/android/systemui/shared/recents/model/Task;->temporarySortIndexInStack:I

    add-int/lit8 p1, p1, -0x1

    goto :goto_3

    :cond_6
    iget-object p1, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->FREEFORM_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v3, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object p1, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/shared/recents/model/FilteredTaskList;

    invoke-virtual {p1, v3}, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->set(Ljava/util/List;)V

    iput-object v3, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mRawTaskList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p0, v5}, Lcom/android/systemui/shared/recents/model/TaskStack;->getStackFrontMostTask(Z)Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p2

    move v0, v5

    :goto_4
    if-ge v0, p1, :cond_7

    iget-object v3, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mCb:Lcom/android/systemui/shared/recents/model/TaskStack$TaskStackCallbacks;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/shared/recents/model/Task;

    sget-object v6, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->IMMEDIATE:Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    invoke-interface {v3, v4, p2, v6, v5}, Lcom/android/systemui/shared/recents/model/TaskStack$TaskStackCallbacks;->onStackTaskRemoved(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/utilities/AnimationProps;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_5
    if-ge v5, p1, :cond_8

    iget-object p2, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mCb:Lcom/android/systemui/shared/recents/model/TaskStack$TaskStackCallbacks;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shared/recents/model/Task;

    invoke-interface {p2, p0, v0}, Lcom/android/systemui/shared/recents/model/TaskStack$TaskStackCallbacks;->onStackTaskAdded(Lcom/android/systemui/shared/recents/model/TaskStack;Lcom/android/systemui/shared/recents/model/Task;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_8
    if-eqz p3, :cond_9

    iget-object p1, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mCb:Lcom/android/systemui/shared/recents/model/TaskStack$TaskStackCallbacks;

    invoke-interface {p1, p0}, Lcom/android/systemui/shared/recents/model/TaskStack$TaskStackCallbacks;->onStackTasksUpdated(Lcom/android/systemui/shared/recents/model/TaskStack;)V

    :cond_9
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stack Tasks ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/shared/recents/model/FilteredTaskList;

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "):\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/shared/recents/model/FilteredTaskList;

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->getTasks()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "    "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
