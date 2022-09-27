.class public Lcom/miui/home/recents/messages/AllTaskViewsDismissedEvent;
.super Ljava/lang/Object;
.source "AllTaskViewsDismissedEvent.java"


# instance fields
.field public final mEmpty:Z

.field public final mFromRemoveAllTask:Z

.field public final msgResId:I


# direct methods
.method public constructor <init>(IZZ)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lcom/miui/home/recents/messages/AllTaskViewsDismissedEvent;->msgResId:I

    .line 31
    iput-boolean p2, p0, Lcom/miui/home/recents/messages/AllTaskViewsDismissedEvent;->mEmpty:Z

    .line 32
    iput-boolean p3, p0, Lcom/miui/home/recents/messages/AllTaskViewsDismissedEvent;->mFromRemoveAllTask:Z

    return-void
.end method
