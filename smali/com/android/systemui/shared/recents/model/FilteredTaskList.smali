.class Lcom/android/systemui/shared/recents/model/FilteredTaskList;
.super Ljava/lang/Object;
.source "TaskStack.java"


# instance fields
.field mFilter:Lcom/android/systemui/shared/recents/model/TaskFilter;

.field mFilteredTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ">;"
        }
    .end annotation
.end field

.field mTaskIndices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/systemui/shared/recents/model/Task$TaskKey;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->mTasks:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->mFilteredTasks:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->mTaskIndices:Landroid/util/ArrayMap;

    return-void
.end method

.method private updateFilteredTaskIndices()V
    .locals 5

    .line 156
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->mFilteredTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 157
    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->mTaskIndices:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 159
    iget-object v2, p0, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->mFilteredTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/recents/model/Task;

    .line 160
    iget-object v3, p0, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->mTaskIndices:Landroid/util/ArrayMap;

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateFilteredTasks()V
    .locals 6

    .line 132
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->mFilteredTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 133
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->mFilter:Lcom/android/systemui/shared/recents/model/TaskFilter;

    if-eqz v0, :cond_2

    .line 135
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 136
    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    .line 138
    iget-object v4, p0, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/shared/recents/model/Task;

    .line 139
    iget-object v5, v4, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v5, v5, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v0, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v2, v1, :cond_3

    .line 143
    iget-object v3, p0, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/shared/recents/model/Task;

    .line 144
    iget-object v4, p0, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->mFilter:Lcom/android/systemui/shared/recents/model/TaskFilter;

    invoke-interface {v4, v0, v3, v2}, Lcom/android/systemui/shared/recents/model/TaskFilter;->acceptTask(Landroid/util/SparseArray;Lcom/android/systemui/shared/recents/model/Task;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 145
    iget-object v4, p0, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->mFilteredTasks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 149
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->mFilteredTasks:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 151
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->updateFilteredTaskIndices()V

    return-void
.end method


# virtual methods
.method add(Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    invoke-direct {p0}, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->updateFilteredTasks()V

    return-void
.end method

.method contains(Lcom/android/systemui/shared/recents/model/Task;)Z
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->mTaskIndices:Landroid/util/ArrayMap;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method getTasks()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ">;"
        }
    .end annotation

    .line 171
    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->mFilteredTasks:Ljava/util/ArrayList;

    return-object p0
.end method

.method hasFilter()Z
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->mFilter:Lcom/android/systemui/shared/recents/model/TaskFilter;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method indexOf(Lcom/android/systemui/shared/recents/model/Task;)I
    .locals 2

    if-eqz p1, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->mTaskIndices:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->mTaskIndices:Landroid/util/ArrayMap;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public moveTaskToStack(Lcom/android/systemui/shared/recents/model/Task;II)V
    .locals 2

    .line 80
    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->indexOf(Lcom/android/systemui/shared/recents/model/Task;)I

    move-result v0

    if-eq v0, p2, :cond_1

    .line 82
    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    if-ge v0, p2, :cond_0

    add-int/lit8 p2, p2, -0x1

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 91
    :cond_1
    invoke-virtual {p1, p3}, Lcom/android/systemui/shared/recents/model/Task;->setStackId(I)V

    .line 92
    invoke-direct {p0}, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->updateFilteredTasks()V

    return-void
.end method

.method remove(Lcom/android/systemui/shared/recents/model/Task;)Z
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->mFilteredTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    .line 106
    invoke-direct {p0}, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->updateFilteredTasks()V

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method removeFilter()V
    .locals 1

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->mFilter:Lcom/android/systemui/shared/recents/model/TaskFilter;

    .line 67
    invoke-direct {p0}, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->updateFilteredTasks()V

    return-void
.end method

.method set(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ">;)V"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 98
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 99
    invoke-direct {p0}, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->updateFilteredTasks()V

    return-void
.end method

.method setFilter(Lcom/android/systemui/shared/recents/model/TaskFilter;)Z
    .locals 2

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->mFilteredTasks:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 55
    iput-object p1, p0, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->mFilter:Lcom/android/systemui/shared/recents/model/TaskFilter;

    .line 56
    invoke-direct {p0}, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->updateFilteredTasks()V

    .line 57
    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->mFilteredTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method size()I
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/FilteredTaskList;->mFilteredTasks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method
