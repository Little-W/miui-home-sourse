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

    .line 590
    new-instance v0, Landroid/util/ArrayMap;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 591
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 593
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/shared/recents/model/Task;

    .line 594
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

    .line 465
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 466
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

    .line 549
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 550
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 551
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTaskKeys()Ljava/util/ArrayList;

    move-result-object v2

    .line 552
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_4

    .line 554
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    .line 557
    iget v6, v5, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    if-eq v6, p2, :cond_0

    goto :goto_1

    .line 559
    :cond_0
    invoke-virtual {v5}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    .line 560
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 561
    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    .line 565
    :cond_1
    invoke-static {}, Lcom/android/systemui/shared/recents/system/PackageManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/PackageManagerWrapper;

    move-result-object v6

    invoke-virtual {v6, v5, p2}, Lcom/android/systemui/shared/recents/system/PackageManagerWrapper;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 566
    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 568
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

    .line 600
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 602
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "TaskStack"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, " numStackTasks="

    .line 603
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/shared/recents/model/FilteredTaskList;

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->size()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(I)V

    .line 604
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 605
    iget-object p1, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/shared/recents/model/FilteredTaskList;

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->getTasks()Ljava/util/ArrayList;

    move-result-object p1

    .line 606
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 608
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

    .line 531
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/TaskStack;->computeAllTasksList()Ljava/util/ArrayList;

    move-result-object v0

    .line 532
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 534
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/shared/recents/model/Task;

    .line 535
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

    .line 497
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/shared/recents/model/FilteredTaskList;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->getTasks()Ljava/util/ArrayList;

    move-result-object v0

    .line 499
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_1

    .line 501
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/shared/recents/model/Task;

    .line 502
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

    .line 449
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 450
    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/shared/recents/model/FilteredTaskList;

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->getTasks()Ljava/util/ArrayList;

    move-result-object v1

    .line 451
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 453
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/shared/recents/model/Task;

    .line 454
    invoke-virtual {v4}, Lcom/android/systemui/shared/recents/model/Task;->isFreeformTask()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 455
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getLaunchTarget()Lcom/android/systemui/shared/recents/model/Task;
    .locals 5

    .line 513
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/shared/recents/model/FilteredTaskList;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->getTasks()Ljava/util/ArrayList;

    move-result-object v0

    .line 514
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 516
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/shared/recents/model/Task;

    .line 517
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

    .line 413
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/shared/recents/model/FilteredTaskList;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->getTasks()Ljava/util/ArrayList;

    move-result-object v0

    .line 414
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    const/4 v1, 0x0

    .line 417
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-gt v1, v3, :cond_3

    .line 418
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/shared/recents/model/Task;

    .line 419
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

    .line 481
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/shared/recents/model/FilteredTaskList;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->getTasks()Ljava/util/ArrayList;

    move-result-object v0

    .line 483
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_1

    .line 485
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/shared/recents/model/Task;

    .line 486
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

    .line 442
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/shared/recents/model/FilteredTaskList;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->getTasks()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getTaskCount()I
    .locals 1

    .line 474
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

    .line 428
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 429
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/TaskStack;->computeAllTasksList()Ljava/util/ArrayList;

    move-result-object v1

    .line 430
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 432
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/shared/recents/model/Task;

    .line 433
    iget-object v4, v4, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public indexOfStackTask(Lcom/android/systemui/shared/recents/model/Task;)I
    .locals 1

    .line 526
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

    .line 298
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/shared/recents/model/FilteredTaskList;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->getTasks()Ljava/util/ArrayList;

    move-result-object v0

    .line 299
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 300
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/recents/model/Task;

    .line 301
    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/model/Task;->isProtected()Z

    move-result v3

    if-nez v3, :cond_0

    .line 302
    iget-object v3, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/shared/recents/model/FilteredTaskList;

    invoke-virtual {p0, v3, v2}, Lcom/android/systemui/shared/recents/model/TaskStack;->removeTaskImpl(Lcom/android/systemui/shared/recents/model/FilteredTaskList;Lcom/android/systemui/shared/recents/model/Task;)V

    .line 303
    iget-object v3, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mRawTaskList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 306
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mCb:Lcom/android/systemui/shared/recents/model/TaskStack$TaskStackCallbacks;

    if-eqz v0, :cond_2

    .line 308
    invoke-interface {v0, p0}, Lcom/android/systemui/shared/recents/model/TaskStack$TaskStackCallbacks;->onStackTasksRemoved(Lcom/android/systemui/shared/recents/model/TaskStack;)V

    :cond_2
    return-void
.end method

