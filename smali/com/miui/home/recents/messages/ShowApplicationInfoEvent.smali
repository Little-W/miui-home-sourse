.class public Lcom/miui/home/recents/messages/ShowApplicationInfoEvent;
.super Ljava/lang/Object;
.source "ShowApplicationInfoEvent.java"


# instance fields
.field public final task:Lcom/android/systemui/shared/recents/model/Task;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/miui/home/recents/messages/ShowApplicationInfoEvent;->task:Lcom/android/systemui/shared/recents/model/Task;

    return-void
.end method
