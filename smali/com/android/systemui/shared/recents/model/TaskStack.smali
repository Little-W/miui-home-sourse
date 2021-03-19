.class public Lcom/android/systemui/shared/recents/model/TaskStack;
.super Ljava/lang/Object;
.source "TaskStack.java"


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

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    new-instance v0, Lcom/android/systemui/shared/recents/model/TaskStack$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/recents/model/TaskStack$1;-><init>(Lcom/android/systemui/shared/recents/model/TaskStack;)V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->FREEFORM_COMPARATOR:Ljava/util/Comparator;

    .line 229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mRawTaskList:Ljava/util/ArrayList;

    .line 230
    new-instance v0, Lcom/android/systemui/shared/recents/model/FilteredTaskList;

    invoke-direct {v0}, Lcom/android/systemui/shared/recents/model/FilteredTaskList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/shared/recents/model/FilteredTaskList;

    .line 235
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/shared/recents/model/FilteredTaskList;

    new-instance v1, Lcom/android/systemui/shared/recents/model/TaskStack$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/shared/recents/model/TaskStack$2;-><init>(Lcom/android/systemui/shared/recents/model/TaskStack;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->setFilter(Lcom/android/systemui/shared/recents/model/TaskFilter;)Z

    return-void
.end method

.method private createTaskKeyMapFromList(Ljava/util/List;)Landroid/util/ArrayMap;
    .locals 5
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

    .line 589
    new-instance v0, Landroid/util/ArrayMap;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 590
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 592
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/shared/recents/model/Task;

    .line 593
    iget-object v4, v3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v0, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public computeAllTasksList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ">;"
        }
    .end annotation

    .line 464
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 465
    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/shared/recents/model/FilteredTaskList;

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->getTasks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public computeComponentsRemoved(Ljava/lang/String;I)Landroid/util/ArraySet;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/util/ArraySet<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 548
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 549
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 550
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTaskKeys()Ljava/util/ArrayList;

    move-result-object v2

    .line 551
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_4

    .line 553
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    .line 556
    iget v6, v5, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    if-eq v6, p2, :cond_0

    goto :goto_1

    .line 558
    :cond_0
    invoke-virtual {v5}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    .line 559
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 560
    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    .line 564
    :cond_1
    invoke-static {}, Lcom/android/systemui/shared/recents/system/PackageManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/PackageManagerWrapper;

    move-result-object v6

    invoke-virtual {v6, v5, p2}, Lcom/android/systemui/shared/recents/system/PackageManagerWrapper;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 565
    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 567
    :cond_2
    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 4

    .line 599
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 601
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "TaskStack"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, " numStackTasks="

    .line 602
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/shared/recents/model/FilteredTaskList;

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->size()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(I)V

    .line 603
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 604
    iget-object p1, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/shared/recents/model/FilteredTaskList;

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->getTasks()Ljava/util/ArrayList;

    move-result-object p1

    .line 605
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 607
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v3, v0, p2}, Lcom/android/systemui/shared/recents/model/Task;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public findTaskWithId(I)Lcom/android/systemui/shared/recents/model/Task;
    .locals 5

    .line 530
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/TaskStack;->computeAllTasksList()Ljava/util/ArrayList;

    move-result-object v0

    .line 531
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 533
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/shared/recents/model/Task;

    .line 534
    iget-object v4, v3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v4, v4, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-ne v4, p1, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getFreeformTaskCount()I
    .locals 5

    .line 496
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/shared/recents/model/FilteredTaskList;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->getTasks()Ljava/util/ArrayList;

    move-result-object v0

    .line 498
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_1

    .line 500
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/shared/recents/model/Task;

    .line 501
    invoke-virtual {v4}, Lcom/android/systemui/shared/recents/model/Task;->isFreeformTask()Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public getFreeformTasks()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ">;"
        }
    .end annotation

    .line 448
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 449
    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/shared/recents/model/FilteredTaskList;

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->getTasks()Ljava/util/ArrayList;

    move-result-object v1

    .line 450
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 452
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/shared/recents/model/Task;

    .line 453
    invoke-virtual {v4}, Lcom/android/systemui/shared/recents/model/Task;->isFreeformTask()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 454
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getLaunchTarget()Lcom/android/systemui/shared/recents/model/Task;
    .locals 5

    .line 512
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/shared/recents/model/FilteredTaskList;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->getTasks()Ljava/util/ArrayList;

    move-result-object v0

    .line 513
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 515
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/shared/recents/model/Task;

    .line 516
    iget-boolean v4, v3, Lcom/android/systemui/shared/recents/model/Task;->isLaunchTarget:Z

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStackFirstTask(Z)Lcom/android/systemui/shared/recents/model/Task;
    .locals 5

    .line 412
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/shared/recents/model/FilteredTaskList;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->getTasks()Ljava/util/ArrayList;

    move-result-object v0

    .line 413
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    const/4 v1, 0x0

    .line 416
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-gt v1, v3, :cond_3

    .line 417
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/shared/recents/model/Task;

    .line 418
    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/model/Task;->isFreeformTask()Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v3

    :cond_3
    return-object v2
