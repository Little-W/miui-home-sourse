.class public Lcom/miui/home/recents/messages/HideRecentsEvent;
.super Ljava/lang/Object;
.source "HideRecentsEvent.java"


# instance fields
.field public final mTriggeredFromAltTab:Z

.field public final mTriggeredFromFsGesture:Z

.field public final mTriggeredFromHomeKey:Z

.field public final mTriggeredFromScroll:Z


# direct methods
.method public constructor <init>(ZZZZ)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-boolean p1, p0, Lcom/miui/home/recents/messages/HideRecentsEvent;->mTriggeredFromAltTab:Z

    .line 29
    iput-boolean p2, p0, Lcom/miui/home/recents/messages/HideRecentsEvent;->mTriggeredFromHomeKey:Z

    .line 30
    iput-boolean p3, p0, Lcom/miui/home/recents/messages/HideRecentsEvent;->mTriggeredFromFsGesture:Z

    .line 31
    iput-boolean p4, p0, Lcom/miui/home/recents/messages/HideRecentsEvent;->mTriggeredFromScroll:Z

    return-void
.end method
