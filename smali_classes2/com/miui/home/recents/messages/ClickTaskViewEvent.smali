.class public Lcom/miui/home/recents/messages/ClickTaskViewEvent;
.super Ljava/lang/Object;
.source "ClickTaskViewEvent.java"


# instance fields
.field private mTask:Lcom/android/systemui/shared/recents/model/Task;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/miui/home/recents/messages/ClickTaskViewEvent;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    return-void
.end method


# virtual methods
.method public getTask()Lcom/android/systemui/shared/recents/model/Task;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/miui/home/recents/messages/ClickTaskViewEvent;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    return-object v0
.end method