.end method

.method public getStackFrontMostTask(Z)Lcom/android/systemui/shared/recents/model/Task;
    .locals 0

    .line 393
    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/model/TaskStack;->getStackFirstTask(Z)Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p1

    return-object p1
.end method

.method public getStackTaskCount()I
    .locals 5

    .line 480
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/shared/recents/model/FilteredTaskList;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->getTasks()Ljava/util/ArrayList;

    move-result-object v0

    .line 482
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_1

    .line 484
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/shared/recents/model/Task;

    .line 485
    invoke-virtual {v4}, Lcom/android/systemui/shared/recents/model/Task;->isFreeformTask()Z

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public getStackTasks()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ">;"
        }
    .end annotation

    .line 441
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/shared/recents/model/FilteredTaskList;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->getTasks()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getTaskCount()I
    .locals 1

    .line 473
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/shared/recents/model/FilteredTaskList;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->size()I

    move-result v0

    return v0
.end method

.method public getTaskKeys()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/shared/recents/model/Task$TaskKey;",
            ">;"
        }
    .end annotation

    .line 427
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 428
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/TaskStack;->computeAllTasksList()Ljava/util/ArrayList;

    move-result-object v1

    .line 429
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 431
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/shared/recents/model/Task;

    .line 432
    iget-object v4, v4, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public indexOfStackTask(Lcom/android/systemui/shared/recents/model/Task;)I
    .locals 1

    .line 525
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/shared/recents/model/FilteredTaskList;

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->indexOf(Lcom/android/systemui/shared/recents/model/Task;)I

    move-result p1

    return p1
.end method

.method public moveTaskToStack(Lcom/android/systemui/shared/recents/model/Task;I)V
    .locals 5

    .line 253
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/shared/recents/model/FilteredTaskList;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->getTasks()Ljava/util/ArrayList;

    move-result-object v0

    .line 254
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 255
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task;->isFreeformTask()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x2

    if-ne p2, v2, :cond_0

    .line 257
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/shared/recents/model/FilteredTaskList;

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->moveTaskToStack(Lcom/android/systemui/shared/recents/model/Task;II)V

    goto :goto_2

    .line 258
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

    .line 262
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

    .line 267
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/shared/recents/model/FilteredTaskList;

    invoke-virtual {v0, p1, v3, p2}, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->moveTaskToStack(Lcom/android/systemui/shared/recents/model/Task;II)V

    :cond_3
    :goto_2
    return-void
.end method

