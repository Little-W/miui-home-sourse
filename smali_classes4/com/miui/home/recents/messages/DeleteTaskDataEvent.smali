.class public Lcom/miui/home/recents/messages/DeleteTaskDataEvent;
.super Ljava/lang/Object;
.source "DeleteTaskDataEvent.java"


# instance fields
.field public remainProcess:Z

.field public final task:Lcom/android/systemui/shared/recents/model/Task;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/miui/home/recents/messages/DeleteTaskDataEvent;->remainProcess:Z

    .line 31
    iput-object p1, p0, Lcom/miui/home/recents/messages/DeleteTaskDataEvent;->task:Lcom/android/systemui/shared/recents/model/Task;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/shared/recents/model/Task;Z)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/miui/home/recents/messages/DeleteTaskDataEvent;->remainProcess:Z

    .line 35
    iput-object p1, p0, Lcom/miui/home/recents/messages/DeleteTaskDataEvent;->task:Lcom/android/systemui/shared/recents/model/Task;

    .line 36
    iput-boolean p2, p0, Lcom/miui/home/recents/messages/DeleteTaskDataEvent;->remainProcess:Z

    return-void
.end method
