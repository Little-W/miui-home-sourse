.class public Lcom/miui/home/recents/messages/HideRecentsEvent;
.super Ljava/lang/Object;
.source "HideRecentsEvent.java"


# instance fields
.field public mIsAnnounceForAccessibility:Z

.field public final mTriggeredFromAltTab:Z

.field public final mTriggeredFromFsGesture:Z

.field public final mTriggeredFromHomeKey:Z

.field public final mTriggeredFromScroll:Z


# direct methods
.method public constructor <init>(ZZZZ)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-boolean p1, p0, Lcom/miui/home/recents/messages/HideRecentsEvent;->mTriggeredFromAltTab:Z

    .line 30
    iput-boolean p2, p0, Lcom/miui/home/recents/messages/HideRecentsEvent;->mTriggeredFromHomeKey:Z

    .line 31
    iput-boolean p3, p0, Lcom/miui/home/recents/messages/HideRecentsEvent;->mTriggeredFromFsGesture:Z

    .line 32
    iput-boolean p4, p0, Lcom/miui/home/recents/messages/HideRecentsEvent;->mTriggeredFromScroll:Z

    const/4 p1, 0x1

    .line 33
    iput-boolean p1, p0, Lcom/miui/home/recents/messages/HideRecentsEvent;->mIsAnnounceForAccessibility:Z

    return-void
.end method

.method public constructor <init>(ZZZZZ)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/recents/messages/HideRecentsEvent;-><init>(ZZZZ)V

    .line 40
    iput-boolean p5, p0, Lcom/miui/home/recents/messages/HideRecentsEvent;->mIsAnnounceForAccessibility:Z

    return-void
.end method