.method public removeAllTasks()V
    .locals 4

    .line 299
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/shared/recents/model/FilteredTaskList;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->getTasks()Ljava/util/ArrayList;

    move-result-object v0

    .line 300
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 301
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/recents/model/Task;

    .line 302
    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/model/Task;->isProtected()Z

    move-result v3

    if-nez v3, :cond_0

    .line 303
    iget-object v3, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/shared/recents/model/FilteredTaskList;

    invoke-virtual {p0, v3, v2}, Lcom/android/systemui/shared/recents/model/TaskStack;->removeTaskImpl(Lcom/android/systemui/shared/recents/model/FilteredTaskList;Lcom/android/systemui/shared/recents/model/Task;)V

    .line 304
    iget-object v3, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mRawTaskList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 307
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mCb:Lcom/android/systemui/shared/recents/model/TaskStack$TaskStackCallbacks;

    if-eqz v0, :cond_2

    .line 309
    invoke-interface {v0, p0}, Lcom/android/systemui/shared/recents/model/TaskStack$TaskStackCallbacks;->onStackTasksRemoved(Lcom/android/systemui/shared/recents/model/TaskStack;)V

    :cond_2
    return-void
.end method

.method public removeTask(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/utilities/AnimationProps;Z)V
    .locals 8

    .line 282
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/shared/recents/model/FilteredTaskList;

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->contains(Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/shared/recents/model/FilteredTaskList;

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/shared/recents/model/TaskStack;->removeTaskImpl(Lcom/android/systemui/shared/recents/model/FilteredTaskList;Lcom/android/systemui/shared/recents/model/Task;)V

    const/4 v0, 0x0

    .line 284
    invoke-virtual {p0, v0}, Lcom/android/systemui/shared/recents/model/TaskStack;->getStackFrontMostTask(Z)Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v4

    .line 285
    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mCb:Lcom/android/systemui/shared/recents/model/TaskStack$TaskStackCallbacks;

    if-eqz v1, :cond_0

    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move v6, p3

    .line 287
    invoke-interface/range {v1 .. v7}, Lcom/android/systemui/shared/recents/model/TaskStack$TaskStackCallbacks;->onStackTaskRemoved(Lcom/android/systemui/shared/recents/model/TaskStack;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/utilities/AnimationProps;ZZ)V

    .line 292
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mRawTaskList:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method removeTaskImpl(Lcom/android/systemui/shared/recents/model/FilteredTaskList;Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 0

    .line 274
    invoke-virtual {p1, p2}, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->remove(Lcom/android/systemui/shared/recents/model/Task;)Z

    return-void
.end method

.method public setCallbacks(Lcom/android/systemui/shared/recents/model/TaskStack$TaskStackCallbacks;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mCb:Lcom/android/systemui/shared/recents/model/TaskStack$TaskStackCallbacks;

    return-void
.end method

.method public setTasks(Landroid/content/Context;Ljava/util/List;Z)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ">;Z)V"
        }
    .end annotation

    move-object v7, p0

    move-object/from16 v0, p2

    .line 321
    iget-object v1, v7, Lcom/android/systemui/shared/recents/model/TaskStack;->mRawTaskList:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/android/systemui/shared/recents/model/TaskStack;->createTaskKeyMapFromList(Ljava/util/List;)Landroid/util/ArrayMap;

    move-result-object v1

    .line 322
    invoke-direct {p0, v0}, Lcom/android/systemui/shared/recents/model/TaskStack;->createTaskKeyMapFromList(Ljava/util/List;)Landroid/util/ArrayMap;

    move-result-object v2

    .line 323
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 324
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 325
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 328
    iget-object v4, v7, Lcom/android/systemui/shared/recents/model/TaskStack;->mCb:Lcom/android/systemui/shared/recents/model/TaskStack$TaskStackCallbacks;

    const/4 v10, 0x0

    if-nez v4, :cond_0

    move v11, v10

    goto :goto_0

    :cond_0
    move/from16 v11, p3

    .line 333
    :goto_0
    iget-object v4, v7, Lcom/android/systemui/shared/recents/model/TaskStack;->mRawTaskList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_1
    if-ltz v4, :cond_2

    .line 335
    iget-object v5, v7, Lcom/android/systemui/shared/recents/model/TaskStack;->mRawTaskList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/shared/recents/model/Task;

    .line 336
    iget-object v6, v5, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v2, v6}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    if-eqz v11, :cond_1

    .line 338
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 344
    :cond_2
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    move v4, v10

    :goto_2
    if-ge v4, v2, :cond_5

    .line 346
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/shared/recents/model/Task;

    .line 347
    iget-object v6, v5, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v1, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/shared/recents/model/Task;

    if-nez v6, :cond_3

    if-eqz v11, :cond_3

    .line 349
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    if-eqz v6, :cond_4

    .line 353
    invoke-virtual {v6, v5}, Lcom/android/systemui/shared/recents/model/Task;->copyFrom(Lcom/android/systemui/shared/recents/model/Task;)V

    move-object v5, v6

    .line 356
    :cond_4
    :goto_3
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 360
    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_4
    if-ltz v0, :cond_6

    .line 361
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shared/recents/model/Task;

    iput v0, v1, Lcom/android/systemui/shared/recents/model/Task;->temporarySortIndexInStack:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 363
    :cond_6
    iget-object v0, v7, Lcom/android/systemui/shared/recents/model/TaskStack;->FREEFORM_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 365
    iget-object v0, v7, Lcom/android/systemui/shared/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/shared/recents/model/FilteredTaskList;

    invoke-virtual {v0, v3}, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->set(Ljava/util/List;)V

    .line 366
    iput-object v3, v7, Lcom/android/systemui/shared/recents/model/TaskStack;->mRawTaskList:Ljava/util/ArrayList;

    .line 369
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 370
    invoke-virtual {p0, v10}, Lcom/android/systemui/shared/recents/model/TaskStack;->getStackFrontMostTask(Z)Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v13

    move v14, v10

    :goto_5
    if-ge v14, v12, :cond_7

    .line 372
    iget-object v0, v7, Lcom/android/systemui/shared/recents/model/TaskStack;->mCb:Lcom/android/systemui/shared/recents/model/TaskStack$TaskStackCallbacks;

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/shared/recents/model/Task;

    sget-object v4, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->IMMEDIATE:Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, v13

    invoke-interface/range {v0 .. v6}, Lcom/android/systemui/shared/recents/model/TaskStack$TaskStackCallbacks;->onStackTaskRemoved(Lcom/android/systemui/shared/recents/model/TaskStack;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/utilities/AnimationProps;ZZ)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 378
    :cond_7
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_6
    if-ge v10, v0, :cond_8

    .line 380
    iget-object v1, v7, Lcom/android/systemui/shared/recents/model/TaskStack;->mCb:Lcom/android/systemui/shared/recents/model/TaskStack$TaskStackCallbacks;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/recents/model/Task;

    invoke-interface {v1, p0, v2}, Lcom/android/systemui/shared/recents/model/TaskStack$TaskStackCallbacks;->onStackTaskAdded(Lcom/android/systemui/shared/recents/model/TaskStack;Lcom/android/systemui/shared/recents/model/Task;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_8
    if-eqz v11, :cond_9

    .line 385
    iget-object v0, v7, Lcom/android/systemui/shared/recents/model/TaskStack;->mCb:Lcom/android/systemui/shared/recents/model/TaskStack$TaskStackCallbacks;

    invoke-interface {v0, p0}, Lcom/android/systemui/shared/recents/model/TaskStack$TaskStackCallbacks;->onStackTasksUpdated(Lcom/android/systemui/shared/recents/model/TaskStack;)V

    :cond_9
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 576
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

    .line 577
    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/shared/recents/model/FilteredTaskList;

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->getTasks()Ljava/util/ArrayList;

    move-result-object v1

    .line 578
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 580
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "    "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
