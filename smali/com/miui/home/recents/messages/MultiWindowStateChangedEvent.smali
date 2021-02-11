.class public Lcom/miui/home/recents/messages/MultiWindowStateChangedEvent;
.super Ljava/lang/Object;
.source "MultiWindowStateChangedEvent.java"


# instance fields
.field public final inMultiWindow:Z

.field public final showDeferredAnimation:Z

.field public final stack:Lcom/android/systemui/shared/recents/model/TaskStack;


# direct methods
.method public constructor <init>(ZZLcom/android/systemui/shared/recents/model/TaskStack;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-boolean p1, p0, Lcom/miui/home/recents/messages/MultiWindowStateChangedEvent;->inMultiWindow:Z

    .line 35
    iput-boolean p2, p0, Lcom/miui/home/recents/messages/MultiWindowStateChangedEvent;->showDeferredAnimation:Z

    .line 36
    iput-object p3, p0, Lcom/miui/home/recents/messages/MultiWindowStateChangedEvent;->stack:Lcom/android/systemui/shared/recents/model/TaskStack;

    return-void
.end method