.method public removeTask(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/utilities/AnimationProps;)V
    .locals 3

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

    move-result-object v0

    .line 285
    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mCb:Lcom/android/systemui/shared/recents/model/TaskStack$TaskStackCallbacks;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 287
    invoke-interface {v1, p1, v0, p2, v2}, Lcom/android/systemui/shared/recents/model/TaskStack$TaskStackCallbacks;->onStackTaskRemoved(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/utilities/AnimationProps;Z)V

    .line 291
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

    .line 320
    iget-object p1, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mRawTaskList:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/android/systemui/shared/recents/model/TaskStack;->createTaskKeyMapFromList(Ljava/util/List;)Landroid/util/ArrayMap;

    move-result-object p1

    .line 321
    invoke-direct {p0, p2}, Lcom/android/systemui/shared/recents/model/TaskStack;->createTaskKeyMapFromList(Ljava/util/List;)Landroid/util/ArrayMap;

    move-result-object v0

    .line 322
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 323
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 324
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 327
    iget-object v4, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mCb:Lcom/android/systemui/shared/recents/model/TaskStack$TaskStackCallbacks;

    const/4 v5, 0x0

    if-nez v4, :cond_0

    move p3, v5

    .line 332
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mRawTaskList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_0
    if-ltz v4, :cond_2

    .line 334
    iget-object v6, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mRawTaskList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/shared/recents/model/Task;

    .line 335
    iget-object v7, v6, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v0, v7}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    if-eqz p3, :cond_1

    .line 337
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 343
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    move v4, v5

    :goto_1
    if-ge v4, v0, :cond_5

    .line 345
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/shared/recents/model/Task;

    .line 346
    iget-object v7, v6, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {p1, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/shared/recents/model/Task;

    if-nez v7, :cond_3

    if-eqz p3, :cond_3

    .line 348
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    if-eqz v7, :cond_4

    .line 352
    invoke-virtual {v7, v6}, Lcom/android/systemui/shared/recents/model/Task;->copyFrom(Lcom/android/systemui/shared/recents/model/Task;)V

    move-object v6, v7

    .line 355
    :cond_4
    :goto_2
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 359
    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_3
    if-ltz p1, :cond_6

    .line 360
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/shared/recents/model/Task;

    iput p1, p2, Lcom/android/systemui/shared/recents/model/Task;->temporarySortIndexInStack:I

    add-int/lit8 p1, p1, -0x1

    goto :goto_3

    .line 362
    :cond_6
    iget-object p1, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->FREEFORM_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v3, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 364
    iget-object p1, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/shared/recents/model/FilteredTaskList;

    invoke-virtual {p1, v3}, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->set(Ljava/util/List;)V

    .line 365
    iput-object v3, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mRawTaskList:Ljava/util/ArrayList;

    .line 368
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 369
    invoke-virtual {p0, v5}, Lcom/android/systemui/shared/recents/model/TaskStack;->getStackFrontMostTask(Z)Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p2

    move v0, v5

    :goto_4
    if-ge v0, p1, :cond_7

    .line 371
    iget-object v3, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mCb:Lcom/android/systemui/shared/recents/model/TaskStack$TaskStackCallbacks;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/shared/recents/model/Task;

    sget-object v6, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->IMMEDIATE:Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    invoke-interface {v3, v4, p2, v6, v5}, Lcom/android/systemui/shared/recents/model/TaskStack$TaskStackCallbacks;->onStackTaskRemoved(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/utilities/AnimationProps;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 377
    :cond_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_5
    if-ge v5, p1, :cond_8

    .line 379
    iget-object p2, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mCb:Lcom/android/systemui/shared/recents/model/TaskStack$TaskStackCallbacks;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shared/recents/model/Task;

    invoke-interface {p2, p0, v0}, Lcom/android/systemui/shared/recents/model/TaskStack$TaskStackCallbacks;->onStackTaskAdded(Lcom/android/systemui/shared/recents/model/TaskStack;Lcom/android/systemui/shared/recents/model/Task;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_8
    if-eqz p3, :cond_9

    .line 384
    iget-object p1, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mCb:Lcom/android/systemui/shared/recents/model/TaskStack$TaskStackCallbacks;

    invoke-interface {p1, p0}, Lcom/android/systemui/shared/recents/model/TaskStack$TaskStackCallbacks;->onStackTasksUpdated(Lcom/android/systemui/shared/recents/model/TaskStack;)V

    :cond_9
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 577
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

    .line 578
    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/shared/recents/model/FilteredTaskList;

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->getTasks()Ljava/util/ArrayList;

    move-result-object v1

    .line 579
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 581
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
